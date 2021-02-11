; EXCEPTION INTERRUPTS
; File To Hold Exceptions
; \FOS\INTEXP.ASM
; Created On FRI.NOV27,20
; Created By GL
; ################################
; -ChangeLog
;
;
_isr0: ; Divide By 0 Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 0         ; Interrupt Number
    pusha
    mov ah, 0x17
    mov esi,E0000
    call PRINTSTRING
    
    jmp exp_common      ; Goto The Common Handler

_isr1: ; Debug Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 1         ; Keep Stack Unifor
    pusha
    mov ah, 0x17
    mov esi,E0001
    call PRINTSTRING
    
    jmp exp_common      ; Goto The EXP Common

_isr2: ; Non-Maskable Interrupt Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 2         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0002
    call PRINTSTRING
    jmp exp_common      ; Goto The EXP Common

_isr3: ; BreakPoint Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 3         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0003
    call PRINTSTRING
    
    jmp exp_common      ; Goto The EXP Common

_isr4: ; OverFlow Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 4         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0004
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr5: ; Out Of Bounds Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 5         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0005
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr6: ; Invalid OpCode Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 6         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0006
    call PRINTSTRING
    
    jmp exp_common      ; Goto The EXP Common

_isr7: ; Device Not Avaliable Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 7         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0007
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr8: ; Double Fault Exception
    cli                 ; Disable Interrupts
    push byte 8         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0008
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr9: ; CoProcessor Segment Overrun Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 9         ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0009
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr10: ; Invalid TTS Exception
    cli                 ; Disable Interrupts
    push byte 10        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0010
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr11: ; Segment Not PResent Exception
    cli                 ; Disable Interrupts
    push byte 11        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0011
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr12: ; Stack-Segment Exception
    cli                 ; Disable Interrupts
    push byte 12        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0012
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr13: ; General Protection Fault Exception (Yep that one)
    cli                 ; Disable Interrupts
    push byte 13        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0013
	mov ecx,0
    call PRINTSTRING	; print error
	
	popa
	pusha
	
	mov ebx,eax
	mov ah, 0x57
	;mov ecx,10
	mov edi,80
	mov esi,ebx
	call PRINTSTRING_EX	; print EAX
	
    popa
	pusha
	
	mov ah, 0x57
	;mov ecx,10
	mov edi,160
	mov esi,ebx
	call PRINTSTRING_EX	; print EBX
	
	mov ah, 0x57
	;mov ecx,10
	mov edi,240
	mov esi,ecx
	call PRINTSTRING_EX	; print ECX
	
	mov ah, 0x57
	;mov ecx,10
	mov edi,320
	mov esi,edx
	call PRINTSTRING_EX	; print EDX
	
	popa
	add esp, 2	; Not currently handling errors ignore, on stack
	
	;jmp exp_common      ; Goto The EXP Common

_isr14: ; Page Fault Exception
    cli                 ; Disable Interrupts
    push byte 14        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0014
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr15: ; Reserved Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 15        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0015
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr16: ; x87 Floating-Point Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 16        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0016
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr17: ; Alignment Check Exception
    cli                 ; Disable Interrupts
    push byte 17        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0017
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr18: ; Machine Check Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 18        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0018
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr19: ; SIMD Floating-Point Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 19        ; Keep Stack Uniform
    pusha
    mov ah, 0x17
    mov esi,E0019
    call PRINTSTRING

    jmp exp_common      ; Goto The EXP Common

_isr20: ; Virtualization Exception
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 20        ; Keep Stack Uniform
    pusha

    jmp exp_common      ; Goto The EXP Common

_isr21: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 21        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr22: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 22        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr23: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 23        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr24: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 24        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr25: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 25        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr26: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 26        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr27: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 27        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr28: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 28        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr29: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 29        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr30: ; Security Exception
    cli                 ; Disable Interrupts
    push byte 30        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common

_isr31: ; Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 31        ; Keep Stack Uniform
    pusha
    jmp exp_common      ; Goto The EXP Common
BSOD:
    ;pusha
    mov ecx,00000H
    ;mov bl,00000H
    ;.drawloop0:
            mov ah, 0000FH
        mov esi,M0000
        call PRINTSTRING
    ;    add ecx,00050H
    ;    inc bl
    ;    cmp bl,00019H
    ;jle .drawloop0

    ;popa
    ret

exp_common: ; Exception Common Handler
    ;pusha               ; Push All
    ;push ds             ; Push DS
    ;push es             ; Push ES
    ;push fs             ; Push FS
    ;push gs             ; Push GS

    ;CALL EXCEPTION_HANDLER
    ;call BSOD
    ;exception_loop:
        ;hlt
        ;;push ah
    ;push esi
    ;mov ah, 0x17
        ;;mov esi,E00033
        ;;call PRINTSTRING
    
        ;jmp exception_loop


    ;pop gs              ; Pop GS
    ;pop fs              ; Pop FS
    ;pop es              ; Pop ES
    ;pop ds              ; Pop DS
    ;popa                ; Pop All
	;pop byte
	;pop byte
	;pop esi
	;pop ah
	popa
	pusha
	
    mov ah, 0x17
	mov ecx,2
	mov esi, eax
	;mov edi,2
    call PRINTSTRING	; print EAX
	
	popa
	
	add esp, 2	; Not currently handling errors ignore, on stack
    sti
	
    iret                ; Exit Interrupt

