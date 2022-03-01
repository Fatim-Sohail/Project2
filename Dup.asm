Include Irvine32.inc

.data

val1 DWORD 10h
val2 DWORD 20h


;var BYTE 10, 3 DUP(0), 20
;var WORD 65535

.data

val3 DWORD 30h
final DWORD ?

.code

main PROC
	mov eax, val1
	add eax, val2
	sub eax, val3
	mov final, eax

	call DumpRegs

	exit
main ENDP
end main