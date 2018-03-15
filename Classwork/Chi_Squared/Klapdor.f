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

      DIMENSION DATA(16),DATE(16)
      INTEGER A,B,SIZE
      REAL X,EX, SD
      SIZE=16
      X=0
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

      DO J=1,SIZE
         AVERAG=AVERAG+DATA(J)
      END DO
      DO J=1,SIZE
         SD=SD+(DATA(J)-AVERAG)**2.
      END DO
      SD=(SD/(SIZE-2))**(1/2.)
      

      AVERAG=AVERAG/REAL(SIZE)


      OPEN(UNIT=2,FILE='HYPTEST1.OUT',STATUS='unknown')

      DF=SIZE-2
      WRITE(2,*)'A',char(9),'B',char(9),'S',char(9),'PROB(CHISQ>X)_in_%'



C *** Two free parameters, background amplitude and peak amplitude.  Values written as 100* what I want, because I can't use decimals..
C *** A=Amplitude, B=lowest point
      DO A=100,400,1
         DO B=0,200,1
            X=0.
            DO J=1,SIZE
            
            EX=B/100.+A/100.*EXP(-((DATE(J)-2039.)**2.)/(2.*1.59*1.59))
            X=X+((DATA(J)-EX)**2.)/EX
            END DO
            OUT=100*(1.-ENTIGA(DF/2.,X/2.)*((X/2.)**(DF/2.)))
            WRITE(2,*) A/100.,B/100.,X,OUT

      END DO
      END DO
C *** Compared to the null hypothesis of 0 everywhere:
      X=0
      DO J=1,16
         X=X+DATA(J)**2./SD
      END DO

      WRITE(*,*) X, 100*(1.-ENTIGA(DF/2.,X/2.)*((X/2.)**(DF/2.)))

      END
