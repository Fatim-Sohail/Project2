Include Irvine32.inc

.data
data byte "hello", 0
	 byte "int", 0

string BYTE " BIO DATA FORM ",0
string1 BYTE "Name            : ",0
string2 BYTE "Age             : ",0
string3 BYTE "Gender          : ",0
string4 BYTE "Contact No.     : ",0
string5 BYTE "Session         : ",0
string6 BYTE "Email ID        : ",0

.code

main PROC
	mov eax, 0
	mov edx,  OFFSET string
	call WriteString
	call CRLF
	call CRLF

	mov edx, offset string1
	call WriteString
	mov al, data
	;call readint
	call WriteChar
	call CRLF

	mov edx, offset string2
	call WriteString
	mov al, data+1
	;call readint
	call WriteChar
	call CRLF

	mov edx, offset string3
	call WriteString
	mov al, data+2
	;call readstring
	call WriteChar
	call CRLF

	mov edx, offset string4
	call WriteString
	mov al, data+5
	;call readint
	call WriteChar
	call CRLF

	mov edx, offset string5
	call WriteString
	mov al, data+6
	;call readint
	call WriteChar
	call CRLF
	call readint
	exit
main ENDP
END main
