        processor 6502
        org $1000               ; 4096 :)
loop:   ldx #$04                ; Put the 04 hex into a registry
        stx $d021               ; Pull data from sta into d021 (center area)
        inx
        stx $d020               ; Pull data from sta into d020 (border area)
        jmp loop
