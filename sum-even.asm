include irvine32.inc
.data
Array SWORD 2, 4, -1, 6, -3, 8, -5
msg db "Total sum of even values:", 0
msg1 db "Count of even values:", 0
; array and other variables declaration here

.code
main proc


;code here
mov eax, 0        
    mov ebx, 0        
    mov esi, OFFSET Array 
    mov ecx, LengthOf Array 

Next:
    movsx edx, WORD PTR [esi] 
    test edx, 1 
    jnz Evenpass 
    add eax, edx 
    inc ebx 
Evenpass:
    add esi, TYPE Array 
    loop Next 

    mov edx, OFFSET msg 
    call writestring
    movsx eax, ax 
    call writeint 
    call crlf

    mov edx, OFFSET msg1 
    call writestring
    mov eax, ebx 
    call writedec 
    call crlf


exit
main endp

end main