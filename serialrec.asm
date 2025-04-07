org 00h
mov tmod, #02h
mov th1, #-6
setb tr1
here: jnb ri, here
mov a, sbuf
mov p1, a
clr ri
end
