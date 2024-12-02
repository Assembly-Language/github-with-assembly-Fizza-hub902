include irvine32.inc
.data

; array and other variables declaration here
Array SWORD 5, 10, -15, 7, -6, -4, -3
msg db "Total sum of positive values:", 0
msg1 db "Count of positive values:", 0
.code
main proc


;code here
mov eax, 0
mov ebx, 0
mov esi, OFFSET Array
mov ecx, LengthOf Array
Next:
cmp WORD PTR [esi], 0
jle pass
add ax, WORD PTR [esi]
inc ebx
pass:
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