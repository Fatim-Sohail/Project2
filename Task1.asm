Title: Task 1
; Name: Fatima Sohail Shaukat
; Roll no. : 2020-CE-37

;(10 - 7) * (5 + 6) * 9

INCLUDE Irvine32.inc
.data
.code

mainn PROC
 a = 10
 b = 7
 a = a - b
 x = 5
 y = 6
 x = x + y
 ;z = 9
z = a * x * 9

 mov eax, z
 ;mul eax x
 ;mul eax, a, x, z

call writeint
mov eax, edx
call writeint
call ReadInt
exit
mainn ENDP
END mainn


