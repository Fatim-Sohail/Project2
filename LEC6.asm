Include Irvine32.inc

.data

var1 BYTE 100
w WORD 2
.code

main PROC
	
	mov bl, var1
	mov ax, w
	mov var1, al
	
	
	call writeint

	exit
main ENDP
end main