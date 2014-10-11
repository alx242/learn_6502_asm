        processor 6502
        org $1000
        ;; Screen memory is 0400 - 0800. 8 sprites are possible on the c64.
        ;;
        ;; The 8 possible sprite pointers are 07f8, 07f9 079a to 079ff
        ;; These pointers will say where in the memory the sprites
        ;; actually are.
        ;;
        ;; One sprite is 64 bytes of data which is 40 in hex. If we
        ;; want the sprite to be at a specific memory location (say $2000)
        ;; we calculate the pointer value to be 40 * X = 2000 in hex, X = 80.

loop:   lda #$80                ; Sprite location is $2000
        sta $07f8               ; Store this in the first sprite pointer
        ;; The sprites needs to be turned on using binary switch of 1
        ;; byte (8 bits,1 bit per sprite).
        lda #$01                ; First bit can be written as #%00000001 in binary
        sta $d015               ; The viewing of the bits is controlled at $d015
        ;; Coordinate system is at $d000 for X and $d001 for Y, next
        ;; sprite is $d002 etc...
        lda #$a0                ; 160
        sta $d000
        lda #$64                ; 100
        sta $d001
        jmp loop

* = $2000                       ; Load the sprite at $2000 as mentioned above...
        incbin "sprite1.spr"
