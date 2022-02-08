Include Irvine32.inc
.data

name dword ?
sname dword ?
age dword ?
gender dword ?
num dword ?
mail dword ?
qual dword ?

string BYTE " BIO DATA FORM ",0
string1 BYTE "Name            : Fatima Sohail  Shaukat",0
string2 BYTE "Age             : 19",0
string3 BYTE "Gender          : female",0
string4 BYTE "Contact No.     : 09001237650",0
string5 BYTE "Email ID        : abc@gmail.com",0
string6 BYTE "Qualification   : Undergraduate",0

.code 

main PROC
	mov edx, offset string
	call WriteString
	call CRLF
	call CRLF
	mov edx, offset string1
	call WriteString
;	mov name, edx
	call CRLF
	mov edx, offset string2
	call WriteString
	call CRLF
	mov edx, offset string3
	call WriteString
	call CRLF
	mov edx, offset string4
	call WriteString
	call CRLF
	mov edx, offset string5
	call WriteString
	call CRLF
	mov edx, offset string6
	call WriteString
	call CRLF
	call readint
	exit
main ENDP
END main