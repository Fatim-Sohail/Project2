Include Irvine32.inc

.data
data byte 10,  20, 30, 40
f byte "First Byte  = ", 0
s byte "Second Byte = ", 0
t byte "Third Byte  = ", 0
fo byte "Fourth Byte = ", 0

; exitProcess PROTO, dwExitCode:DWORD

.code

main PROC
	mov eax, 0
	mov edx, offset f
	call WriteString
	mov al, data
	call WriteInt
	call CRLF

	mov edx, offset s
	call WriteString
	mov al, data+1
	call WriteInt
	call CRLF

	
	mov edx, offset t
	call WriteString
	mov al, data+2
	call WriteInt
	call CRLF

	mov edx, offset fo
	call WriteString
	mov al, data+3
	call WriteInt

	call readint
	exit
main ENDP
END main
