; testPrint.asm

VIDEOMEM    EQU 0x0b8000
PRINTSTRING_EX: ;ECX=Place To Start Print, ESI=String To Print, AH as attributes
    push ecx            ; ECX is modifed, so PUSH it
	push ebx
	push edi
    mov ebx,VIDEOMEM
    
	;xor ecx,ecx         ; ECX = 0 current video offset
    
    jmp .loopentry
    .printloop:
		mov ebx,edi
		imul ebx,2
		add ebx,VIDEOMEM
        mov [ebx+ecx*2],ax  ; Copy attr and character to display
        inc ecx             ; Next word position
    .loopentry:
        mov al,[esi+ecx]    ; Get next character to print
        test al,al
        jnz .printloop      ; If it's not NUL continue
    .endprint:
        pop edi
		pop ebx
		pop ecx
    ret