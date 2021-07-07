;
;  screen.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/27/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on
        mcopy global.macros
        keep global


screen start
        using globalData
        using screenData
        using colorData


; fills the room buffer with the background color
eraseRoom entry

        ldy #COLOR_LTGRAY

        lda #0
        sta rowCounter

fillVLoop anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda #0
        sta columnCounter

fillHLoop anop
        lda rowAddress
        clc
        adc columnCounter
        tax

        tya

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord
        eraseBackgroundWord

fillRowDone anop
        inc rowCounter
        lda rowCounter
        cmp #199
        beq fillDone
        jmp fillVLoop

fillDone anop
        rts


blitRoom entry

        lda #0
        sta rowCounter

blitVLoop anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

blitHLoop anop
        lda rowAddress
        tax

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord
        blitBackgroundWord

blitRowDone anop
        inc rowCounter
        lda rowCounter
        cmp #199
        beq blitDone
        jmp blitVLoop

blitDone anop
        rts



drawBackgroundRectChunk entry

        lda rectX
        lsr a
        sta rectX

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

        sta >BACKGROUND_ADDR,x

        inx
        sta >BACKGROUND_ADDR,x

        inx
        sta >BACKGROUND_ADDR,x

nextRow1 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone1
        bra fillLoop1
fillDone1 anop
        rts


drawBackgroundRectThin entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

fillLoop1b anop
        lda rowCounter
        clc
        adc rectY

; bounds check
        bmi nextRow1b
        cmp #199
        bcs nextRow1b

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda rectColor

        sta >BACKGROUND_ADDR,x

nextRow1b anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone1b
        bra fillLoop1b
fillDone1b anop
        rts



drawSpriteRect entry


;        phd

        setR1W1
        lda #$2000
        tcd


;        lda #$0000
;        tcd
;        jsl setR0W0

;        pld

;        rts



        ldy rectColor

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

fillVLoop2 anop
        lda rowCounter
        clc
        adc rectY

; bounds check
;        bmi nextRow2
;        cmp #199
;        bcs nextRow2

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda rectWidth
        sta columnCounter

fillHLoop2 anop

        tya

;        sta >SCREEN_ADDR,x

        sta <00,x
        inx
        inx

;        sta <00,x
;       inx
;       inx


;        sta >SCREEN_ADDR,x
;
;        inx
;        inx

; bounds check
;        lda rectX
;        clc
;        adc rectWidth
;        cmp #159
;        bcs nextRow2


        dec columnCounter
        dec columnCounter
;        dec columnCounter
;       dec columnCounter

        lda columnCounter
        bmi nextRow2
        bra fillHLoop2

nextRow2 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone2
        bra fillVLoop2

fillDone2 anop


        lda #$0000
       tcd
;       jsl setR0W0

        setR0W0


        rts



eraseSpriteRect entry

;        phd                     ; save the assigned direct page

        setR0W1
        lda #$2000
        tcd


        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

eraseVLoop2 anop
        lda rowCounter
        clc
        adc rectY

; bounds check
;        bmi nextRow2
;        cmp #199
;        bcs nextRow2

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda rectWidth
        sta columnCounter

eraseHLoop2 anop

        lda <00,x
        sta <00,x

        inx
        inx

;        lda <00,x
;       sta <00,x
;
;       inx
;       inx


; bounds check
;        lda rectX
;        clc
;        adc rectWidth
;        cmp #159
;        bcs nextRow2


        dec columnCounter
        dec columnCounter
;        dec columnCounter
;       dec columnCounter

        lda columnCounter
        bmi nextRow3
        jmp eraseHLoop2

nextRow3 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq eraseDone2
        bra eraseVLoop2

eraseDone2 anop

        lda #$0000
        tcd

        setR0W0
;        pld                     ; restore the direct page

        rts



columnCounter dc i2'0'
rowCounter dc i2'0'
rowOffset dc i4'0'
offset dc i4'0'
rowAddress dc i4'0'

savex dc i2'0'

        end


screenData data

rectX dc i2'0'
rectY dc i2'0'
rectWidth dc i2'0'
rectHeight dc i2'0'
rectColor dc i2'0'

;BACKGROUND_ADDR gequ $0e0000
BACKGROUND_ADDR gequ $002000


        end
