;
;  game.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/19/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy 13:ORCAInclude:m16.ORCA

game start
        using globalData
        using screenData
        using colorData


initGame entry
        jsr setupScreen
        jsr initColorTable
        jsr zeroScreen
;        jsr initSCB
        jsr fillScreen
        jsr drawRoom
        rtl

runGameTick entry

        lda oldLeft
        sta rectX
        lda #50
        sta rectY
        lda #50
        sta rectWidth
        lda #50
        sta rectHeight

        jsr eraseSpriteRect

        lda left
        sta oldLeft

        lda left
        clc
        adc dir
        clc
        adc dir
        sta left


        sta rectX

        lda #50
        sta rectY
        lda #40
        sta rectWidth
        lda #40
        sta rectHeight
        lda #COLOR_BLUE
        sta rectColor

        jsr drawSpriteRect

        lda left
        cmp #260
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



temp dc i4'0'

oldLeft dc i2'50'
left dc i2'50'

dir dc i2'1'


        end
