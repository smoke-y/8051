org 00h

;add
mov a,  #05h
mov r0, #04h
add a, r0

;sub
subb a, r0

;mul
mov a, #05h
mov b, #05h
mul ab

;div
mov a, #05h
mov b, #05h
div ab

;add with carry
mov a,  #92h
mov r0, #23h
mov r7, #0h
add a, r0
jnc l1
inc r7
l1: mov r0, #87h
add a, r0
jnc l2
inc r7
l2: mov r0, #0F5h
add a, r0
jnc l4
inc r7
l4: mov r0, #66h
add a, r0
jnc l5
inc r7
l5:
end
