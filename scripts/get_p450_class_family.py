import sys
import re
import os

fr1=open(sys.argv[1])
my_dict={}

for line in fr1:
	line=line.strip()
	lin=line.split('\t',1)
	my_dict[lin[0]]=lin[1]
fr1.close

fr2=open(sys.argv[2])
for line in fr2:
	line=line.strip()
	if line in my_dict:
		print(line,my_dict[line],sep='\t',end='\n')
	else:
		print(line,end='\n')
fr2.close
