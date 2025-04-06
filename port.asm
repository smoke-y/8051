org 00h
mov a, #55h
mov p0, #0h  ;mark p0 as output
again: mov p1, a
cpl p1.2
acall delay
cpl a
sjmp again

;8051 runs at 11.0592MHz and takes 12 clock cycles to execute
;1 instruction. Hence, 1 cpu cycle takes 12/11.059*10^6 = 1.085 micro seconds
;This delay waits for 200 * 1.085 micro seconds without instruction overhead
delay:
mov r3, #200
here: djnz r3, here
ret
end
