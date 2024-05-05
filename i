Write an assembly language program to add two 16-bit numbers in 8086.
Soln. -
MOV AX,1234H
MOV BX,1236H
ADD AX,BX 
HLT


Write an assembly language program to divide two 16-bit numbers in 8086.
Soln. -

MOV AX,[0301H] 
MOV BX,[0303H]
DIV BX
HLT


AAA
MOV AX,0032H
MOV BX,0033H
ADD AX,BX
AAA
HLT



AAS
MOV AL,33H
SUB AL,39H
AAS
OR AL,30H
HLT


AAM
MOV AL,03H
MOV BL,09H
MUL BL
AAM
OR AX,3030H
HLT


AAD
MOV AX,0033H
MOV BX,0032H
AAD
DIV BX
HLT

DAA
MOV AL,71H
ADD AL,43H'
DAA
HLT


DAS
MOV AL,71H
SUB AL,43H'
DAS
HLT



Write an assembly language program to find out the count of positive numbers and negative numbers from a series of signed numbers in 8086.
Soln. -

MOV CL,0AH
MOV BL,00H
MOV DL,00H
LEA SI, [1000H] 
L1: MOV AL, [SI] 
SHL AL, 01
JNC L2
INC DL 
JMP L3 
L2: INC BL 
L3: INC SI 
DEC CL 
JNZ L1
MOV [100AH], BL 
MOV [100BH], DL 
HLT


Write an assembly language program to convert to find out the largest number from a given unordered array of 8-bit numbers, stored in the locations starting from a known address in 8086. Soln. -

MOV CL, 0AH 
LEA SI, [1000H] 
MOV AL, [SI] 
L1: INC SI
MOV BL, [SI] 
CMP AL, BL
JC L2
JMP L3
L2: MOV AL, BL
L3: DEC CL 
JNZ L1
MOV [100AH], AL
HLT

Write an assembly language to find smallest number from a given unordered array

MOV CL, 0AH      ; Set loop counter to 10
LEA SI, [1000H]  ; Load address of the data block
MOV AL, [SI]     ; Load the first byte into AL

L1: 
INC SI           ; Move to the next byte
MOV BL, [SI]     ; Load the byte pointed by SI into BL
CMP AL, BL       ; Compare AL with BL

JNC L2           ; Jump if not carry (BL >= AL)
MOV AL, BL       ; Update AL with BL if BL < AL

L2: 
DEC CL           ; Decrement loop counter
JNZ L1           ; Jump to L1 if loop counter is not zero

MOV [100AH], AL  ; Store the smallest value at memory address 100AH
HLT              ; Halt the program


Write an assembly language program to find out the largest number from a given unordered array of 16-bit numbers, stored in the locations starting from a known address in 8086.

Soln. -


MOV BX, 1000H 
MOV CL, [BX] 
INC BX
MOV AX, [BX] 
DEC CL
Back: INC BX 
INC BX
CMP AX, [BX]
JNC Next
MOV AX, [BX] 
Next: DEC CL 
JNZ Back
MOV [1020H], AX
HLT


Write an assembly language program to print Fibonacci series in 8086.

Soln. -

MOV AL,00H
MOV SI,500H
MOV [SI],AL 
ADD SI,01H
ADD AL,01H 
MOV [SI],AL 
MOV CX,[0000H] 
SUB CX,0002H 
L1:MOV AL,[SI-1] 
ADD AL,[SI] 
ADD SI,01H 
MOV [SI],AL
LOOP L1
HLT


Write an assembly language program to perform the division 15/6 using the ASCII codes. Store the ASCII codes of the result in register DX.

Soln. -


MOV AX,‟15”
MOV BX,“6” 
SUB AX, 3030H 
SUB BH, 30H
AAD
DIV BH
ADD AX, 3030H 
MOV [SI], AX 
HLT

