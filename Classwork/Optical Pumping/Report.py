import numpy as np
import matplotlib.pyplot as plt
from pylab import *
from scipy import optimize,loadtxt
import subprocess
import math

def quadratic(p,xvar):
	return p[0]*xvar**2+p[1]*xvar+p[2]

def linear(p,xvar):
	return p[0]*xvar+p[1]

residual=lambda p,resid, x, y, err: (resid(p, x)-y)/err


def showscope(name,inform):
	RawDat=loadtxt('data/'+name+'.txt',skiprows=1,unpack=True)	
	plt.plot(RawDat[0],RawDat[1])
	plt.xlabel('Time (ms)')
	plt.ylabel('Voltage (V)')
	plt.title(inform[0])
	plt.show()

def RF(name):
	RawDat=loadtxt('data/'+name+'.txt',skiprows=1,unpack=True)	
	plt.errorbar(RawDat[1],RawDat[0],xerr=RawDat[3],yerr=RawDat[2],fmt='.')
	plt.xlabel('Voltage (V)')
	plt.ylabel('Frequency MHz')
	plt.title('RF Frequency vs. V Field')
	plt.ylim(0)
	p0=[1.,2.,3.]
	pferr=[]
	Distrib=[[]for i in range(2)]
	Data=np.array(RawDat)
	pf, cov, info, mesg, success = optimize.leastsq(residual, p0, args=(quadratic,Data[1],Data[0],(Data[3]+Data[2]*1.5)),full_output=1)
	print pf,success
	chisq = sum(info["fvec"]*info["fvec"])
	dof=len(Data[1])-len(p0)
	for i in range(len(pf)):
		pferr.append(sqrt(cov[i,i]))
	Distrib[0]=linspace(0,1,10000)
	Distrib[1]=(quadratic(pf,Distrib[0]))
	plt.plot(Distrib[0],Distrib[1])
	for m in range(len(pf)):
		p=subprocess.check_output(['python ../RoundValues.py %s %s' %(str(pf[m]),str(pferr[m]))],shell=True)
		p=p.split()
		pf[m]=float(p[0])
		pferr[m]=float(p[1])
	textfit = '$f(x)= ax^2+bx+c$ \n' \
              '$a = %s \pm %s (MHz)(Volts^{-2} $\n' \
              '$b = %s \pm %s (MHz)(Volts^{-1}) $\n' \
              '$c = %s \pm %s (MHz) $\n' \
              '$\chi^2= %.1f$ \n' \
              '$N = %i$ (dof) \n' \
              '$\chi^2/N = % .2f$' \
              % (pf[0], pferr[0], pf[1], pferr[1],pf[2],pferr[2],chisq, dof, chisq/dof)

	plt.text(.55, .05, textfit,fontsize=14)
	plt.show()

def Larmor(name):
	Dat=[[]for i in range(2)]
	Err=[[]for i in range(2)]
	RawDat=loadtxt('data/'+name+'.txt',skiprows=1,unpack=True)	
	Dat[0]=[1000*i*8/np.sqrt(125.)*1.26*10**-6*9/(.353) for i in RawDat[0]]
	Dat[1]=[2*3.14/i for i in RawDat[1]]
	Err[1]=[Dat[1][i]*RawDat[2][i]/RawDat[1][i] for i in range(len(RawDat[1]))]
	Err[0]=[Dat[0][i]*0.001/RawDat[0][i] for i in range(len(RawDat[0]))]
	print Err[0]
	plt.errorbar(Dat[0],Dat[1],xerr=Err[0],yerr=Err[1],fmt='.')
	plt.xlim(0)
	plt.ylim(0)
	plt.xlabel('Frequency (MHz)')
	plt.ylabel('Y Coil Magnetic Field (mT)')
	plt.title('Larmor Precession Resonant B Field vs. Frequency')
	p0=[1.,2.]
	pferr=[]
	Distrib=[[]for i in range(2)]
	Dat=np.array(Dat)
	Err=np.array(Err)
	pf, cov, info, mesg, success = optimize.leastsq(residual, p0, args=(linear,Dat[0],Dat[1],(Err[1]**2+(Err[0])**2)**(1/2.0)),full_output=1)
	print pf,success
	chisq = sum(info["fvec"]*info["fvec"])
	dof=len(Dat[1])-len(p0)
	for i in range(len(pf)):
		pferr.append(sqrt(cov[i,i]))
	Distrib[0]=linspace(0,1,10000)
	Distrib[1]=(linear(pf,Distrib[0]))
	plt.plot(Distrib[0],Distrib[1])
	for m in range(len(pf)):
		p=subprocess.check_output(['python ../RoundValues.py %s %s' %(str(pf[m]),str(pferr[m]))],shell=True)
		p=p.split()
		pf[m]=float(p[0])
		pferr[m]=float(p[1])
	textfit = '$f(x)= ax+b$ \n' \
              '$a = %s \pm %s (mT)(Seconds) $\n' \
              '$b = %s \pm %s (mT) $\n' \
              '$\chi^2= %.1f$ \n' \
              '$N = %i$ (dof) \n' \
              '$\chi^2/N = % .2f$' \
              % (pf[0], pferr[0], pf[1], pferr[1],chisq, dof, chisq/dof)

	plt.text(.0015, .007, textfit,fontsize=18)
	plt.show()

#showscope('Pump_Overview',['Trace of Earth\'s Field Plus $B_H$ Field'])
#showscope('No_Pumping',['Trace with No Horizontal Field'])
#showscope('Vert0HorzMax',['Trace with No Vertical Field'])
RF('RFvsBv')
#Larmor('Larmar')
