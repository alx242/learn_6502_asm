        processor 6502
        org $1000               ; 4096 as usual
loop:   inc $d021               ; Inc bit data at central area
        inc $d020               ; Inc bit data at border area
        jmp loop                ; Do it again :)
