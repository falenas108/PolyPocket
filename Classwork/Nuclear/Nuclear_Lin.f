C ************************************************
      SUBROUTINE ELOSS(ENE,ANGL,ENEAFT)
      COMMON IX,ANUMBE
C *** CALCULATE ENERGY LOSS IN COLLISION, USE ISOTROPIC (S-WAVE) 
C *** APPROXIMATION. ROUND UP ANY ENERGY BELOW 0.1 EV TO 0.02 EV (THERMAL)
      IF(ENE.LT.1.E-7)THEN
      ENEAFT=2.E-8
      ELSE
C *** THIS IS THE MAXIMUM RECOIL ENERGY THAT CAN BE IMPARTED
      EREMAX=((4.*ANUMBE)/((1.+ANUMBE)**2.))*ENE
      CALL RANDM(RN1)
C *** THE PROBABILITY DISTRIBUTION FOR RECOIL ENERGIES IS FLAT
C *** FROM ZERO UP TO THE MAXIMUM 
      EREMAX=EREMAX*RN1
      ENEAFT=ENE-EREMAX
      ENDIF

      IF(ENE.LT.1.E-7)THEN
      CALL RANDM(RN1)
      ANGL=ACOS((2.*RN1)-1.)
      ELSE
      ETA=ACOS(SQRT((EREMAX/ENE)*(((1.+ANUMBE)**2.)/(4.*ANUMBE))))
      ANGL=ATAN((SIN(2.*ETA))/((1./ANUMBE)-COS(2.*ETA)))
      ENDIF
      
      RETURN
      END
C ************************************************
      SUBROUTINE ENERGY(ENE)
      COMMON IX
C *** USE VON NEUMANN'S METHOD ("HIT AND MISS") TO CALCULATE THE 
C *** ENERGY OF THE NEUTRON EMITED FROM A FISSION SOURCE.
   7  CALL RANDM(RN1)
C *** P=0 ABOVE ~10 MEV
      RN1=RN1*9.999
C *** APPLY MAXWELL SPECTRUM
      PROB=SQRT(RN1)*EXP(-RN1/1.4)
      CALL RANDM(RN2)
C *** THE MAXIMUM OF THE DISTRIBUTION AS WRITTEN IS LESS THAN 0.5 
      RN2=RN2*0.5
      IF(RN2.GT.PROB)GOTO 7    
      ENE=RN1   
      RETURN
      END

C ************************************************
      SUBROUTINE RANDM(RN1)
      COMMON IX
      IY=IX*6539
      IF(IY)5,6,6
    5 IY=IY+2147483647+1
    6 RN1=IY
      RN1=RN1*.4656613E-9
      IX=IY
      RETURN
      END
C ************************************************
      SUBROUTINE XSECT(ENE,XELAST,XABSOR)
C *** RETURNS THE APPROXIMATE CROSS SECTIONS (BARNS) FOR ABSORPTION AND 
C *** ELASTIC SCATTERING IN CARBON.
C *** HERE WE NEED THE ENERGY IN EV, NOT MEV
      X=ENE*1.E6

C *** CHECK THESE APPROXIMATIONS VS THE PLOTS IN THE HANDOUTS
      IF(X.LT.1.E4)THEN
      XELAST=5.
      ELSE
      XELAST=10.5-(1.346*LOG10(X))
      ENDIF
      XELAST=XELAST*1.E-24

      IF(X.LT.1.E3)THEN
      XABSOR=(6.442E-4)*(X**(-0.49421))
      ELSE IF(X.LT.1.E5) THEN
      XABSOR=1.5E-5
      ELSE IF(X.LT.5.E6) THEN
      XABSOR=2.E-5
      ELSE
      XABSOR=(4.E-06)*EXP(X*3.2189E-07) 
      ENDIF
      XABSOR=XABSOR*1.E-24
      RETURN
      END
C*************************************************
      SUBROUTINE EULER(EX,EY,EZ,ANGL,SX,SY,SZ)
