
    .org $8000
reset:      ; Starting the 6502 at address 8000
    lda #$ff
    sta $6002
loop:       ; Making the leds blick.
    lda #$55
    sta $6000

    lda #$aa
    sta $6000

    jmp loop

    .org $fffc
    .word reset
    .word $0000