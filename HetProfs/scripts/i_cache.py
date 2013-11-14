
from pprint import pprint
import re
from sys import argv

script, filename = argv
functions = [] 
count = 0 
start_count = 0
BB = {}
BB_size = []
curr_basic_block = ''

f = open(filename)
for line in f:
	text = line.split()
	if(text):
		
	# New function found
		if re.match("\w+[0-9]*:+(?:\s|$)", text[0]):
			curr_func_name = text[0]
			functions.append(curr_func_name)
			
			print curr_func_name

			""" 
				New basic block found	
				Sometimes a few basic blocks might not have any instructions
				and such basic blocks are not given names
			"""

		elif re.match('@', text[0]) and \
				 re.match('BB#[0-9]+:', text[1]) \
				 and len(text) >= 3 :
			print "Found new basic block"

			# We were tracking a basic block earlier
			print curr_func_name
			if(curr_basic_block):
				
				print ("Case 1",text)
				print(curr_basic_block, count);
				
				if curr_basic_block in BB:
					BB[curr_basic_block] += count
					
					print "The basic block already existed"

				else:
					BB[curr_basic_block] = count
				
			# ENDIF
		
			# Reset counter for new BB
			count = 0
			start_count = 1
			
			# Change current counter
			print text[0]+text[1]
			print text[3]
			print "Changing current basic block"
			curr_basic_block = curr_func_name.replace(":",""), text[3].replace("@","")
			
		
		elif re.match('.LBB\d+(_)\d+:', text[0]):
	
			if(curr_basic_block):
				
				print ("Case 2", text)
				print (curr_basic_block, count)
					
				if curr_basic_block in BB:
					BB[curr_basic_block] += count
						
					print "The basic block already existed"

				else:
					BB[curr_basic_block] = count

			# ENDIF

			count = 0
			start_count = 1
			
			print text[0]+text[1]+text[2]
			curr_basic_block = curr_func_name.replace(":",""), text[2].replace("@","")


		else:
			if(start_count == 1):
				if not text[0].startswith('@'):
					count = count + 1

f.close()

f = open('bb_size.txt', 'w')

for func, bb in BB.keys():
		key = func, bb
		str = ''.join("%s %s %d %s" %(func, bb, BB[key], '\n'))
		f.write(str)
		#print(str)
f.close()
