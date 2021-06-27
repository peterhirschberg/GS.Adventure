;
;  game.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/19/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

game start
        using globalData


initGame entry
        jsr setupScreen
        jsr initColorTable
        jsr zeroScreen
        jsr initSCB
        jsr fillScreen
        rtl

runGameTick entry

        jsr eraseRect

        lda left
        sta oldLeft


        lda left
        clc
        adc dir
        clc
        adc dir
        sta left

        jsr drawRect

        lda left
        cmp #100
        beq flip
        cmp #10
        beq flip
        rtl

flip anop
        lda dir
        cmp #1
        beq flipNeg
        lda #1
        sta dir
        rtl

flipNeg anop
        lda #-1
        sta dir
        rtl




; Set the SCB to fill mode for all 200 screen rows
initSCB entry
        lda #0
        sta rowCounter
        ldx #0
initLoop anop
        lda >SCB_BASE,x
        ora #FILL_MODE
        sta >SCB_BASE,x
        inc rowCounter
        lda rowCounter
        cmp #199
        beq initDone
        inx
        jmp initLoop
initDone anop
        rts



; fills the screen with the background color using fill mode
fillScreen entry
        lda #0
        sta rowCounter
fillLoop anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        tax
        lda #$22
        sta >SCREEN_ADDR,x
        inc rowCounter
        lda rowCounter
        cmp #199
        beq fillDone
        bra fillLoop
fillDone anop
        rts



; set all pixels to 0
zeroScreen entry
        lda #0
        sta offset
loop anop
        tax
        lda #$00
        sta >SCREEN_ADDR,x
        inc offset
        lda offset
        cmp #$7d00
        beq done
        bra loop
done anop
        rts




drawRect entry
        lda #50
        sta rowCounter
fillLoop1 anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc left
        tax
        lda #$88
        sta >SCREEN_ADDR,x

        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc left
        clc
        adc #25
        tax
        lda #$22
        sta >SCREEN_ADDR,x

        inc rowCounter
        lda rowCounter
        cmp #100
        beq fillDone1
        bra fillLoop1
fillDone1 anop
        rts


eraseRect entry
        lda #50
        sta rowCounter
fillLoop2 anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc oldLeft
        tax
        lda #$00
        sta >SCREEN_ADDR,x

        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc oldLeft
        clc
        adc #25
        tax
        lda #$00
        sta >SCREEN_ADDR,x

        inc rowCounter
        lda rowCounter
        cmp #100
        beq fillDone2
        bra fillLoop2
fillDone2 anop
        rts


; sets all pixels to 0
zeroScreen2 entry
        lda #199
        sta rowCounter

zeroRowLoop anop

        ldx rowCounter
        lda screenRowOffsets,x
        sta rowOffset

        lda #319
        sta columnCounter

zeroColumnLoop anop

        lda rowOffset
        clc
        adc columnCounter
        tax

        lda #$ff
        sta >SCREEN_ADDR,x

        dec columnCounter

        lda columnCounter
        bmi zeroColumnDone
        jmp zeroColumnLoop

zeroColumnDone anop

        dec rowCounter
        lda rowCounter
        bmi zeroDone
        jmp zeroRowLoop

zeroDone anop
        rts


; Credit for the code below goes to Jeremy Rand - author of BuGS

setupScreen entry

        lda >BORDER_COLOR_REGISTER
        and #$f0
        sta >BORDER_COLOR_REGISTER

        sei
        phd
        tsc
        sta backupStack
        lda >STATE_REGISTER      ; Direct Page and Stack in Bank 01/
        ora #$0030
        sta >STATE_REGISTER
        ldx #$0000

        lda #$9dfe
        tcs
        ldy #$7e00
nextWord anop
        phx
        dey
        dey
        bpl nextWord

        lda >STATE_REGISTER
        and #$ffcf
        sta >STATE_REGISTER
        lda backupStack
        tcs
        pld
        cli

        rts

backupStack     dc i2'0'

columnCounter dc i2'0'
rowCounter dc i2'0'
rowOffset dc i4'0'
offset dc i4'0'

left dc i2'50'
dir dc i2'1'
oldLeft dc i2'50'

        end
