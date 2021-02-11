;
;
;
;

_isr48: ; PIC IRQ0
    ;cli                 ; Disable Interrupts
    push byte 0
    push byte 48
    ;pusha



    call pic1_eoi
    ;popa
    ;sti
    iret
_isr49: ; PIC IRQ1
    ;pusha
    ;popa

    mov ah, 0x57
    mov esi,D0002
    call PRINTSTRING
	
    push byte 0
    push byte 50
    call pic1_eoi
	sti
	
	;iret
    ;;cli                 ; Disable Interrupts
    ;pusha


    
    ;push byte 0
    ;push byte 49

    ;;in eax,00060H
    ;mov ebx,eax
    ;mov ah, 0x57
    ;;mov esi,eax
    ;;mov [VIDEOMEM],ESI
    ;mov [VIDEOMEM],1
    ;call PRINTSTRING

    ;mov ah, 0x57
    ;mov esi,D0002
    ;call PRINTSTRING
    
    ;;call pic1_eoi

    ;popa
    ;sti
    ;;iret
_isr50: ; PIC IRQ2
    ;;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0003
    call PRINTSTRING
    

    push byte 0
    push byte 50
    call pic1_eoi
    popa
    ;sti
    iret
_isr51: ; PIC IRQ3
    ;;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0004
    call PRINTSTRING
    
    
    push byte 0
    push byte 51
    call pic1_eoi
    popa
    ;sti
    iret
_isr52: ; PIC IRQ4
    ;;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0005
    call PRINTSTRING
    
    
    push byte 0
    push byte 52
    call pic1_eoi
    popa
    ;sti
    iret
_isr53: ; PIC IRQ5
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0006
    call PRINTSTRING
    

    push byte 0
    push byte 53
    call pic1_eoi
    popa
    ;sti
    iret
_isr54: ; PIC IRQ6
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0007
    call PRINTSTRING
    
    
    push byte 0
    push byte 54
    call pic1_eoi
    popa
    ;sti
    iret
_isr55: ; PIC IRQ7
    ;cli                 ; Disable Interrupts
    pusha

    ;mov ah, 0x57
    ;mov esi,D0008
    ;call PRINTSTRING
    
    
    push byte 0
    push byte 55
    call pic1_eoi
    popa
    ;sti
    iret
_isr56: ; PIC IRQ8
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0009
    call PRINTSTRING
    
    
    push byte 0
    push byte 56
    call pic1_eoi
    popa
    ;sti
    iret
_isr57: ; PIC IRQ9
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0010
    call PRINTSTRING
    
    push byte 0
    push byte 57
    call pic2_eoi
    popa
    ;sti
    iret
_isr58: ; PIC IRQ10
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0011
    call PRINTSTRING
    
    push byte 0
    push byte 59
    call pic2_eoi
    popa
    ;sti
    iret
_isr59: ; PIC IRQ11
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0012
    call PRINTSTRING
    
    push byte 0
    push byte 59
    call pic2_eoi
    popa
    ;sti
    iret
_isr60: ; PIC IRQ12
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0013
    call PRINTSTRING
    
    push byte 0
    push byte 60
    call pic2_eoi
    popa
    ;sti
    iret
_isr61: ; PIC IRQ13
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0014
    call PRINTSTRING
    
    push byte 0
    push byte 61
    call pic2_eoi
    popa
    ;sti
    iret
_isr62: ; PIC IRQ14
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0015
    call PRINTSTRING
    
    push byte 0
    push byte 62
    call pic2_eoi
    popa
    ;sti
    iret
_isr63: ; PIC IRQ15
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0016
    call PRINTSTRING
    
    push byte 0
    push byte 63
    call pic2_eoi
    popa
    ;sti
    iret
_isr64: ; PIC IRQ16
    ;cli                 ; Disable Interrupts
    pusha

    mov ah, 0x57
    mov esi,D0017
    call PRINTSTRING
    
    push byte 0
    push byte 64
    call pic2_eoi
    popa
    ;sti
    iret

pic1_eoi:

	add esp, 2
    MOV AL,00020H
    OUT 00020H,AL
    ;sti
    ret
pic2_eoi:

	add esp, 2
    MOV AL,00020H
    OUT 00020H,AL
    MOV AL,00020H
    OUT 000A0H,AL
    ;sti
    ret
