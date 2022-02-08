Include Irvine32.inc
.data

name dword ?
sname dword ?
age dword ?
gender dword ?
num dword ?
mail dword ?
qual dword ?

string1 BYTE "Name: Fatima Sohail Shaukat"
string2 BYTE "Age: "

.code 

main PROC
	mov edx, offset string1
	call WriteString
;	mov name, edx
	mov edx, offset string2
	call CRLF
	call WriteString
	call readint
	exit
main ENDP
END main