Include Irvine32.inc
.data

n1 dword ?
n2 dword ?

num1 BYTE "Enter first number: ",0
num2 BYTE "Enter second number: ",0
a BYTE "Sum is: ",0
s BYTE "Subtraction  is: ",0
m BYTE "Product  is: ",0
d BYTE "Division  is: ",0

.code

main PROC
	mov edx, offset num1
	call WriteString
	call readint
	mov n1, eax

	mov edx, offset num2
	call WriteString
	call readint
	mov n2, eax

	mov eax, n1
	add eax, n2

	mov edx, offset a
	call WriteString
	call Writeint

	call CRLF

	mov eax, n1
	sub eax, n2
	mov edx, offset s
	call WriteString
	call writeint

	call CRLF

	mov eax, n1
	mov edx, n2
	mul n2
	mov edx, offset m
	call WriteString
	call writeint

	call CRLF

	mov n2, eax
	mov eax, n1
	mov edx, 0
	div n2
	mov eax, edx

	mov edx, offset d
	call WriteString
	call writeint

	call readint
	exit

main ENDP
END main