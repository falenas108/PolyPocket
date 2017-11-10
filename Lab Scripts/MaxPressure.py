import sys
p=[]
if len(sys.argv)==2:
        f=open(sys.argv[1],'r')
else:
        f=open('output-2.dat','r')
for line in f:
        columns=line.split(' ')
#Prevent the first row from being entered
        if columns[0]!='#':
                p.append(columns[6])
p=[float(i) for i in p]
print max(p)
	
