; BOOT.ASM
; Created on SUN.NOV22,20
; Created by GL
; #########################
; -Changelog
;
;
;
;org 100h

;MOV AX, 00013H
;INT 00010H
;bits 16

;CALL ENTER_MODE_PROTECT32

PROTECTMODESTART:
;bits 32

MOV AX, 0A000H
MOV ES, AX

MOV AH,01H

MOV [ES:EDI],AH

FILLSCRN_0:
   MOV AX, 0A000H
   MOV ES, AX
   MOV EDI,00000H
   FILLSCRN_1:
      MOV AH, 000001H
      FILLSCRN_2:

         MOV [ES:EDI],AH
         INC AL
         INC EDI
         CMP AL, 0000FH
         JGE FILLSCRN_1
         ;64000
         CMP EDI,64000
         JGE FILLSCRN_0
         JMP FILLSCRN_2



;%include "prot.asm"


