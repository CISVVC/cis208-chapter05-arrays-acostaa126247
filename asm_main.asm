; 
; File: asm_main.asm
; Name: Angel Acosta
; Email: acostaa126247@student.vvc.edu
; Description: Multiply each element in the array.
%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data


array dw 1,2,3,4,5

; uninitialized data is put in the .bss segment
;
segment .bss

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
; *********** Start  Assignment Code *******************


	xor eax, eax
	mov dl, 5
	mov ebx, array
	mov ecx, 5
LOOP1:
	mov al, [ebx]
	imul dl
	call print_int
	call print_nl
	add ebx, 2
	loop LOOP1
NEXT:

; *********** End Assignment Code **********************

        popa
        mov     eax, 0       ; return back to the C program
        leave                     
        ret


