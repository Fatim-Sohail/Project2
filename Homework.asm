INCLUDE Irvine32.inc

.data

.code

main PROC
	
COMMENT !
	mov ecx,1
	sub ecx,1			; ECX = 0, ZF = 1
	mov eax,0FFFFFFFFh
	call DumpRegs
	inc eax				; EAX = 0, ZF = 1
	call DumpRegs
	inc eax				; EAX = 1, ZF = 0
	call DumpRegs
	dec eax				; EAX = 0, ZF = 1
	!
	call DumpRegs
	exit
main ENDP
END main
