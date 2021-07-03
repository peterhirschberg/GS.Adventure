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

        jsr borderInit

        jsr zeroScreen
;        jsr initSCB
        jsr fillScreen
        jsr drawRoom

        rtl

runGameTick entry

        jsl waitForVbl


;        jsr interruptsOff
;        jsr shadowingOff


;        jsr borderStart
;
;       ldy #120
;       jsr beamSync
;
;       jsr borderStart


;       lda oldLeft
;      sta rectX
;      lda #20
;      sta rectY
;      lda #30
;      sta rectWidth
;      lda #30
;      sta rectHeight


;      jsr eraseSpriteRect

        jsr borderStart


        lda dir
      bmi eraseRight

      lda oldLeft
      sta rectX

      lda #20
      sta rectY
      lda #1
      sta rectWidth
      lda #30
      sta rectHeight

      bra doErase

eraseRight anop

      lda oldLeft
      clc
      adc #30

      sta rectX
      lda #20
      sta rectY
      lda #1
      sta rectWidth
      lda #30
      sta rectHeight

doErase entry
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

        lda #20
        sta rectY
        lda #30
        sta rectWidth
        lda #30
        sta rectHeight
        lda #COLOR_BLUE
        sta rectColor

        jsr borderStart

        jsr drawSpriteRect

        jsr borderDone


;        jsr shadowingOn
;        jsr interruptsOn



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
