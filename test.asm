Title: Task 2
; (4 * 5) - (3 + 7 * 21)
; Name: Fatima Sohail Shaukat
; Roll no. : 2020-CE-37

INCLUDE Irvine32.inc
.data
.code
main PROC

mov eax, 4
mov edx, 5
mul edx      ;Store 4*5 
mov ecx, eax ;copy eax to ecx

mov eax, 7
mov ebx, 21
mul ebx
add eax, 3

mov edx, eax
mov eax, ecx
sub eax, edx

call WriteInt
call ReadInt


exit 
main ENDP 
END main 