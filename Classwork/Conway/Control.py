import os
import os
from numpy import *

# This program counts the number of alive cells for a set number of turns (variable Turns) for multiple games (Runs)
#It then finds the mean number each turn.  Turns should equal the number of turns in Main.f+1.
Runs=2
Turns=11

a=arange(Turns*Runs).reshape(Turns,Runs)
f=open("temp.out",'r')
for i in range(Runs):
	f.seek(0)
	os.system("./Main")
	for (counter,j) in enumerate(f):
		a[counter,i]=j
print a
f.close()

b=zeros(Turns)
for h in range(Runs):
	for k in range(Turns):
		b[k]+=a[k,h]

for k in range(Turns):
	b[k]=b[k]/Runs

print b