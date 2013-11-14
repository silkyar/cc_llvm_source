import re
from sys import argv
from sets import Set

script, filename = argv
f = open(filename)

keywords = ['jmp','jle', 'jne', 'jg', 'je', 'jl', 'jz', 'jnz']
target = Set([]) 

#Gives all jump instructions and stores the jump to address, and the instruction address in a dictonary
for line in f:
	inst_list = line.split()

	if(len(inst_list)>3):
		
		#Check for keywords in the instruction, and get the target address
		while(inst_list[3] in keywords):
			target.add(inst_list[4])
			#print "target " +  inst_list[4]		
			fall_through = f.next()
			line = fall_through
					
			fall_through = fall_through.lstrip()
			FL_inst_list = fall_through.split(":")
			#print "fall: " +  FL_inst_list[0]
			target.add(FL_inst_list[0])
					
			inst_list = line.split()
			if(len(inst_list)<=3):
				break			
			#else:
				#print "next " + inst_list[3] + " "
	
#print len(target)					
#for addr in target:
	#print "Target " + addr 
	#print  len(addr)

f.close();
f = open(filename)

basic_block = []
count = 0
BB = []
j=0

BBsize = open("BBsize", 'w+')
ss = 0	#change to start of main********
for line in f:
	line = line.strip("\n")
	if(len(line)!=0):
		line = line.lstrip()	
			
		match = re.search(r'<(.+?)>:', line)
		if match is not None:
			BBsize.write("Match group %s" %match.group(0))
			
		#Address of instruction
		inst_list = line.split(":")
	
		if (inst_list[0] in target):
			if(end.isalnum()):
				ebb = int(end,16)
				BBsize.write("%s, %d\n"%(ss, ebb-ss))
			
			#Update basic blocks list and size
			basic_block.append(BB)
			
			#New BB		
			BB = []
			start = inst_list[0]
			if start.isalnum():
				ss = int(start,16)

		end = inst_list[0]		
		BB.append(inst_list[0])

#Add the last basic block
if(end.isalnum()):
	ebb = int(end,16)
	BBsize.write("%s, %d\n"%(ss, ebb-ss))
basic_block.append(BB)
			
print ("Number of basic blocks: %d" %(len(basic_block)))
for BB in basic_block:
	for addr in BB:
		print addr + "\n"
	print "\n\n"

