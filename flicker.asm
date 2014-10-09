        processor 6502
        org $1000               ; 4096 as usual
loop:   inc $d021               ; Central area
        inc $d020               ; Border area
        jmp loop                ; Do it again :)
