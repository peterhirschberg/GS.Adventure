;
;  surround.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/6/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


surround start
        using globalData
        using screenData
        using playerData
        using roomsData
        using surroundData


checkSurroundDrawDirty entry

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY


        lda rectX
        cmp surroundOldX
        beq checkDrawY
        lda #1
        sta surroundDrawDirty

checkDrawY anop

        lda rectY
        cmp surroundOldY
        beq checkDone1
        lda #1
        sta surroundDrawDirty

checkDone1 anop

        rts



checkSurroundEraseDirty entry

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY


        lda rectX
        cmp surroundX
        beq checkEraseY
        lda #1
        sta surroundEraseDirty

checkEraseY anop

        lda rectY
        cmp surroundY
        beq checkDone2
        lda #1
        sta surroundEraseDirty

checkDone2 anop

        rts





drawSurround entry

        jsr roomHasFog
        cmp #1
        beq hasFog1
        rts

hasFog1 anop

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX
        sta surroundX


        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY
        sta surroundY


        jsr checkSurroundDrawDirty
        lda surroundDrawDirty
        cmp #1
        beq startDraw
        rts

startDraw anop

; --------------------------------------

        lda rectY
        bmi drawMinusY
        cmp #$76
        bcs drawPositiveY
        bra drawOkayY

drawMinusY anop
        stz rectY
        stz surroundY
        bra drawOkayY

drawPositiveY anop
        lda #$76
        sta rectY
        sta surroundY

drawOkayY anop

        jsl drawSurroundSprite
        jmp drawDone

; --------------------------------------

        lda playerX
        cmp playerOldX
        beq checkY
        bcs drawRight
        bra drawLeft

drawLeft anop
        jsr drawSurroundLeft
        jsr drawSurroundTop
        jsr drawSurroundBottom
        bra drawDone

drawRight anop
        jsr drawSurroundRight
        jsr drawSurroundTop
        jsr drawSurroundBottom
        bra drawDone

checkY anop

        lda playerY
        cmp playerOldY
        beq drawDone
        bcs drawBottom
        bra drawTop

drawBottom anop
        jsr drawSurroundBottom
        jsr drawSurroundLeft
        jsr drawSurroundRight
        bra drawDone

drawTop anop
        jsr drawSurroundTop
        jsr drawSurroundLeft
        jsr drawSurroundRight

drawDone anop

; --------------------------------------

        lda surroundOldX
;---------------
;        sec
;        sbc #16

;        bmi isMinus
;       bra notMinus
;
;isMinus anop

;        lda #0

;notMinus anop

;---------------
        sta eraseX

        lda surroundOldY
        sta eraseY


        lda surroundX
        sta surroundOldX
        lda surroundY
        sta surroundOldY

        stz surroundDrawDirty

noDrawDone anop

        rts


drawSurroundTop entry

        lda surroundX
        sta rectX

        lda surroundY
        sta rectY

        lda #SURROUND_WIDTH
        sta rectWidth

        lda #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundBottom entry

        lda surroundX
        sta rectX

        lda surroundY
        clc
        adc #SURROUND_HEIGHT
        sec
        sbc #16
        sta rectY

        lda #SURROUND_WIDTH
        sta rectWidth

        lda #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundLeft entry

        lda surroundX
        sta rectX

        lda surroundY
        sta rectY

        lda #16
        sta rectWidth

        lda #SURROUND_HEIGHT
        sec
        sbc #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundRight entry

        lda surroundX
        clc
        adc #SURROUND_WIDTH
        sec
        sbc #16
        sta rectX

        lda surroundY
        sta rectY

        lda #16
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight

        jsl drawSurroundSprite

        rts









eraseSurround entry

        jsr roomHasFog
        cmp #1
        beq hasFog2
        rts

hasFog2 anop

        jsr checkSurroundEraseDirty
        lda surroundEraseDirty
        cmp #1
        beq startErase
        rts

startErase anop

        lda eraseX
        sta rectX
        lda eraseY
        sta rectY

        lda rectY
        bmi eraseMinusY
        cmp #$76
        bcs erasePositiveY
        bra eraseOkayY

eraseMinusY anop
        stz rectY
        stz eraseY
        bra eraseOkayY

erasePositiveY anop
        lda #$76
        sta rectY
        sta eraseY

eraseOkayY anop

        jsl eraseSurroundSprite
        stz surroundEraseDirty

        rts


; ---------------------------------------------


        lda playerX
        cmp playerOldX
        beq checkY1
        bcs eraseLeft
        bra eraseRight

eraseLeft anop
        jsr eraseSurroundLeft
        jsr eraseSurroundTop
        jsr eraseSurroundBottom
        stz surroundEraseDirty
        bra checkY1