C     THIS SUBROUTINE TAKES THE ORIGINAL LINEAR TRAJECTORY,
C     ROTATES IT TO LIE ALONG THE Z-AXIS, GENERATES A VECTOR
C     AT ZENITH ANGLE THETA = SCATTERING ANGLE 
C     AND AZIMUTHAL ANGLE FI = RANDOM * 2PI. THE
C     ORIGINAL AXIS IS NOW ROTATED BACK TAKING THE SCATTERING
C     VECTOR WITH IT. NOW WE HAVE THE SCATTERED
C     DIRECTION VECTOR (SX,SY,SZ).
C     WE USE EULER ANGLES TO PERFORM THE TRANSFORMATION.
      COMMON IX
C *** NORMALIZE THE DIRECTION TO A UNIT VECTOR (IN CASE IT WASN'T)
      S=SQRT(EX**2+EY**2+EZ**2)
      EX=EX/S
      EY=EY/S
      EZ=EZ/S
      BET=ACOS(EZ)
C *** THESE APPROXIMATIONS ARE ONLY NEEDED FOR COMPTON SCATTERING 
C *** FOR GAMMAS (BUT THEY WILL NOT HURT HERE)
      IF(ABS(BET).LT.0.027)ALF=0.0
      IF(ABS(BET).LT.0.027)GO TO 44
      ARG=EY/SIN(BET)
      AARG=ABS(ARG)
      IF(AARG.LT.1.0)GOTO 344
      ARG=ARG/(1.0001*AARG)
344   ALF=ASIN(ARG)
 44   CONTINUE
      SCO1=COS(ALF)*SIN(BET)+EX
      SCO1=ABS(SCO1)
      SCO2=ABS(EX)
      IF(SCO1.LT.SCO2)BET=-BET
      IF(SCO1.LT.SCO2)ALF=-ALF
      GAM=0.0
C     WE NOW HAVE THE EULER ANGLES OF ROTATION BETWEEN
C     Z-AXIS TO DIRECTION OF INITIAL PARTICLE.
      THET = ANGL
      CALL RANDM(RN1)
      FI = 6.2831853 * RN1
C     WE NOW HAVE SCATTERED THE PARTICLE FROM THE
C     Z-AXIS AND MUST ROTATE IT TO THE ORIGINAL UNSCATTERED
C     PARTICLE DIRECTION. CACULATE THE ROTATION MATRIX.
      R11 = COS(ALF)*COS(BET)*COS(GAM)-SIN(ALF)*SIN(GAM)
      R12 = COS(BET)*SIN(ALF)*COS(GAM)+COS(ALF)*SIN(GAM)
      R13 =-SIN(BET)*COS(GAM)
      R21 =-SIN(GAM)*COS(BET)*COS(ALF)-SIN(ALF)*COS(GAM)
      R22 =-SIN(GAM)*COS(BET)*SIN(ALF)+COS(ALF)*COS(GAM)
      R23 = SIN(BET)*SIN(GAM)
      R31 = SIN(BET)*COS(ALF)
      R32 = SIN(ALF)*SIN(BET)
      R33 = COS(BET)
      SOX = SIN(THET)*COS(FI)
      SOY = SIN(THET)*SIN(FI)
      SOZ = COS(THET)
      SX =  R11*SOX+R21*SOY+R31*SOZ
      SY =  R12*SOX+R22*SOY+R32*SOZ
      SZ =  R13*SOX+R23*SOY+R33*SOZ
C     WE NOW HAVE THE UNIT PROPAGATION VECTOR OF THE
C     SCATTERED PARTICLE IN THE *ORIGINAL* FRAME.
      RETURN
      END
C ************************************************

      INTEGER FUNCTION INROD(ENERG,R,X)

C *** This finds if a neutron hit a rod.  Using .1 cm radius for fuel rods. Say.09 to take care of rounding errors.
C *** 0 is nothing happens, 1 is transmitted and thermalized,
C *** 2 transmitted and not thermalized, 3 is backscattered and thermalized, 4 is backscattered and not thermalized.
      INROD=0
      IF(X.Lt.0) THEN
        IF ((ENERG).Lt.(.0005)) THEN
            INROD=3

        ELSE
            INROD=4
        END IF
      ELSE IF(X.gt.R) THEN
        IF((ENERG).Lt.(.0005)) THEN
            INROD=1

        ELSE
            INROD=2
        END IF
      END IF
      RETURN
      END
C ***********************************************

      SUBROUTINE INITIAL(ENERG,PHI,ANGL,EX,EY,EZ,X,Y,Z)
C *** Sets up the starting postitions neutron values.
      COMMON IX

      CALL ENERGY(ENERG)
      CALL RANDM(PHI)

      PHI=ASIN(PHI*2-1)
      CALL RANDM(ANGL)
      ANGL=ANGL*3.1415-3.1415/2
      EX=COS(PHI)*COS(ANGL)
      EY=COS(PHI)*SIN(ANGL)
      EZ=SIN(PHI)
      X=0
      Y=0
      Z=0

      RETURN
      END
C ************************************************
      PROGRAM NUCLEAR
C *** Using spherical coordinates, LOCR is the radius other rods are away, LOCTH is the angle.  R is the radius, RUNS is the number of runs
C *** each radius goes through, N is a marker used to see if both loops should be exited.

      REAL X,Y,Z
      INTEGER  RUNS,R,N
      COMMON IX, ANUMBE
      REAL ENERG, ANGL, PHI
      IX=45239
      ANUMBE=12
      RUNS=5000


      OPEN(UNIT=1,FILE='out.TOTTH',STATUS='UNKNOWN')
      OPEN(UNIT=2,FILE='out.TOTB',STATUS='UNKNOWN')
      OPEN(UNIT=3,FILE='out.TOTTR',STATUS='UNKNOWN')
      OPEN(UNIT=4,FILE='out.TOTAB',STATUS='UNKNOWN')
      OPEN(UNIT=5,FILE='out.HISTX',STATUS='UNKNOWN')
      OPEN(UNIT=6,FILE='out.HISTY',STATUS='UNKNOWN')
      OPEN(UNIT=7,FILE='out.HISTZ',STATUS='UNKNOWN')
      DO R=1,50
C *** These count Thermalized, backscattered, transmitted, and absorbed.
        COUNTERTh=0
        COUNTERB=0
        COUNTERTr=0
        COUNTERAB=0
C *** Rods are set at a constant radius R away, spread evenly from 0 to 2*pi radians

        DO L=1,RUNS
            N=0
            CALL INITIAL(ENERG,PHI,ANGL,EX,EY,EZ,X,Y,Z)
C *** M is the number of jumps taken by the neutron.
            DO M=1,100000
                CALL XSECT(ENERG,XELEAST,XEABSOR)
C *** Tests for absorbtion
                CALL RANDM(RN1)
                IF(XEABSOR/(XELEAST+XEABSOR).gt.RN1) THEN
                    COUNTERAB=COUNTERAB+1
                END IF

                CALL RANDM(RN1)
C *** Finds distance between steps.  Got n from work in write-up.
                DIST=Log(RN1)/(-1.079*10**(23.)*XELEAST)
C *** Tests every 1/25th of the way there to see if it is inside the rod.

                K=INROD(ENERG,REAL(R),X)
                IF(K.Eq.1)THEN
                    COUNTERTh=COUNTERTh+1
                    COUNTERTr=COUNTERTr+1
                    EXIT
                ELSE IF(K.EQ.2) THEN
                    COUNTERTr=COUNTERTr+1
                    EXIT
                ELSE IF(K.EQ.3) THEN
                    COUNTERB=COUNTERB+1
                    COUNTERTh=COUNTERTh+1
                    EXIT
                ELSE IF(K.EQ.4) THEN
                    COUNTERB=COUNTERB+1
                    EXIT
                END IF

C *** Finds the new energy, and new unit vectors.
                CALL ELOSS(ENERG,ANGL,ENEAFT)
                ENERG=ENEAFT
                CALL EULER(EX,EY,EZ,ANGL,SX,SY,SZ)

                EX=SX
                EY=SY
                EZ=SZ
                ANGL=ATAN(EY/EX)
                PHI=ASIN(EZ)
                X=X+EX*DIST
                Y=Y+EY*DIST
                Z=Z+EZ*DIST

            END DO
        END DO
        WRITE(0,*)R,COUNTERTH/RUNS*100,COUNTERB/RUNS*100,COUNTERTr/RUNS*100,COUNTERAB/RUNS*100
        WRITE(1,*)COUNTERTH/RUNS*100
        WRITE(2,*)COUNTERB/RUNS*100
        WRITE(3,*)COUNTERTr/RUNS*100
        WRITE(4,*)COUNTERAB/RUNS*100
      END DO
      END