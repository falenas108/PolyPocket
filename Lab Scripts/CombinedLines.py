#!/usr/bin/python

import sys
import dataAtPoint
import numpy
import matplotlib.pyplot as plt
f=open('/home/feldmanj/InclinedTarget/Runs_13pi_over_32/states/output-0.2.dat','r')
g=open('/home/feldmanj/InclinedTarget/Runs_25pi_64/states/output-0.2.dat','r')
h=open('/home/feldmanj/InclinedTarget/Runs_3pi_over_8/states/output-0.2.dat','r')
x=[]
y=[]
ux=[]
uy=[]
p=[]
CentData=[]
row=[]
datAll=[]
R=.1
Uo=1
Rho=1

#gets the data from the output file
def collectdata(columns,datAll):

        floatCol = [ float (val) for val in columns ]
        floatCol[1] += 0.5 # shift y by 0.5
        floatColInv = floatCol[:]
# invert
        floatColInv[1] *= -1
        floatColInv[4] *= -1
        datAll.append (floatCol)
        datAll.append (floatColInv)

        return datAll

#Creates the x axis for the stream and runs the program that extrapolates the centerline
def CentLine(dap):
	CentData=[]
	row=[]
        for j in range(64):
                row.append(-.05+j/1280.0)
                CentData.append(dap(row[j],0))
        return CentData

#Puts collected data from CentData into invidual lists
def getdata(CentData,n):
        data = [val[n] for val in CentData ]
        return data

def parse(k,datAll):
	for line in k:
		columns=line.split(' ')
#Prevent the first row from being entered
		if columns[0]!='#':
			datAll=collectdata(columns,datAll)
	dap=dataAtPoint.DataAtPoint(datAll)
	CentData=CentLine(dap)
	for i in range(len(CentData)):
		CentData[i][0]=CentData[i][0]/Uo
	return CentData

#Plots the graph
def plot(Centf,Centg,Centh):
#	plt.plot(row,Centf,'bo',row,Centg,'go',row,Centh,'ro')
        plt.plot(row,Centf,'ro',label='13pi/32 Vx')
#	plt.show()
	plt.plot(row,Centg,'bo',label='25pi/64 Vx')
#	plt.show()
	plt.plot(row,Centh,'mo',label='3pi/8 Vx')
        plt.legend(loc=6)
        plt.xlabel('X/R')
        plt.ylabel('Velocity')
        plt.title('Velocity along Center Line ')
        plt.show()
#        plt.savefig('/home/feldmanj/InclinedTarget/analysis/Graphs/'+sys.argv[1])
        return

#Start main code

CentDataf=parse(f,datAll)
CentDatag=parse(g,datAll)
CentDatah=parse(h,datAll)

Centf = getdata(CentDataf,0)
Centg = getdata(CentDatag,0)
Centh = getdata(CentDatah,0)

plot(Centf,Centg,Centh)
