from pprint import pprint
import re
from sys import argv
start_address = 0

script,filename = argv
fin = open(filename)
fout = open("bb_size_add.txt", "w")
for line in fin:
	text = line.split()
	if(text):
		start_address = start_address + int(text[2])
		str = ''.join("%s %s %s %d\n" %(text[0], text[1], text[2], start_address))
		fout.write(str)

fin.close()
fout.close()



