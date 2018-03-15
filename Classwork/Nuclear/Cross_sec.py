import collections
import bisect
# This creates a dictionary that maps energies to cross-sections.
def findkey(ke,dict):
	return dict.get(ke, dict[min(dict.keys(), key=lambda k: abs(float(k)-ke))])

dict={}
tot=[]
m=0
for m in range(50):
	tot.append(0)
with open('u235fission.in', 'r') as f:
	lines=f.readlines()
	for li in lines:
		li=li.split() 
  		dict[li[0]]=li[1]

#Then, I take the actual eneregies and find the closest ones to that in the dictionary, and multiply the resulting cross-section by the velocity, gotten by solving for v in E=1/2*m*v^2.
with open('out.ENERG','r') as g:
	r=0
	EN=g.readlines()
	for lin in EN:
		lin=lin.split()
		if r+1<(float(lin[1])-.1):
			r=r+1
		tot[r]=float(tot[r])+pow(float(lin[0])*2/19730872938,1/2)*float(findkey(float(lin[0]),dict))
		print tot,r,lin[1]
	print tot
