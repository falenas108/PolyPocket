      FUNCTION ENTIGA(DF,X)
!*********ENTIRE INCOMPLETE GAMMA FUNCTION****************
      G=1.
      P=1.
   14 DF=DF+1.
      IF(DF.GT.2)GOTO 7
      G=G*X
      P=(P*DF)+G
      GOTO 14
    7 J=INT((5.*(3.+ABS(X)))/2.)
      F=1./(J+DF-X)
   21 J=J-1
      F=((F*X)+1.)/(J+DF)
      IF(J.NE.0)GOTO 21
      P=P+(F*G*X)
      G=(1.-((2./(7.*(DF**2.)))*(1.-(2./(3.*(DF**2.))
     M))))/(30.*(DF**2.))
      G=((G-1.)/(12.*DF))-(DF*(LOG(DF)-1.))
      F=P*EXP(G-X)*SQRT(DF/(2.*3.1415926))
      ENTIGA=F
      RETURN
      END
! ********************************************************      
      PROGRAM CHISQUARE
      
c *** This is an example of hypothesis testing, in this case we are
c *** assessing the existence of a time-modulation in data
C *** THIS HAS BEEN REPLACED WITH HOMEWORK DATA
      
      
      DIMENSION DATA(16),ERROR(16),DATE(16)
      INTEGER RMOD
      DATE(1)=2031.5
      DATE(2)=2032.5
      DATE(3)=2033.5
      DATE(4)=2034.5
      DATE(5)=2035.5
      DATE(6)=2036.5
      DATE(7)=2037.5
      DATE(8)=2038.5
      DATE(9)=2039.5
      DATE(10)=2040.5
      DATE(11)=2041.5
      DATE(12)=2042.5
      DATE(13)=2043.5
      DATE(14)=2044.5
      DATE(15)=2045.5
      DATE(16)=2046.5
      DATA(1)=5.4
      DATA(2)=0
      DATA(3)=0
      DATA(4)=1.4
      DATA(5)=.4
      DATA(6)=1.8
      DATA(7)=1.8
      DATA(8)=1.6
      DATA(9)=3.8
      DATA(10)=1.8
      DATA(11)=0
      DATA(12)=1.8
      DATA(13)=0
      DATA(14)=1.8
      DATA(15)=0
      DATA(16)=3.6
      AVERAG=0.

      DO 21 J=1,16
      AVERAG=AVERAG+DATA(J)
      ERROR(J)=DATA(J)**(1/2)
C      ERROR(J)=1.75
   21 CONTINUE
   
      AVERAG=AVERAG/16.
      OPEN(UNIT=2,FILE='HYPTEST1.OUT',STATUS='unknown')

      DF=15.
      WRITE(2,*)'%_modulation       S            PROB(CHISQ>X)_in_%'     

c *** rmod is the only free parameter here (and hence DF=15=16-1), 
c *** it is the magnitude of the possible modulation in the data in % of the 
c *** average number of counts per bin
      DO 7 RMOD=0,40,1
      DELTPI=AVERAG*(RMOD/4./100.)
      SUMSQ=0.
      
      DO 14 J=1,16
c *** This is our hypothesis or model (note this is a YEARLY modulation, 
c *** could have added a free phase as a second parameter)
      STRENG=AVERAG-(DELTPI*COS(DATE(J)*((2.*3.1416)/365.)))      
      SUMSQ=SUMSQ+(ABS((DATA(J)-STRENG)/ERROR(J))**2.)
   14 CONTINUE

      X=SUMSQ

      OUT=100.*(1.-(ENTIGA(DF/2.,X/2.)*((X/2.)**(DF/2.))))
      WRITE(2,*)RMOD/4.,X,OUT
    7 CONTINUE 

      STOP
      END      
