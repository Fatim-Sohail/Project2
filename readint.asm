INCLUDE Irvine32.inc
.data
a dword ?
b dword ?
.code
main PROC
call readint
mov a, eax
call readint
mov b, eax
mov eax, a
mov edx, 0
div b
call writeint
mov eax,edx
call writeint
call readint
exit
main ENDP
END main