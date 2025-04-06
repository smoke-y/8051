org 00h

mov tmod, #01h
mov a, #0h
mov p0, a
;set timer 0 to mode 1
again:
mov tl0, #66h
mov th0, #0FCh
cpl p0.0
acall delay
sjmp again

delay:
;start timer 0
setb tr0
delay_loop: jnb tf0, delay_loop
clr tr0
clr tf0
ret
end
