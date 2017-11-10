import matplotlib.pyplot as plt
import sys
import numpy
import matplotlib.mlab as mlab
x=[]
y=[]
ux=[]
uy=[]
vmag=[]

def plot(vmag):
	delta = 0.025
	xx = numpy.arange(-3.0, 3.0, delta)
	yy = numpy.arange(-2.0, 2.0, delta)
	X, Y = numpy.meshgrid(xx, yy)
	Z1 = mlab.bivariate_normal(X, Y, 1.0, 1.0, 0.0, 0.0)
	Z2 = mlab.bivariate_normal(X, Y, 1.5, 0.5, 1, 1)
	# difference of Gaussians
	Z = 10.0 * (Z2 - Z1)
	plt.scatter(x,y,c=vmag,s=10,edgecolors='none')
	CS=plt.contour(X,Y,Z)
	plt.clabel(CS,inline=1,)
	plt.show()
    

if len(sys.argv)==2:
	f=open(sys.argv[1],'r')
else:
	f=open('output-2.dat','r')
for line in f:
	columns=line.split(' ')
#Prevent the first row from being entered
	if columns[0]!='#':
		x.append(columns[0])
		y.append(float(columns[1])+.5)
		ux.append(round(float(columns[3])+.5,8))
		uy.append(round(float(columns[4])+.5,8))
#Getting the bottom half of the stream
		x.append(columns[0])
                y.append(round(-1*(float(columns[1])+.5),8))
                ux.append(round(float(columns[3])+.5,8))
                uy.append(-round(float(columns[4])+.5,8))
y=numpy.float64(y)
x=numpy.float64(x)
for i in range(len(ux)):
	vmag.append((ux[i]**2+uy[i]**2)**(1/2.0))
plot(vmag)