eraseRight anop
        jsr eraseSurroundRight
        jsr eraseSurroundTop
        jsr eraseSurroundBottom
        stz surroundEraseDirty

checkY1 anop

        lda playerY
        cmp playerOldY
        beq skipEraseY
        bcs eraseTop
        bra eraseBottom

eraseBottom anop
        jsr eraseSurroundBottom
        jsr eraseSurroundLeft
        jsr eraseSurroundRight
        stz surroundEraseDirty
        bra eraseDone

eraseTop anop
        jsr eraseSurroundTop
        jsr eraseSurroundLeft
        jsr eraseSurroundRight
        stz surroundEraseDirty
        bra eraseDone

skipEraseY anop
        stz surroundEraseDirty

eraseDone anop


        rts



eraseSurroundTop entry

        lda eraseX
        sta rectX

        lda eraseY
        sta rectY

        lda #SURROUND_WIDTH
;---------------
;        clc
;        adc #32
;---------------
        sta rectWidth

        lda #16
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundBottom entry


        lda eraseX
        sta rectX

        lda eraseY
        clc
        adc #SURROUND_HEIGHT
;        sec
;        sbc #16
        sta rectY

        lda #SURROUND_WIDTH
;---------------
        clc
        adc #16
;---------------
        sta rectWidth

        lda #16
        sta rectHeight


;    lda #COLOR_RED
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundLeft entry

        lda eraseX
        sta rectX

        lda eraseY
        sta rectY

        lda #12
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundRight entry

        lda eraseX
        clc
        adc #SURROUND_WIDTH
;---------------
;        clc
;        adc #32
;---------------
;        clc
;        adc #16
        sta rectX

        lda eraseY
        sta rectY

        lda #12
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts



updateSurround entry

        jsr eraseSurround2
        jsr drawSurround2
        jsr renderSurround

        rts



eraseSurround2 entry

        jsr roomHasFog
        cmp #1
        beq hasFog3
        rts

hasFog3 anop

        jsr checkSurroundEraseDirty
        lda surroundEraseDirty
        cmp #1
        beq startErase3
        rts

startErase3 anop

        lda eraseX
        sta rectX
        lda eraseY
        sta rectY

        lda rectY
        bmi eraseMinusY3
        cmp #$76
        bcs erasePositiveY3
        bra eraseOkayY3

eraseMinusY3 anop
        stz rectY
        stz eraseY
        bra eraseOkayY3

erasePositiveY3 anop
        lda #$76
        sta rectY
        sta eraseY

eraseOkayY3 anop

;        jsl eraseSurroundSprite
        stz surroundEraseDirty

        rts



drawSurround2 entry

        jsr roomHasFog
        cmp #1
        beq hasFog4
        rts

hasFog4 anop

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX
        sta surroundX


        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY
        sta surroundY


        jsr checkSurroundDrawDirty
        lda surroundDrawDirty
        cmp #1
        beq startDraw4
        rts

startDraw4 anop

; --------------------------------------

        lda rectY
        bmi drawMinusY4
        cmp #$76
        bcs drawPositiveY4
        bra drawOkayY4

drawMinusY4 anop
        stz rectY
        stz surroundY
        bra drawOkayY4

drawPositiveY4 anop
        lda #$76
        sta rectY
        sta surroundY

drawOkayY4 anop

        jsr drawSurroundSprite2

        lda surroundOldX
        sta eraseX

        lda surroundOldY
        sta eraseY


        lda surroundX
        sta surroundOldX
        lda surroundY
        sta surroundOldY

        stz surroundDrawDirty


        rts


renderSurround entry

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

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord
        blitSurroundWord

blitRowDone anop
        inc rowCounter
        lda rowCounter
        cmp #199
        beq blitDone
        jmp blitVLoop

blitDone anop

        rts



drawSurroundSprite2 entry

        lda rectX
        lsr a
        sta rectX

        lda #SURROUND_WIDTH
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter

        ldy #COLOR_ORANGE

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

        tya
        sta >SURROUND_ADDR,x

nextRow1 anop
        inc rowCounter
        lda rowCounter
        cmp #SURROUND_HEIGHT
        beq fillDone1
        bra fillLoop1

fillDone1 anop

        rts




surroundDrawDirty dc i2'0'
surroundEraseDirty dc i2'0'

surroundX dc i2'0'
surroundY dc i2'0'

surroundOldX dc i2'0'
surroundOldY dc i2'0'

eraseX dc i2'0'
eraseY dc i2'0'

rowCounter dc i2'0'
rowAddress dc i4'0'


SURROUND_WIDTH gequ 80
SURROUND_HEIGHT gequ 80
SURROUND_OFFSET_X gequ 32
SURROUND_OFFSET_Y gequ 32


        end

surroundData data

surroundAllDirty dc i2'1'

        end

