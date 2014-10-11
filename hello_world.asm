        processor 6502
        org $1000               ; 4096
        ;; Need a counter x-register y-register and accumaltor
        ;; counter 0-register
        ldx #$00                ; Put a zero in the x registry used as a counter
loop:   lda message,x           ; Load the first letter (x) from message into the accumalator
        sta $0400,x             ; Store accumalator in 0400 (first position of the screen)+x (0 at first)...
        inx                     ; Increase the x with on (next part of message-byte).
                                ; X points to both next position on screen and the next letter from our sequence of bytes
        cpx #$04                ; Check if x is equal to end of byte (4-letters)
        bne loop                ; If not equal jump back to loop...
        rts                     ; Return from subroutine
message:                        ; A pointer to the first part of the byte
        .byte 1,12,5,24         ; Byte is A,L,E,X
