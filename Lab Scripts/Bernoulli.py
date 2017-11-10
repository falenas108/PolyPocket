#!/usr/bin/python
import sys
import dataAtPoint
import numpy
import matplotlib.pyplot as plt
f=open('/home/feldmanj/InclinedTarget/Runs_'+sys.argv[1]+'/states/output-2.dat','r')
x=[]
y=[]
ux=[]
uy=[]
p=[]
CentData=[]
row=[]
datAll=[]
R=.1/2
Uo=1
Rho=1000
title=[]
Const=[]
Var=[]

#Changes the title to a format readable by LaTex
def titlechange(arg,title):

        title.append('$')
        for char in arg:
                if char=='p':
                        title.append(' \pi/ ')
                elif char=='i' or char=='_':
                        pass
                else:
                        title.append(char)
        title.append('$')
        title=''.join(title)
        return title

#gets the data from the output file
def collectdata(columns):

	floatCol = [ float (val) for val in columns ]
        floatCol[1] += 0.5 # shift y by 0.5
	floatCol[1]/=R
	floatCol[0]/=R 
        floatColInv = floatCol[:]
# invert
        floatColInv[1] *= -1
        floatColInv[4] *= -1
        datAll.append (floatCol)
        datAll.append (floatColInv)
	
	return datAll

#Creates the x axis for the stream and runs the program that extrapolates the centerline
def CentLine(dap):
	for j in range(64):
        	row.append(-10+j/6.4)
        	CentData.append(dap(row[j],0))
	return CentData

#Puts collected data from CentData into invidual lists
def getdata(n,CentData):
	data = [val[n] for val in CentData ]
	return data

#Plots the graph of the constant vs. the exp
def plot(Const,Var,title):
	plt.plot(row,Const,'o',label='Bourn. Const. Predicted')
	plt.plot(row,Var,'o',label='Bourn. Const. Actual')
	plt.legend(loc=4)
	plt.axhline(y=0)
	plt.xlabel('X/R')
	plt.ylabel('Bernoulli Constant')
	plt.title('Bernoulli Constant Predicted vs. Actual  '+title)
#	plt.show()
	plt.savefig('/home/feldmanj/InclinedTarget/analysis/Graphs/'+sys.argv[1]+'Bernoulli')
	return

#Start main code 

title=titlechange(sys.argv[1],title)

for line in f:
        columns=line.split(' ')
#Prevent the first row from being entered
        if columns[0]!='#':
		datAll=collectdata(columns)
dap=dataAtPoint.DataAtPoint(datAll)
CentData=CentLine(dap)

for i in range(len(CentData)):
	CentData[i][0]=CentData[i][0]/Uo
	CentData[i][3]=CentData[i][3]/(Uo**2*Rho)

Centux = getdata(0,CentData)
Centp = getdata(3,CentData)
for i in range(len(Centux)):
	Const.append(Uo/2.0+0*Rho)
	Var.append(Centux[i]**2/2.0+Centp[i]/Rho)
plot(Const,Var,title)
