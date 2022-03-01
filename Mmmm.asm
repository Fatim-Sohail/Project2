Include Irvine32.inc

; .model small ;specify small memory model
;ASCI codes
BS equ 08h
ESCP equ 1bh
WS equ 20h
;Dimensions of editing area
COLUMNS equ 40
ROWS equ 10
MAX_X equ COLUMNS-1
MAX_Y equ ROWS-1 
.stack 200h ;specify a stack size of 512 bytes
.data
 cursor_x db 0 ;cursor horizontal position
 cursor_y db 0 ;cursor vertical position
.code
start:
 mov ax,@data ;set-up ds to be able to access our data
 mov ds,ax
 ;Use BIOS interrupt 10h, Service 06h to scroll window up
 ;this creates a clear screen effect
 ;also set-up colors (blue background & red text)
 mov ax,0600h
 mov bh,1ch
 mov cx,0
 mov dx,184fh
 int 10h

set_cursor:
 ;Use BIOS interrupt 10h, Service 02h to position cursor
 mov ah,02h
 mov dl,cursor_x
 mov dh,cursor_y
 mov bh,0
 int 10h

read_key:
 ;Use BIOS interrupt 16h, Service 00h to read keyboard
 ;(returns ASCII code in al)
 mov ah,0
 int 16h

 ;TODO: Step #4 here

 ;TODO: Step #5 here

 ;Use BIOS interrupt 10h, service 0ah to print character
 ;at current cursor position
 mov ah,0ah
 mov cx,1
 mov bh,0
 int 10h
 ;TODO: Step #6 here

 ;TODO: Step #7 here

move_down:

 ;TODO: Step #8 here

 ;TODO: Step #9 here

backspace:

;TODO: Step #10 here

 ;TODO: Step #11 here

move_up:

 ;TODO: Step #12 here

 ;TODO: Step #13 here
erase:
 ;Use BIOS interrupt 10h, Service 02h to position cursor
 mov ah,02h
 mov dl,cursor_x
 mov dh,cursor_y
 mov bh,0
 int 10h
 ;Use BIOS interrupt 10h, service 0ah to print whitespace
 ;at current cursor position (erase)
mov ah,0ah
 mov al,WS
 mov cx,1
 int 10h
 jmp read_key
exit
 ;Use DOS interrupt 21h, service 4ch to exit program
 mov ax,4c00h
 int 21h

end start 