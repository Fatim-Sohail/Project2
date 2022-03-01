Include Irvine32.inc
; Z = (A + B) - (E + D)

.data 

A DWORD 10
B DWORD 7
E DWORD 20
D DWORD 17

.code
main PROC
	mov eax, 0
	mov edx, 0

	mov eax, A
	add eax, B

	mov edx, eax
	mov eax, E
	add eax, D

	sub edx, eax 
	mov eax, edx

	call WriteInt
	exit
main ENDP
END main