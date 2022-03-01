Include Irvine32.inc
.data

val WORD +32767
array DWORD 1, 2, 3
myB BYTE 80h, 66h, 0A5h

.code
main PROC
	mov eax, 0
	call DumpRegs
	mov ax, -32768
	neg ax
	call DumpRegs
	call WriteInt
	neg val
	call DumpRegs
	call WriteInt
	call DumpRegs
COMMENT !
	movzx ax, myB
	call WriteInt
	call DumpRegs
	mov bl, [myB+1]
	call WriteInt
	call DumpRegs
	add ax, bx
	call WriteInt
	call DumpRegs
	mov bl, [myB+2]
	call WriteInt
	call DumpRegs
	mov bx, 0
	add ax, bx
	call WriteInt
	call DumpRegs


	mov al, myB
	call DumpRegs
	call WriteInt
	add al,  [myB + 1]
	call WriteInt
	call DumpRegs
	add al, [myB + 2]
	call DumpRegs
	call WriteInt


	mov eax, 0
	mov eax, array
	xchg eax, [array + 8]
	call WriteInt
	xchg eax, [array]
	call WriteInt
	xchg eax, [array + 4]
	call WriteInt
	!

	exit

main ENDP
END main