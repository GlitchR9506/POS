; BOOT\ENTRY.ASM
; Make sure C-Code is after all ASM Code.

entry:
	extern kernel_entry
	call kernel_entry
	
    .endloop:
        ;hlt
        ;nop
        ;mov ah, ah
        ;mov esi,M0000
        ;call PRINTSTRING

        ;mov ah, 0x57
        ;mov esi,M0000
        ;call PRINTSTRING
    jmp .endloop