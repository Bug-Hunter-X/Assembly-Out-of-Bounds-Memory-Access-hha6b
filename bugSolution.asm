mov ecx, [some_limit_register] ; Load limit into ecx
cmp ecx, 1000 ; Check if ecx is within bounds
jge error_handler ; Jump to error handler if out of bounds
mov eax, [ebx+4*ecx] ; Access memory if within bounds
jmp end
error_handler:
; Handle the out-of-bounds error appropriately
end: