import matplotlib.pyplot as plt
import sys
import pylab
import numpy as np
x=[]
y=[]
ux=[]
uy=[]
p=[]
l=[]
R=.1/2
Uo=1.0
Rho=1.0
title=[]

#Turns input title to LaTex format
def titlechange(arg,title):

        title.append('$')
        for char in arg:
                if char=='p':
                        title.append(' \pi/')
                elif char=='i':
                        pass
                else:
                        title.append(char)
        title.append('$')
        title=''.join(title)
        return title

#Creates a density plot, where more dots means more particles
def plot(x,y,title):
	plt.plot(x,y,'o')
	plt.xlabel('X/R')
	plt.ylabel('Y/R')
	plt.title('Density '+title)
	plt.show()

#Creates a scatterplot colored by fields
def scatterplot(x,y,field,text,title):
	plt.scatter(x,y,c=field,s=10,edgecolors='none',cmap=plt.get_cmap('jet'))
#	plt.plot(x,y)
#	plt.pcolor(field)
	plt.colorbar()
	plt.xlabel('X/R')
	plt.ylabel('Y/R')
	plt.title(text+title)
	plt.show()

#Parsing the output data into x and y positions, x and y velocities, and pressure.

f=open('/home/feldmanj/InclinedTarget/Runs_'+sys.argv[1]+'/states/output-2.dat','r')
for line in f:
	columns=line.split(' ')
#Prevent the first row from being entered
	if columns[0]!='#':
		x.append(float(columns[0])/R)
		y.append((float(columns[1])+.5)/R)
		ux.append((float(columns[3]))/Uo)
		uy.append((float(columns[4]))/Uo)
		p.append(float(columns[6])/(Uo**2*Rho))
#Getting the bottom half of the stream
		x.append(float(columns[0])/R)
                y.append((-1*(float(columns[1])+.5)/R))
                ux.append((float(columns[3]))/Uo)
                uy.append(-1*(float(columns[4]))/Uo)
                p.append(float(columns[6])/(Uo**2*Rho))

title=titlechange(sys.argv[1],title)
#Creates the plots
plot(x,y,title)
scatterplot(x,y,ux,'X Velocity ',title)
scatterplot(x,y,uy,'Y Velocity ',title)
scatterplot(x,y,p,'Pressure ',title)
