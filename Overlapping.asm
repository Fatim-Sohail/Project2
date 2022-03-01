INCLUDE Irvine32.inc
.data
oneDword Dword 12345678h
oneSword Sword -4h
oneByte Byte 11h
.code
main PROC
	mov eax, oneDword ; EAX = 123456h
	call DumpRegs
	movzx eax, oneByte ; EAX = 000011h
	call DumpRegs
	movzx eax, oneSword ; EAX = 000011h
	call DumpRegs
	call ReadInt
	exit
main ENDP
END main
