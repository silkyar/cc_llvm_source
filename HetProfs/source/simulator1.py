#!/usr/bin/python
import sys

L1cacheSize = int(sys.argv[1])
L1blkSize = int(sys.argv[2])
L1assoc = int(sys.argv[3])
L1MSHRs = int(sys.argv[4])
L2latency = int(sys.argv[5])
traceFile = open(sys.argv[6], 'r')
prefetchPCs = open(sys.argv[7], 'r')
prefetchAddrs = open(sys.argv[8], 'r')
PREFETCHING = bool(int(sys.argv[9]))
#print "prefetching" , PREFETCHING

BUFFSIZE = 100000000

L1numBlks = L1cacheSize/L1blkSize

tick = 1


class prefetchTable:
  def __init__(self, prefetchPCs, prefetchAddrs):
    self.prefetchMap = {}
    print "prefetchInstCacheBlock callTargetCacheBlock"
    for line in prefetchPCs:
      line = "0x"+line
      addr = "0x"+prefetchAddrs.readline()
      line = line.strip()
      addr = addr.strip()
      #print line, addr
      self.prefetchMap[line] = addr
      line = int(line,16)
      addr = int(addr,16)
      line = line/64
      addr = addr/64
      print line,addr
    #print self.prefetchMap

  def isPrefetchPC(self, instPC):
    #print "in isPrefetchPC with ", instPC

    if(instPC in self.prefetchMap):
      #print "found instPC in prefetchMap" 
      return True
    else:
      return False

  def getPrefetchPC(self, instPC):
    #print "in getPrefetchPC", instPC
    if(self.isPrefetchPC(instPC)):
      return int(self.prefetchMap[instPC],16)
    else:
      return 0

class cache:
  def __init__(self, numBlks, assoc, MSHRs, L2latency):
    self.blks = [0]*numBlks
    self.assoc = assoc
    self.numSets = numBlks/assoc
    self.MSHRs = MSHRs
    self.numOutstandingReqs = 0
    self.outstandingReqs = [0]*MSHRs
    self.outstandingResponseTick = [0]*MSHRs
    self.L2latency = L2latency
    #print "in __init__, numOutstandingReqs = ", self.numOutstandingReqs
    
 
  def getSet(self,addr):
    return addr%self.numSets

  def areMSHRsFree(self):
    return (self.numOutstandingReqs < self.MSHRs)

  def sendReq(self,addr,tick):
    #print "in sendReq"
    if(self.areMSHRsFree()):
      #print "mshrs are free"
      for i in range(0,self.numOutstandingReqs):
        if(self.outstandingReqs[i] == addr):
          #print "found in MSHRs"
          return True
      #print self.numOutstandingReqs 
      self.outstandingReqs[self.numOutstandingReqs] = addr
      self.outstandingResponseTick[self.numOutstandingReqs] = tick+self.L2latency
      self.numOutstandingReqs += 1
      #print self.outstandingReqs
      #print self.outstandingResponseTick
      #print self.numOutstandingReqs
      #print "placed req in mshr, expect response at ",tick+self.L2latency
      return True
    else:
      #print "mshrs are not free"
      return False

  def recvResponse(self, tick):
    #print "in recvResponse ", tick
    #print self.numOutstandingReqs
    #print self.outstandingReqs
    #print self.outstandingResponseTick
    if(tick==self.outstandingResponseTick[0]):
      #print "tick matched"
      self.insert(self.outstandingReqs[0])
      for i in range(0,self.numOutstandingReqs-1):
        self.outstandingReqs[i] = self.outstandingReqs[i+1]
        self.outstandingResponseTick[i] = self.outstandingResponseTick[i+1]
      self.numOutstandingReqs -= 1
      #print self.outstandingReqs
      #print self.outstandingResponseTick
  
      for i in range(self.numOutstandingReqs, self.MSHRs):
        self.outstandingReqs[i] = 0
        self.outstandingResponseTick[i] = 0
      return True
    else:
      return False

  def lookupCache(self,addr):
    #print "in lookupcache for ",addr
    lookupSet = self.getSet(addr)
    for i in range(0,self.assoc):
      if(addr==self.blks[i*self.numSets+lookupSet]):
        for j in range(i,0,-1):
          self.blks[j*self.numSets+lookupSet] = self.blks[(j-1)*self.numSets+lookupSet]
        self.blks[lookupSet] = addr
        #print "found in cache"
        return True
    #print "not found in cache"
    return False

  def insert(self,addr):
    insertSet = self.getSet(addr)
    if(self.lookupCache(addr)):
      return False
    else:
      for i in range(self.assoc-1,0,-1):
        #print i*self.numSets+insertSet, (i-1)*self.numSets+insertSet
        self.blks[i*self.numSets+insertSet] = self.blks[(i-1)*self.numSets+insertSet]
      self.blks[insertSet] = addr
      return True
        

L1cache = cache(L1numBlks, L1assoc, L1MSHRs, L2latency)
L1prefetchTable = prefetchTable(prefetchPCs, prefetchAddrs)
   

tempTrace = traceFile.readlines(BUFFSIZE)

lineNum = 0
numMisses = 0


while(len(tempTrace) != 0):
  for line in tempTrace:
    lineNum += 1
    #print "lineNum = ", lineNum, ", tick = ",tick, tick-lineNum
    if(lineNum%10000==0):
      print lineNum
    words = line.split()
    if(words[0] == '#eof'):
      continue
    instPCstr = words[0]
    instPC = int(words[0],16)
    #print instPCstr, instPC
    blkAddr = instPC/L1blkSize
    isPrefetch = False
    if(PREFETCHING):
      isPrefetch = L1prefetchTable.isPrefetchPC(instPCstr)
    prefetchAddr = 0
    if(isPrefetch):
      #print "in isPrefetch"
      prefetchPC = L1prefetchTable.getPrefetchPC(instPCstr)	
      prefetchAddr = prefetchPC/L1blkSize
      #print "found prefetch", instPCstr, instPC, prefetchPC, prefetchAddr

    allDependeciesResolved = 0
    missReqSentOut = 0
    #print "entering while for ", blkAddr
    while(allDependeciesResolved==0):
      #print lineNum, "waiting for dependencies"
      L1cache.recvResponse(tick)
      hit = L1cache.lookupCache(blkAddr)
      if(hit):
        #print "is hit"
        if(isPrefetch):
          #print "saw prefetch, sending req with ", prefetchAddr, tick
          sendSuccess = L1cache.sendReq(prefetchAddr,tick)
          if(sendSuccess):
            tick += 1
            allDependeciesResolved = 1
          else:
            tick += 1
        else:
          tick += 1
          allDependeciesResolved = 1
      else:
        #print "is miss", tick
        if(missReqSentOut==0):
          numMisses += 1
          #print "sending miss req for ", blkAddr, numMisses
          sendSuccess = L1cache.sendReq(blkAddr,tick)
          if(sendSuccess):
            missReqSentOut = 1
        tick += 1
  tempTrace = traceFile.readlines(BUFFSIZE)  

print lineNum, numMisses, tick
