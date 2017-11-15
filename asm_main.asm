;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
        syswrite: equ 4
        stdout: equ 1
        exit: equ 1
        SUCCESS: equ 0
        kernelcall: equ 80h

array: dw 1,2,3,4,5
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

	



	mov eax, array
	mov ebx, [eax]
	push ebp
	mov ebp, esp
	


FIRST:


SEC:
	inc edi
		






end:


; *********** End Assignment Code **********************

        popa
        mov     eax, SUCCESS       ; return back to the C program
        leave                     
        ret


