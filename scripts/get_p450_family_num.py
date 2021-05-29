import sys
import re
import os

fr1=open(sys.argv[1])
my_dict={}

for line in fr1:
	line=line.strip()
	lin=line.split(" ",1)
	my_dict[lin[1]]=lin[0]
fr1.close
print(sys.argv[1].split('.')[0],end='\n')
fr2=open(sys.argv[2])
for line in fr2:
	line=line.strip()
	lin=line.split("\t",1)
	if lin[0] in my_dict:
		print(my_dict[lin[0]],sep='\t',end='\n')
	else:
		print('0',sep='\t',end='\n')
	
fr2.close

