Include Irvine32.inc

.data
a WORD 1000h, 2000h, 3000h, 4000h, 5000h
b DWORD 1, 2, 3, 4

.code

main PROC
	mov eax, 0
	mov ax, [a-2]
	call WriteInt
	call dumpRegs
	call CRLF
	
	mov eax, 0
	mov eax, [b+36]
	call dumpRegs
	call WriteInt
	mov eax, sizeof a
	call WriteInt
	call readint
	exit
main ENDP
END main