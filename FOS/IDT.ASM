         ;CODE32_REL
idt_info:
    dw idt_end - idt_start -1
    dd idt_start
idt_start:

 isr0:
     dw (CODE32_REL+_isr0-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr0-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr1:
     dw (CODE32_REL+_isr1-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr1-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr2:
     dw (CODE32_REL+_isr2-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr2-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr3:
     dw (CODE32_REL+_isr3-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr3-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr4:
     dw (CODE32_REL+_isr4-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr4-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr5:
     dw (CODE32_REL+_isr5-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr5-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr6:
     dw (CODE32_REL+_isr6-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr6-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr7:
     dw (CODE32_REL+_isr7-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr7-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire
 isr8:
     dw (CODE32_REL+_isr8-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr8-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr9:
     dw (CODE32_REL+_isr9-$$)&0FFFFH    ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr9-$$)>>16       ; Highers 16Bits of the adress to jump to on interrupt fire

 isr10:
     dw (CODE32_REL+_isr10-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr10-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr11:
     dw (CODE32_REL+_isr11-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr11-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr12:
     dw (CODE32_REL+_isr12-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr12-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr13:
     dw (CODE32_REL+_isr13-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr13-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr14:
     dw (CODE32_REL+_isr14-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr14-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr15:
     dw (CODE32_REL+_isr15-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr15-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr16:
     dw (CODE32_REL+_isr16-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr16-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr17:
     dw (CODE32_REL+_isr17-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr17-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire
 isr18:
     dw (CODE32_REL+_isr18-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr18-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr19:
     dw (CODE32_REL+_isr19-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr19-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr20:
     dw (CODE32_REL+_isr20-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr20-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr21:
     dw (CODE32_REL+_isr21-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr21-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr22:
     dw (CODE32_REL+_isr22-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr22-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr23:
     dw (CODE32_REL+_isr23-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr23-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr24:
     dw (CODE32_REL+_isr24-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr24-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr25:
     dw (CODE32_REL+_isr25-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr25-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr26:
     dw (CODE32_REL+_isr26-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr26-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr27:
     dw (CODE32_REL+_isr27-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr27-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr28:
     dw (CODE32_REL+_isr28-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr28-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr29:
     dw (CODE32_REL+_isr29-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr29-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr30:
     dw (CODE32_REL+_isr30-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr30-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr31:
     dw (CODE32_REL+_isr31-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr31-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr32:
     dw (CODE32_REL+_isr32-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr32-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr33:
     dw (CODE32_REL+_isr33-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr33-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr34:
     dw (CODE32_REL+_isr34-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr34-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr35:
     dw (CODE32_REL+_isr35-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr35-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr36:
     dw (CODE32_REL+_isr36-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr36-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr37:
     dw (CODE32_REL+_isr37-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr37-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr38:
     dw (CODE32_REL+_isr38-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr38-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr39:
     dw (CODE32_REL+_isr39-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr39-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr40:
     dw (CODE32_REL+_isr40-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr40-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr41:
     dw (CODE32_REL+_isr41-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr41-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr42:
     dw (CODE32_REL+_isr42-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr42-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr43:
     dw (CODE32_REL+_isr43-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr43-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr44:
     dw (CODE32_REL+_isr44-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr44-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr45:
     dw (CODE32_REL+_isr45-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr45-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr46:
     dw (CODE32_REL+_isr46-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr46-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr47:
     dw (CODE32_REL+_isr47-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     db 00000H                          ; Always 0
     db 0008EH                          ; Flags
     dw (CODE32_REL+_isr47-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr48:
     dw (CODE32_REL+_isr48-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr48-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr49:
     dw (CODE32_REL+_isr49-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr49-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr50:
     dw (CODE32_REL+_isr50-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr50-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr51:
     dw (CODE32_REL+_isr51-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr51-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr52:
     dw (CODE32_REL+_isr52-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr52-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr53:
     dw (CODE32_REL+_isr53-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr53-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr54:
     dw (CODE32_REL+_isr54-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr54-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr55:
     dw (CODE32_REL+_isr55-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr55-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr56:
     dw (CODE32_REL+_isr56-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr56-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr57:
     dw (CODE32_REL+_isr57-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr57-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr58:
     dw (CODE32_REL+_isr58-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr58-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr59:
     dw (CODE32_REL+_isr59-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr59-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr60:
     dw (CODE32_REL+_isr60-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr60-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr61:
     dw (CODE32_REL+_isr61-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr61-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr62:
     dw (CODE32_REL+_isr62-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr62-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr63:
     dw (CODE32_REL+_isr63-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr63-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 isr64:
     dw (CODE32_REL+_isr64-$$)&0FFFFH   ; Lower 16Bits of the adress to jump to on interrupt fire
     dw 00008H                          ; Kernel Segment Selector
     dw 00000H                          ; Always 0
     dw 08E00H                          ; Flags
     dw (CODE32_REL+_isr64-$$)>>16      ; Highers 16Bits of the adress to jump to on interrupt fire

 ;ISR64 TO THE GOAL

 ;isr0:
 ;    dw isr0           ; Base Low
 ;    dw 00008H         ; ISR Segment Selector
 ;    db 00000H         ; Always 0
 ;    db 10101110B      ; Flags   0
 ;    dw 00000H         ; Base High
 ;irq0:
 ;    dw _irq0
 ;    dw 00008H
 ;    db 00000H
 ;    db 10101110B
 ;    dw 00000H
 ;irq1:
 ;    dw _irq1
 ;    dw 00008H
 ;    db 00000H
 ;    db 10101110B
 ;    dw 00000H
idt_end:
pic_remap: ; IBM Fucked Up
    MOV AL,00011H              ;
    OUT 00020H,AL              ; Initialize ICW1
    MOV AL,00011H              ;
    OUT 000A0H,AL              ; Cont.

    MOV AL,00030H              ; Where We Sendin Da PIC To
    OUT 00021H,AL              ; Reinitialize ICW2
    MOV AL,00038H              ;
    OUT 000A1H,AL              ; Cont.

    MOV AL,00004H              ;
    OUT 00021H,AL              ; Reinitialize ICW3
    MOV AL,00002H              ;
    OUT 000A1H,AL              ; Cont.

    MOV AL,00001H              ;
    OUT 00021H,AL              ; Reinitialize ICW4
    MOV AL,00001H              ;
    OUT 000A1H,AL              ; Cont.

    ;MOV AL,00000H              ;
    ;OUT 00021H,AL              ; Enable Interrupts
    ;MOV AL,00000H              ;
    ;OUT 000A1H,AL              ; Cont.

    ;MOV AL,000AEH              ;
    ;OUT 00021H,AL              ; Enable Interrupts
    ;MOV AL,000AEH              ;
    ;OUT 000A1H,AL              ; Cont.

    MOV AL,10111111B           ;
    ;MOV AL,000BFH
    OUT 00021H,AL              ; Disable Interrupts
    MOV AL,000FFH              ;
    OUT 000A1H,AL              ; Cont.
	
	
    ;OUT $00011H,$00020H          ; Reinitialize ICW1
    ;OUT $00011H,$000A0H          ; Cont.
    ;OUT $00020H,$00021H          ; Reinitialize ICW2
    ;OUT $00028H,$000A1H          ; Cont.
    ;OUT $00004H,$00021H          ; Reinitialize ICW3
    ;OUT $00002H,$000A1H          ; Cont.
    ;OUT $00001H,$00021H          ; Reinitialize ICW4
    ;OUT $00001H,$000A1H          ; Cont.
    ;OUT $00000H,$00021H
    ;OUT $00000H,$000A1H
    ;OUTB 000FFH,00021H          ; Mask Interrupts
    ;OUTB 000FFH,000A1H          ; Cont.
    RET
;pic_eoi: ;AH=00001H for if issued from PIC2, EOI needs to be sent to PIC1 either way
;    ;PUSH AL
;    CMP AL,00001H               ; Prepare To Skip Sending EOI to PIC2 if AL is 0H
;    JL .sendPIC1                ; Jump If not issued from PIC2
;    MOV AL,00020H
;    OUT 00020H,AL
;    ;OUT $00020H,$00020H          ; Send End Of Interrupt to the PIC2
;    .sendPIC1: ; SubFunc for skipping sending EOI to PIC2
;        MOV AL,00020H
;        OUT 000A0H,AL
;        ;OUT $000A0H,$00020H      ; Send End Of Interrupt to the PIC1
;    ;POP AL
;    RET

_isr32: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 32        ; Keep Stack Uniform
    jmp isr_common      ; Goto The ISR Common
_isr33: ; FOS Standard Interrupt
    cli
    push byte 0
    push byte 33
    jmp isr_common
_isr34: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 34
    jmp isr_common
_isr35: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 35
    jmp isr_common
_isr36: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 36
    jmp isr_common
_isr37: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 37
    jmp isr_common
_isr38: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 38
    jmp isr_common

_isr39: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 39
    jmp isr_common

_isr40: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 40        ; Keep Stack Uniform
    jmp isr_common      ; Goto The ISR Common

_isr41: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 41        ; Keep Stack Uniform
    jmp isr_common      ; Goto The ISR Common

_isr42: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0         ; Dummy Error Code
    push byte 42        ; Keep Stack Uniform
    ;mov esi,D0001
    jmp isr_common      ; Goto The ISR Common

_isr43: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 43
    jmp isr_common
_isr44: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 44
    jmp isr_common
_isr45: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 45
    jmp isr_common
_isr46: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 46
    jmp isr_common
_isr47: ; FOS Reserved
    cli                 ; Disable Interrupts
    push byte 0
    push byte 47
    jmp isr_common
isr_common:             ; ISR Common Handler
    ;pusha               ; Push All
    ;push ds             ; Push DS
    ;push es             ; Push ES
    ;push fs             ; Push FS
    ;push gs             ; Push GS
    mov ah, 0x57
    mov esi,D0000       ; ESI = address of string to print
    mov edi,VIDEOMEM    ; EDI = base address of video memory
    CALL PRINTSTRING
    ;CALL INTERRUPT_HANDLER

    ;pop eax             ; Pop EAX
    ;pop gs              ; Pop GS
    ;pop fs              ; Pop FS
    ;pop es              ; Pop ES
    ;pop ds              ; Pop DS
    ;popa                ; Pop All
    ;add esp,8           ;
	add esp, 2
    sti
    iret                ; Exit Interrupt
    ;ret
;_irq1:
;    cli
;    MOV ESI,D0001
;    CALL PRINTSTRING
;    sti
;    iret
