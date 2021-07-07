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


checkSurroundDrawDirty entry

        lda playerX
        sec
        sbc #32
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #32
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
        sbc #32
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #32
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
        sbc #32
        and #$fff0
        sta rectX
        sta surroundX


        lda playerY
        sec
        sbc #32
        and #$fff0
        sta rectY
        sta surroundY


;        lda surroundX
;       cmp surroundOldX
;       beq checkDrawY
;       lda #1
;       sta surroundDrawDirty
;
;checkDrawY anop
;
;       lda surroundY
;       cmp surroundOldY
;       beq checkDraw
;       lda #1
;       sta surroundDrawDirty
;
;checkDraw anop
;
;       lda surroundDrawDirty
;       cmp #1
;       bne drawDone


        jsr checkSurroundDrawDirty
        lda surroundDrawDirty
        cmp #1
        bne drawDone


;        lda #1
;       sta surroundEraseDirty


        lda surroundOldX
        sta eraseX

        lda surroundOldY
        sta eraseY


        lda surroundX
        sta surroundOldX
        lda surroundY
        sta surroundOldY

        lda #80
        sta rectWidth

        lda #80
        sta rectHeight

        jsr drawSurroundRect

        stz surroundDrawDirty

drawDone anop

        rts


eraseSurround entry

        jsr checkSurroundEraseDirty
        lda surroundEraseDirty
        cmp #1
        bne eraseDone1


        lda eraseX
        sta rectX

        lda eraseY
        sta rectY


        lda #80
        sta rectWidth

        lda #80
        sta rectHeight

        jsr eraseSurroundRect

        stz surroundEraseDirty

eraseDone1 anop

        rts




        lda playerX
        cmp playerOldX
        beq checkY

        lda playerX
        cmp playerOldX
        bcs eraseLeft
        bra eraseRight

eraseLeft anop
        jsr eraseSurroundLeft
        bra checkY

eraseRight anop
        jsr eraseSurroundRight

checkY anop

        lda playerY
        cmp playerOldY
        beq eraseDone

        lda playerY
        cmp playerOldY
        bcs eraseTop
        bra eraseBottom

eraseBottom anop
        jsr eraseSurroundBottom
        bra eraseDone

eraseTop anop
        jsr eraseSurroundTop

eraseDone anop

        rts



eraseSurroundTop entry

        lda playerOldX
        sec
        sbc #38
        and #$fff0
        sta rectX

        lda playerOldY
        sec
        sbc #36
        sta rectY

        lda #80
        sta rectWidth

        lda #6
        sta rectHeight

        jsr eraseSpriteRect

        rts



eraseSurroundBottom entry

        lda playerOldX
        sec
        sbc #38
        and #$fff0
        sta rectX

        lda playerOldY
        clc
        adc #44
        sta rectY

        lda #80
        sta rectWidth

        lda #6
        sta rectHeight

        jsr eraseSpriteRect

        rts



eraseSurroundLeft entry

        lda playerOldX
        sec
        sbc #50
        sta rectX

        lda playerOldY
        sec
        sbc #36
        sta rectY

        lda #6
        sta rectWidth

        lda #80
        sta rectHeight

    lda #COLOR_BLUE
    sta rectColor

;    jsr drawSpriteRect

        jsr eraseSpriteRect

        rts



eraseSurroundRight entry

        lda playerOldX
        clc
        adc #42
        sta rectX

        lda playerOldY
        sec
        sbc #36
        sta rectY

        lda #6
        sta rectWidth

        lda #80
        sta rectHeight

        jsr eraseSpriteRect

        rts


surroundDrawDirty dc i2'0'
surroundEraseDirty dc i2'0'

surroundX dc i2'0'
surroundY dc i2'0'

surroundOldX dc i2'0'
surroundOldY dc i2'0'

eraseX dc i2'0'
eraseY dc i2'0'

        end


