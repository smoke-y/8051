org 00h

mov a, #00h
mov dptr, #200h
mov r0, #40h
mov r1, #5h
again: clr a
movc a, @a+dptr
mov @r0, a
inc r0
inc dptr
djnz r1, again

org 200h
db 1,2,3,4,5
end
