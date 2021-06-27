;
;  screen.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/27/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

screen start
        using globalData
        using screenData


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
        lda #0
        sta rowCounter
fillLoop1 anop
        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda rectColor
        sta >SCREEN_ADDR,x

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        clc
        adc rectWidth
        tax
; background color here
        lda #$22
        sta >SCREEN_ADDR,x

        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone1
        bra fillLoop1
fillDone1 anop
        rts


eraseRect entry
        lda #0
        sta rowCounter
fillLoop2 anop
        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda #$00
        sta >SCREEN_ADDR,x

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        clc
        adc rectWidth
        tax
        lda #$00
        sta >SCREEN_ADDR,x

        inc rowCounter
        lda rowCounter
        cmp rectHeight
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
rowAddress dc i4'0'

        end

screenData data

rectX dc i2'0'
rectY dc i2'0'
rectWidth dc i2'0'
rectHeight dc i2'0'
rectColor dc i2'0'


        end
