include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
print "Najmus sakib"
printn
printn
print "enter number 1: "
mov ah,1
int 21h
mov bl,al
mov cl,al
; print new line
mov ah,2

mov dl,10
int 33
mov dl,13
int 21h
print "enter number 2: "
mov ah,1
int 21h
mov bh,al
;addition
add bl,bh
sub bl,30h
; print new line
mov ah,2
mov dl,10
int 33
mov dl,13
int 21h
;print result
print "sum of the two number: "
mov ah,2

mov dl,bl
int 21h
mov bl,cl
;substraction
sub cl,bh
add cl,30h
; print new line
mov ah,2
mov dl,10
int 33
mov dl,13
int 21h
;print result
print "substraction of the two number: "
mov ah,2
mov dl,cl
int 21h
mov dh,bl
; multiplication
sub bl,30h

sub bh,30h
mov ax,0
mov al,bl
mul bh ; al=bh*al
add al,30h
mov bl,al
;print new line
mov ah,2
mov dl,10
int 33
mov dl,13
int 21h
;print result
print "multiplication two number: "
mov ah,2
mov dl,bl
int 21h
; multiplication Get Quotent
mov ax,0
mov al,dh

div bh ; al=al/bh
add al,30h
mov bl,al
; multiplication Get remainder
add ah,30h
mov bh,ah
;print new line
mov ah,2
mov dl,10
int 33
mov dl,13
int 21h
;print result get quotent
print "division get quotent two number: "
mov ah,2
mov dl,bl
int 21h
printn
;print result get remainder
print "division get remainder two number: "

mov ah,2
mov dl,bh
int 21h
main endp
end main