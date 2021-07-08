;
;  surround.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/6/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

surround start
        using screenData
        using playerData
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


; PUT THIS BACK
;        jsr checkSurroundDrawDirty
;        lda surroundDrawDirty
;        cmp #1
;        bne noDrawDone

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

        jsl drawSurroundRect
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

        jsl drawSurroundRect

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

        jsl drawSurroundRect

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

        jsl drawSurroundRect

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

        jsl drawSurroundRect

        rts









eraseSurround entry

; PUT THIS BACK
;        jsr checkSurroundEraseDirty
;        lda surroundEraseDirty
;        cmp #1
;        bne eraseDone

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

        jsl eraseSurroundRect

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

        jsl eraseSurroundRect

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

        jsl eraseSurroundRect

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

        jsl eraseSurroundRect

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

        jsl eraseSurroundRect

        rts






surroundDrawDirty dc i2'0'
surroundEraseDirty dc i2'0'

surroundX dc i2'0'
surroundY dc i2'0'

surroundOldX dc i2'0'
surroundOldY dc i2'0'

eraseX dc i2'0'
eraseY dc i2'0'


SURROUND_WIDTH gequ 80
SURROUND_HEIGHT gequ 80
SURROUND_OFFSET_X gequ 32
SURROUND_OFFSET_Y gequ 32


        end

surroundData data

surroundAllDirty dc i2'1'

        end

