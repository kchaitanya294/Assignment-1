     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 

__main  FUNCTION		         

	MOV R0,#0x06  		

	MOV R1,#0x02

	MOV R2,#0x05

	MOV   R3, #0x20000000 

	CMP R0,R1

	BPL LOOP1

	MOV R4,R1

	B LOOP2

LOOP1   MOV R4,R0
			
LOOP2   CMP R4,R2

	BPL LOOP3

	MOV R4,R2

LOOP3   STR R4,[R3]
			 
stop b stop

     ENDFUNC

     END
