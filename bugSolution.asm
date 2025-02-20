mov ecx, some_array_length
mov eax, some_array_base_address
; Check for bounds.  some_array_length is the number of elements, not bytes
; Assume element size is 4 bytes
mov edx, [ebx]; check if ebx is within bounds
cmp edx, ecx ; compare with max index
jge error_handler ;jump if greater or equal to max index
mov esi, 0
mov eax, [eax + edx * 4] ; Access array element after bounds check
jmp next_instruction
error_handler:
; Handle out-of-bounds error appropriately
; ... error handling ...
next_instruction:
; ... rest of the program ...

;Note: Replace `some_array_length` and `some_array_base_address` with appropriate values.
;The specific error handling (`error_handler`) would depend on the needs of the application.