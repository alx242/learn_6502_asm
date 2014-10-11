        processor 6502
        org $1000               ; 4096 :)
loop:   ldx #$04                ; Put the 04 hex into x registry
        stx $d021               ; Pull data from x into d021 (center area)
        inx                     ; Inc data in x
        stx $d020               ; Pull data from x into d020 (border area)
        jmp loop
