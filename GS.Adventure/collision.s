;
;  collision.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/4/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


collision start
        using globalData
        using playerData
        using roomsData
        using screenData


collisionCheckPlayerWithWalls entry

        lda playerX
        lsr a
        sta rectX

        lda playerY
        sta rectY

        lda #12
        lsr a
        sta rectHeight

        lda #0
        sta rowCounter

playerHitLoop anop

        lda rowCounter
        clc
        adc rectY

; bounds check
;        bmi nextRow1
;        cmp #199
;        bcs nextRow1

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

; TODO: OPTIMIZE

        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq playerHitDoneNoHit
        bra playerHitLoop

playerHitDoneHit anop

        lda #1
        sta playerHitWall

        lda playerX
        sta playerHitX
        lda playerY
        sta playerHitY

        lda playerOldX
        sta playerX
        lda playerOldY
        sta playerY

        lda #1
        sta playerMoved

        rts

playerHitDoneNoHit anop

        lda #0
        sta playerHitWall

        rts


rowCounter dc i2'0'


        end
