; Video Graphics Array
; \INC\VGA.ASM
; VGA Functions (setpixel, print, pchar, and any other graphical functions)
; Created On TUE.NOV24,20 ~7:36
; Created by GL
; ###########################
; -ChangeLog
;
;

PRINTCHAR:



RET

PRINTSTRING: ;ECX=Place To Start Print, ESI=String To Print, AH as attributes
    mov edi,VIDEOMEM
    push ecx            ; ECX is modifed, so PUSH it
    ;xor ecx,ecx         ; ECX = 0 current video offset
    
    jmp .loopentry
    .printloop:
        mov [edi+ecx*2],ax  ; Copy attr and character to display
        inc ecx             ; Next word position
    .loopentry:
        mov al,[esi+ecx]    ; Get next character to print
        test al,al
        jnz .printloop      ; If it's not NUL continue
    .endprint:
        pop ecx
    ret
PLOTPIXEL:



RET

