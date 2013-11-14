import re
from sys import argv

script, filename = argv
f = open(filename)

keywords = ['jmp', 'jne', 'jg', 'je', 'jl', 'jz', 'jnz']
target = [] 

#Gives all jump instructions and stores the jump to address, and the instruction address in a dictonary
for line in f:
	inst_list = line.split()

	if(len(inst_list)>3):
		
		#Check for keywords in the instruction, and get the target address
		if(inst_list[3] in keywords):
			target.append(inst_list[4])
					
			fall_through = f.next()
			line = fall_through
					
			fall_through = fall_through.lstrip()
			FL_inst_list = fall_through.split(":")
			target.append(FL_inst_list[0])
					
			inst_list = line.split()
						
						
#for addr in target:
	#print "Target " + addr 
	#print  len(addr)

f.close();
f = open(filename)

basic_block = []
count = 0
BB = []
j=0

for line in f:
	line = line.strip("\n")
	if(len(line)!=0):
		line = line.lstrip()	
			
		match = re.search(r'<(.+?)>:', line)
		if match is not None:
			print match.group(0)
		
		#Address of instruction
		inst_list = line.split(":")
		#print inst_list
	
		if (inst_list[0] in target):
				#Update basic blocks list
					basic_block.append(BB)
					count = count+1
	
					#New BB		
					BB = []
					j = 0
				
		BB.append(inst_list[0])
		j=j+1	
			
print len(basic_block)
for BB in basic_block:
	for addr in BB:
		print addr + "\n"
	print "\n\n"

