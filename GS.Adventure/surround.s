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


drawSurround entry

        lda playerX
        sec
        sbc #38
        sta rectX


        lda playerY
        sec
        sbc #36
        sta rectY


        lda #80
        sta rectWidth

        lda #80
        sta rectHeight


        jsr drawSurroundRect

        rts


eraseSurround entry

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
        bcs eraseBottom
        bra eraseTop

eraseBottom anop
        jsr eraseSurroundBottom
        bra eraseDone

eraseTop anop
        jsr eraseSurroundTop

eraseDone anop

        rts




        lda playerOldX
        sec
        sbc #38
        sta rectX


        lda playerOldY
        sec
        sbc #36
        sta rectY


        lda #80
        sta rectWidth

        lda #80
        sta rectHeight


        jsr eraseSpriteRect

        rts



eraseSurroundBottom entry

        lda playerOldX
        sec
        sbc #38
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



eraseSurroundTop entry

        lda playerOldX
        sec
        sbc #38
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

        rts



eraseSurroundRight entry

        rts



        end
