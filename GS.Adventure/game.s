;
;  game.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/19/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


game start
        using globalData
        using screenData
        using colorData
        using roomsData
        using gameData


initGame entry
        jsr setupScreen
        jsr initColorTable

        jsr borderInit

        jsr fillScreen

; ---------------

        lda #COLOR_YELLOW
        sta currentRoomColor

        jsr drawRoom

; ---------------

        rtl


runGameTick entry

        jsr waitForVbl

        jsr borderStart

; ---------------

        jsr checkControls

; ---------------

        jsr runPlayer

; ---------------

        jsr borderStart

        jsr erasePlayer

; ---------------

        jsr borderStart

        jsr drawPlayer

        jsr borderDone


        rtl



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

gameData data

;currentRoom dc i2'ROOM_INDEX_CASTLE'
currentRoom dc i2'ROOM_INDEX_BELOW_YELLOW_CASTLE'

currentRoomColor dc i2'0'

        end
