org 00h

clr p3.1  ;p3.1 is txd pin(active low)
mov tmod, #02h
;BAUD RATE
;1200 -> -24
;2400 -> -12
;4800 -> -6
;9600 -> -3
mov th0,  #-6
;start timer 1(auto-reload mode)
setb tr0
again: mov sbuf, #50h
here: jnb ti, here
clr ti
sjmp again
end
