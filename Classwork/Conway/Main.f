      SUBROUTINE DISPLAY(STATUS,N)
      DIMENSION STATUS(35,35)
      CHARACTER*70 STRING

      DO 7 I=1,N
      STRING=' '
      DO 14 J=1,N

      IF (STATUS(I,J).EQ.1.) THEN
      STRING=TRIM(STRING)//' @ '
      ELSE 
      STRING=TRIM(STRING)//' . '
      ENDIF   
      
   14 CONTINUE
      WRITE(*,*)STRING
    7 CONTINUE
C *** UNFORTUNATELY THIS IS QUANTIZED IN UNITS OF 1 SEC
C     CALL SLEEP(1)
C *** ANOTHER WAY TO DO THIS (WASTE SOME TIME)
      DO 17 J=1,5000000
      RN1=RAND()
   17 CONTINUE
      RETURN
      END
C **************************************************
      PROGRAM LIFE
      INTEGER::ROUND
      DIMENSION STATUS(35,35),NEXT(35,35)
      INTEGER K=0
      INTEGER LOOP=0
      
      N=35
      
      WRITE(*,*)"ENTER 1 FOR MANUAL SETUP, 0 FOR RANDOM"
      READ(*,*)RAN
      
C *** SET UP THE BOARD
      DO 7 I=1,N
      DO 14 J=1,N
      STATUS(I,J)=0.
      NEXT(I,J)=0.
   14 CONTINUE
    7 CONTINUE

      IF(RAN.EQ.1.)THEN     
C *** INITIALIZE LIVE CELLS
   15 WRITE(*,*)'ENTER COORDINATES OF LIVE CELLS, 0,0 WHEN DONE'
      READ(*,*)I,J
      IF((I.EQ.0).AND.(J.EQ.0))GOTO 17
      STATUS(I,J)=1.
C *** DISPLAY MOVE
      CALL DISPLAY(STATUS,N)
      GOTO 15
      ELSE

      WRITE(*,*)"ENTER A FIVE DIGIT INTEGER TO CHANGE SEED"
      READ(*,*)NSEED
      CALL SRAND(NSEED)
      
      DO 57 I=1,N
      DO 54 J=1,N
      RN1=RAND()
C  *** notice you can change this fraction of live cells in your studies
      IF(RN1.LT.0.5)THEN
      STATUS(I,J)=0.
      ELSE
      STATUS(I,J)=1.
      ENDIF
   54 CONTINUE
   57 CONTINUE
      CALL DISPLAY(STATUS,N)
    
      ENDIF
     
 17   CONTINUE
      
C *** MAKE IT ALIVE!!! ***
C *** SEE http://www.bitstorm.org/gameoflife/
C *** RULES:
C *** For a space that is 'populated':
C *** Each cell with one or no neighbors dies, as if by loneliness. 
C *** Each cell with four or more neighbors dies, as if by overpopulation. 
C *** Each cell with two or three neighbors survives. 
C *** For a space that is 'empty' or 'unpopulated':
C *** Each cell with three neighbors becomes populated. 
      
      WRITE(*,*)"ADJUST YOUR SCREEN TO BE 36 LINES LONG"

C *** MY CODE BEGINS HERE
      OPEN (UNIT=1,FILE='temp.out',STATUS='UNKNOWN')
      WRITE(*,*) 'This program will pause every 5 steps.'
      WRITE(*,*) 'To continue after, press 1.  To stop, type 0'

      DO LOOP=0, 10

C     This part finds the total number of living cells for later analysis.
      M=0
      DO I=1,N
      Do J=1,N
      M=M+STATUS(I,J)
      END DO
      END DO 
      WRITE(1,*) M

c     WRITE(*,*) NEIGHBORS(STATUS,4,5) 
c     WRITE(*,*) NEIGHBORS(STATUS,4,6)
c     WRITE(*,*) NEIGHBORS(STATUS,4,7)

      WRITE(*,*)' '
      CALL NEXTTURN(STATUS,I,J)
      END DO
C      WRITE(*,*) 'Continue?  1=Yes,0=No'
C      READ(*,*)RAN
C      IF (RAN.EQ.0) EXIT
      END


C ****************************************************
      Integer function NEIGHBORS(STATUS,I,J)
C     This finds the number of neighbors. 
      DIMENSION STATUS(35,35)
      INTEGER K=0


      IF(STATUS(INT(ROUND(REAL(I-1))),J).EQ.1.) K=K+1

      IF(STATUS(INT(ROUND(REAL(I+1))),J).EQ.1.) K=K+1

      IF(STATUS(I,INT(ROUND(REAL(J-1)))).EQ.1.) K=K+1
      
      IF(STATUS(I,INT(ROUND(REAL(J+1)))).EQ.1.) K=K+1

      NEIGHBORS=K
      RETURN
      END      
C ****************************************************


C ****************************************************

      REAL function ROUND(Te)
      L=INT(Te)
      IF (L==0) THEN
            ROUND=35
      ELSE IF (L==36) THEN
            ROUND=1
      ELSE
            ROUND=L
      ENDIF


      RETURN
      END

C ****************************************************

      SUBROUTINE NEXTTURN(STATUS, I,J)
C     This moves the function to the next turn.  Status 2 is a dummy to store changes.
      DIMENSION STATUS(35,35)
      DIMENSION STATUS2(35,35)
      STATUS2=STATUS
      N=35
      DO I=1,35
      DO J=1,35   

      IF (NEIGHBORS(STATUS,I,J).LT.2) THEN
            STATUS2(I,J)=0
      ELSE IF (NEIGHBORS(STATUS,I,J).EQ.4) THEN
            STATUS2(I,J)=0

      ELSE IF (NEIGHBORS(STATUS,I,J).EQ.3) THEN
            STATUS2(I,J)=1
      END IF
      END DO
      END DO
      STATUS=STATUS2

      CALL DISPLAY(STATUS, 35)
      RETURN
      END




     

