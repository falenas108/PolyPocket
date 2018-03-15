!*********ENTIRE INCOMPLETE GAMMA FUNCTION****************
      FUNCTION ENTIGA(DF,X)
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

***********************************************************

      PROGRAM CHISQUARE
      DIMENSION DATA(37), DATE(37), ERROR(37)
      INTEGER A,P,SIZE
      SIZE=37
      REAL X=0.
      DATE(1)=372.
      DATE(2)=530.      
      DATE(3)=741.      
      DATE(4)=812.
      DATE(5)=850.
      DATE(6)=889.
      DATE(7)=925.
      DATE(8)=969.
      DATE(9)=1030.
      DATE(10)=1110.
      DATE(11)=1170.
      DATE(12)=1211.
      DATE(13)=1265.
      DATE(14)=1328.
      DATE(15)=1399.
      DATE(16)=1476.
      DATE(17)=1536.
      DATE(18)=1581.
      DATE(19)=1645.
      DATE(20)=1695.  
      DATE(21)=1738.
      DATE(22)=1791.
      DATE(23)=1860.
      DATE(24)=1944.
      DATE(25)=2016.
      DATE(26)=2145.
      DATE(27)=2175.
      DATE(28)=2227.
      DATE(29)=2285.
      DATE(30)=2330.
      DATE(31)=2375.
      DATE(32)=2435.
      DATE(33)=2496.
      DATE(34)=2565.
      DATE(35)=2645.
      DATE(36)=2700.
      DATE(37)=2734.
      DATA(1)=-13.
      DATA(2)=36.
      DATA(3)=-26.
      DATA(4)=2.
      DATA(5)=33.
      DATA(6)=9.
      DATA(7)=-7.
      DATA(8)=-26.
      DATA(9)=-38.
      DATA(10)=0.
      DATA(11)=15.
      DATA(12)=33.
      DATA(13)=16.
      DATA(14)=17.
      DATA(15)=0.
      DATA(16)=-19.
      DATA(17)=-3.
      DATA(18)=-6.
      DATA(19)=33.
      DATA(20)=17.
      DATA(21)=-9.
      DATA(22)=-35.
      DATA(23)=3.
      DATA(24)=16.
      DATA(25)=-1.
      DATA(26)=-5.
      DATA(27)=-15.
      DATA(28)=-4.
      DATA(29)=0.
      DATA(30)=14.
      DATA(31)=8.
      DATA(32)=-15.
      DATA(33)=-17.
      DATA(34)=-6.
      DATA(35)=4.
      DATA(36)=37.
      DATA(37)=30.
      ERROR(1)=11.
      ERROR(2)=19.
      ERROR(3)=11.
      ERROR(4)=15.
      ERROR(5)=13.
      ERROR(6)=13.
      ERROR(7)=19.
      ERROR(8)=13.
      ERROR(9)=13.
      ERROR(10)=10.
      ERROR(11)=18.
      ERROR(12)=16.
      ERROR(13)=13.
      ERROR(14)=12.
      ERROR(15)=17.
      ERROR(16)=11.
      ERROR(17)=18.
      ERROR(18)=13.
      ERROR(19)=13.
      ERROR(20)=28.
      ERROR(21)=19.
      ERROR(22)=15.
      ERROR(23)=10.
      ERROR(24)=11.
      ERROR(25)=15.
      ERROR(26)=19.
      ERROR(27)=15.
      ERROR(28)=11.
      ERROR(29)=12.
      ERROR(30)=13.
      ERROR(31)=13.
      ERROR(32)=12.
      ERROR(33)=11.
      ERROR(34)=10.
      ERROR(35)=11.
      ERROR(36)=17.
      ERROR(37)=17.


      OPEN(UNIT=2,FILE='HYPTEST2.OUT',STATUS='unknown')

      DF=SIZE-2
      WRITE(2,*)'A',char(9),'B',char(9),'S',char(9),'PROB(CHISQ>X)_in_%'



C *** Two free parameters, amplitude and phase.  Values written as 100* what I want, because I can't use decimals.
C *** A=Amplitude, P=Phase
      DO A=1000,4000,100
         DO P=0,618,100
            X=0.
            DO J=1,SIZE
            
            EX=A/100.*SIN(P/100.+2.*3.1415*DATE(J)/365.)
            X=X+((DATA(J)-EX)**2.)/ERROR(J)
            END DO
            OUT=100*(1.-ENTIGA(DF/2.,X/2.)*((X/2.)**(DF/2.)))
            WRITE(2,*) A/100.,P/100.,X,OUT

      END DO
      END DO
C *** Compared to the null hypothesis of 0 everywhere:
      X=0
      DO J=1,SIZE
         X=X+DATA(J)**2./ERROR(J)
      END DO

      WRITE(*,*) X, 100*(1.-ENTIGA(DF/2.,X/2.)*((X/2.)**(DF/2.)))
      
      END

