#!usr/bin/python



Datmgr=[[]for i in range(2)]
Errmgr=[[]for i in range(2)]
DatPre=[[]for i in range(2)]
ErrPre=[[]for i in range(2)]
DatFre=[[]for i in range(2)]
ErrFre=[[]for i in range(2)]

def linea(p, xvar):
    return p[0]*xvar + p[1]

linear_residual = lambda p, x, y, err: (linea(p, x)-y)/err

def roundvalues(num,err):
	for i in range(len(str(err))+1):
		if err-10**i<-.0000000000001:
			if i!=0:
				if str(err)[0]=='1':
					return round(num,-i+2),round(err,-i+2)
				return round(num,-i+1),round(err,-i+1)
			
			else:
				for i in range(len(str(err+3))):
					if 10**-i-err<(.000000000001):
						if round(err,i)!=1*10**-i:
							return round(num,i),round(err,i)
						else:
							return round(num,i+1),round(err,i+1)
	return "Whoops"

def chisq(Dat,Err,pf):
	X2=0
	for i in range(len(Dat[0])):
		X2+=((Dat[1][i]-Dat[0][i]*pf[0]-pf[1])**2/(((Err[0][i]*pf[0])**2+(Err[1][i])**2)**(1)))
	return X2

def plotData(Dat,Err,labels):
	m=''
	merr=''
	b=''
	berr=''
	Dat=np.array(Dat)
	Err=np.array(Err)
	fig=plt.figure()
	ax=fig.add_subplot(111)
	resid=np.array([])
	m=np.array([])
	p0=[1.2,1.005]
	pf, cov, info, mesg, success = optimize.leastsq(linear_residual, p0,
                                                args=(Dat[0], Dat[1],Err[1]), full_output=1)
	#print mesg,success,info["fvec"]
	bestfit=linear(Dat[0],pf)
	errorbar(Dat[0],Dat[1],xerr=Err[0],yerr=Err[1],fmt='.')
#	X2 = sum(info["fvec"]*info["fvec"])
	X2=chisq(Dat,Err,pf)
	dof = len(Dat[0])-len(pf)
	pferr = []
	for i in range(len(pf)):
		pferr.append(sqrt(cov[i,i]))
	m,merr=roundvalues(pf[0],pferr[0])
	b,berr=roundvalues(pf[1],pferr[1])
	plt.plot(Dat[0],bestfit)
	plt.xlabel('Magnetic Field ('+labels[2]+')')
	plt.ylabel(labels[1])
	plt.title(labels[0]+' vs. Magnetic Field Torque')
	textfit='$g(x) = mx + B$ \n' \
		        '$m = %g \pm %g $ \n' \
			'$B = %g \pm %g  $ \n' \
			'$\chi^2= %.4f$ \n' \
			'$N = %i$ (dof) \n' \
			'$\chi^2/N = % .5f$' \
			% (m, merr, b,berr,X2, dof, X2/float(dof))
	plt.text(0.6, 0.5, textfit, transform=ax.transAxes, fontsize=12, verticalalignment='top',color='blue')
	plt.show()

def linear(xb,slop):
	lin=[]
	for i in xb:
		lin.append(i*slop[0]+slop[1])
	return lin

Datmgr[1]=[0.00112272,0.000486624,0.000526628,0.000755966,0.000855017,0.0009179,0.000978317,0.001038186,0.001089972]
Currentmgr=[2.6,1.6,1.69,1.9,2.1,2.2,2.3,2.4,2.49]
for i in range(len(Currentmgr)):
	Datmgr[0].append(1.36*Currentmgr[i]/1000.0)
	Errmgr[0].append((.05/Currentmgr[i])*Datmgr[0][i])
	Errmgr[1].append(.03*Datmgr[1][i])

plotData(Datmgr,Errmgr,['Gravitational Torque','Gravitational Torque  $(kg*m^{2}/s^{2}) $','T'])

CurrentPre=[.5,1,1.5,2,2.5,3]
PeriodPre=[24.1,12.2,9.7,6.3,5.4,4.5]
for i in range(len(CurrentPre)):
	DatPre[0].append(1.36*CurrentPre[i]/1000.0)
	DatPre[1].append(2*3.14/PeriodPre[i])
	ErrPre[0].append(sqrt((.05/CurrentPre[i])**2+(.03/1.36)**2)*DatPre[0][i])
	ErrPre[1].append(.5/PeriodPre[i]*DatPre[1][i])

plotData(DatPre,ErrPre,['Precession Frequency','$\omega (1/s)$','T'])

DatFre[0]=[0.782,0.821,0.871,0.893,0.931,0.955,0.994,1.034,1.061,1.099]
ErrFre[0]=[.014 for i in range(10)]
DatFre[1]=[137.5,144.4,150.4,157.3,162.8,169.5,176.2,182.3,188.3,194.7]
ErrFre[1]=[.06 for i in range(10)]

plotData(DatFre,ErrFre,['Current Frequency','$ \omega (1/Ms)$','mT'])

DatB=[[]for i in range(4)]
DatV=[[]for i in range(4)]
DatV[0]=[1.60,1.68,1.72,1.88,1.88,2.00,2.08,2.20,2.2,2.32]
DatV[1]=[1.56,1.64,1.69,1.80,1.92,1.92,2.0,2.06,2.16,2.2]
DatV[2]=[1.72,1.80,1.88,1.92,2.00,2.04,2.12,2.24,2.28,2.36]
DatV[3]=[1.64,1.72,1.84,1.84,1.96,2.00,2.08,2.12,2.20,2.29]
Verr=[.02 for i in range(10)]
fig=plt.figure()
DatFre[1]=np.array(DatFre[1])
ErrFre[1]=np.array(ErrFre[1])
for i in range(4):
	p0=[1.,1.]
	pf=[]
	ax=fig.add_subplot(2,2,i+1)
	DatB[i]=np.array([j*.48 for j in DatV[i]])
	errorbar(DatB[i],DatFre[1],xerr=Verr,yerr=ErrFre[1],fmt='.')
	pf, cov, info, mesg, success = optimize.leastsq(linear_residual, p0,
                                                args=(DatB[i], DatFre[1],ErrFre[1]), full_output=1)
	bestfit=linear(DatB[i],pf)
	X2=chisq([DatB[i],DatFre[1]],ErrFre,pf)
	dof = len(DatB[i])-len(pf)
	pferr = []
	for j in range(len(pf)):
		pferr.append(sqrt(cov[j,j]))
	m,merr=roundvalues(pf[0],pferr[0])
	b,berr=roundvalues(pf[1],pferr[1])
	plt.plot(DatB[i],bestfit)
	plt.xlabel('Magnetic Field (mT)')
	plt.ylabel('$ \omega (1/Ms)$')
	plt.title('Current Frequency vs. Magnetic Field Torque, V'+str(i+1))
	textfit='$g(x) = mx + B$ \n' \
		        '$m = %g \pm %g $ \n' \
			'$B = %g \pm %g  $ \n' \
			'$\chi^2= %.4f$ \n' \
			'$N = %i$ (dof) \n' \
			'$\chi^2/N = % .5f$' \
			% (m, merr, b,berr,X2, dof, X2/float(dof))
	plt.text(0.6, 0.5, textfit, transform=ax.transAxes, fontsize=12, verticalalignment='top',color='blue')
#plt.show()