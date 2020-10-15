     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY

__main FUNCTION

       MOV R0,#0x00

       MOV R1,#0x01

       MOV R2,#0x09

       MOV R3,#0x20000000

	CMP R2,#0x01

        BNE LOOP1
	
	MOV R4,R0

        B   LOOP3

LOOP1   CMP R2,#0x02

	BNE LOOP2

	MOV R4,R1

	B LOOP3

LOOP2   SUB R2,R2,#0x01

	ADD R4,R1,R0

	MOV R0,R1

	MOV R1,R4

	CMP R2,#0x02

	BNE LOOP2

LOOP3

	STR R4,[R3]         ;Answer can be seen in R4

stop 	B stop

	ENDFUNC

	END

	