Include Irvine32.inc
.data
list1 Byte "enter "
Byte 50, 60, 70, 80
Byte 81, 82, 83, 84

.code

main PROC
	mov eax, 0
	mov edx, offset list1
	mov al, list1
	call WriteInt
	call CRLF
	mov al, list1+3
	call Writechar

		;mov esi, offset list1
		;mov ecx, LENGTHOF list1
		;mov ebx, TYPE list1
		;call dumpMem

	exit
main ENDP
END main
