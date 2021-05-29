import sys
import re

fr1=open(sys.argv[1])

for line in fr1:
	line=line.strip()
	if not re.match("#",line):
		str=line.split()
		if re.search('CYP[0-9]+',str[1]):
			res=re.search('CYP[0-9]+',str[1])
			family=res.group(0)
			if float(str[2]) > 35:
				print(str[0],str[1],family,sep='\t',end='\n')
			else:
				print(str[0],str[1],"na0",sep='\t',end='\n')
		elif re.search('C[0-9]+',str[1]):
			res=re.search('(C[0-9]+)',str[1])
			if float(str[2]) > 35:
				print(str[0],str[1],family,sep='\t',end='\n')
			else:
				print(str[0],str[1],"na0",sep='\t',end='\n')
		else:
			print(str[0],str[1],"na1",sep='\t',end='\n')
fr1.close
