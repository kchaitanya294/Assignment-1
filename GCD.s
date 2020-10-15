     AREA     appcode,CODE,READONLY
     EXPORT __main
     ENTRY
 
__main  FUNCTION
				
        MOV R0,#36			;	A=36

	MOV R1,#24			;	B=24

	MOV R2,#0x20000000	;	
		
LOOP1	CMP R0,R1		;	infinite loop until the condition (A!=B) satisfies

	BEQ LOOP3		;
			
	CMP R0,R1		;	if(A>B)

	BLS LOOP2		;

	SUB R0,R0,R1		;	A=A-B

	B LOOP1			;	else

LOOP2   SUB R1,R1,R0		;	B=B-A

	   B LOOP1		;
			
LOOP3		STR R0,[R2]		;	Store data back to 0x20000000

stop    B stop ; stop program
     ENDFUNC
     END 