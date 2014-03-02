
from pprint import pprint
import re
from sys import argv

script, branch_file, dump_file = argv
branch_insts = []

f = open(branch_file)
for line in f:
	branch_insts.append(line.rstrip())
f.close()

functions = [] 
BB = {}
curr_basic_block = ''
basic_blocks = []
func_boundary = 0
br = 0
bb_offset = 0

f = open(dump_file)
for line in f:
	text = line.split()
	if text:
		# Line of the form xxxxxx <func_name>:
		if (len(text) == 2):
			if re.match("<\w+>:+(?:\s|$)", text[1]):
				func_boundary = 0
				func_to_add = re.findall(r'<(.+?)>:',text[1])
			if "@function" in text[1]:
				func_boundary = 1
				functions.append(func_to_add[0].replace("'",""))

		# Line of the form # BB#x  # %BB NAME
		if re.match('#', text[0]) and re.match('BB#[0-9]+:', text[1]) and func_boundary:

			# Store the PC of the previous basic block 
			if (curr_basic_block):
				BB[curr_basic_block] = bb_offset
      
			# Change the basic block to current one	
			curr_basic_block = func_to_add[0].replace(":",""), text[3].replace("%","")
			if not (curr_basic_block in basic_blocks):
				print curr_basic_block
				basic_blocks.append(curr_basic_block)
				bb_start = 1
			else:
				bb_start = 0
			
		# Line of the form # LBB#_#  # %BB NAME
		elif re.match('.LBB\d+(_)\d+:', text[0]) and func_boundary:
			#Store the PC of the previous basic block here
			if (curr_basic_block):
				BB[curr_basic_block] = bb_offset
      
			curr_basic_block = func_to_add[0].replace(":",""), text[2].replace("%","")
			if curr_basic_block not in basic_blocks:
				print curr_basic_block
				basic_blocks.append(curr_basic_block)
				bb_start = 1
			else:
				bb_start = 0
	
		# Track the instruction in the basic block
		# It is of the form offset: 	instruction 		llvm_instruction
		elif	re.match("[0-9A-Fa-f]+:+(?:\s|$)", text[0]):
			
			# If tracking a valid basic block and it has just started,
			# store the next offset as the basic block's start offset
			if(curr_basic_block) and func_boundary and bb_start:
				bb_offset = text[0].replace(":", "")
				bb_start = 0
		
			# If tracking a valid basic block and 'br' is set,
			# store the offset of the next instruction as the 
			# branch instruction's offset
			if(curr_basic_block) and func_boundary and br:
				print text[0].replace(":", "")
				br = 0
		
		elif text[0] in branch_insts:
			print text[0]
			br = 1

f.close()

bb_offset_out = open('bb_offset_out.txt', 'w')
for bb, offset in BB.iteritems():
	str = ''.join("%s %s %s" %(bb, offset, '\n'))
	bb_offset_out.write(str)
