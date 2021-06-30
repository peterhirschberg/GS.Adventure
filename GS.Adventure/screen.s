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
        using colorData


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
        lda #COLOR_LTGRAY
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
        sta >BACKGROUND_ADDR,x
        inc offset
        lda offset
        cmp #$7d00
        beq done
        bra loop
done anop
        rts



drawBackgroundRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

fillLoop1 anop
        lda rowCounter
        clc
        adc rectY

; bounds check
        bmi nextRow1
        cmp #199
        bcs nextRow1

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda rectColor
        sta >SCREEN_ADDR,x
        sta >BACKGROUND_ADDR,x

; bounds check
        lda rectX
        clc
        adc rectWidth
        cmp #159
        bcs nextRow1

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
        lda #COLOR_LTGRAY
        sta >SCREEN_ADDR,x
        sta >BACKGROUND_ADDR,x

nextRow1 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone1
        bra fillLoop1
fillDone1 anop
        rts


drawSpriteRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

fillLoop2 anop
        lda rowCounter
        clc
        adc rectY

; bounds check
        bmi nextRow2
        cmp #199
        bcs nextRow2

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda rectColor
        sta >SCREEN_ADDR,x

; bounds check
        lda rectX
        clc
        adc rectWidth
        cmp #159
        bcs nextRow2

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rectX
        clc
        adc rectWidth
        sta setBackgroundColumn

        jsr setBackgroundForPoint

        jsr plowScreenRow

nextRow2 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone2
        bra fillLoop2

fillDone2 anop
        rts



eraseSpriteRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

fillLoop3 anop
        lda rowCounter
        clc
        adc rectY

        bmi nextRow3
        cmp #199
        bcs nextRow3

        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rectX
        sta restoreColumn

        jsr restoreBackgroundForPoint

; bounds check
        lda rectX
        clc
        adc rectWidth
        cmp #159
        bcs nextRow3

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rectX
        clc
        adc rectWidth
        sta restoreColumn

        jsr restoreBackgroundForPoint

nextRow3 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone3
        bra fillLoop3

fillDone3 anop
        rts


; point should be in rowAddress + setBackgroundColumn
setBackgroundForPoint entry

; setBackgroundColumn
; setBackgroundColor

        lda setBackgroundColumn
        sta setBackgroundCurrentColumn

setLoop1 anop

        lda rowAddress
        clc
        adc setBackgroundCurrentColumn
        tax
        lda >BACKGROUND_ADDR,x
        cmp #0
        bne setDone1

        dec setBackgroundCurrentColumn
        lda setBackgroundCurrentColumn
        bmi setDone1
        jmp setLoop1

setDone1 anop
        sta setBackgroundColor
        lda rowAddress
        clc
        adc setBackgroundColumn
        tax
        lda setBackgroundColor
        sta >SCREEN_ADDR,x

        rts

; point should be in rowAddress + restoreColumn
restoreBackgroundForPoint entry

restoreLoop2 anop

        lda rowAddress
        clc
        adc restoreColumn
        tax
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        cmp #0
        bne restoreDone2

        dec restoreColumn
        lda restoreColumn
        bmi restoreDone2
        jmp restoreLoop2

restoreDone2 anop
        rts


; plows from rowAddress + rectX for rectWidth
plowScreenRow entry

        lda rectX
        sta plowX
        inc plowX

        clc
        adc rectWidth
        sta plowRight
        dec plowRight

plowLoop1 anop

        lda rowAddress
        clc
        adc plowX
        tax
        lda #0
        sta >SCREEN_ADDR,x

        inc plowX
        lda plowX
;        cmp #159
;        beq plowDone1
        cmp plowRight
        beq plowDone1
        jmp plowLoop1

plowDone1 anop
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

setBackgroundColumn dc i2'0'
setBackgroundColor dc i2'0'
setBackgroundCurrentColumn dc i2'0'

restoreColumn dc i2'0'

plowX dc i2'0'
plowRight dc i2'0'

savex dc i2'0'

        end


screenData data

rectX dc i2'0'
rectY dc i2'0'
rectWidth dc i2'0'
rectHeight dc i2'0'
rectColor dc i2'0'

BACKGROUND_ADDR gequ $0e0000


        end
