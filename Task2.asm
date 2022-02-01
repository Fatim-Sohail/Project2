INCLUDE Irvine32.inc
.data
.code

maine PROC

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
maine ENDP
END maine