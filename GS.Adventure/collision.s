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
        jsr roomHasFog
        cmp #1
        beq hasFog
        jsr collisionCheckNoFog
        rts
hasFog anop
        jsr collisionCheckFog
        rts



collisionCheckNoFog entry

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

playerHitLoop1 anop

        lda rowCounter
        clc
        adc rectY

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit1

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit1

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit1

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit1

        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq playerHitDoneNoHit1
        bra playerHitLoop1

playerHitDoneHit1 anop

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

playerHitDoneNoHit1 anop

        lda #0
        sta playerHitWall

        rts



collisionCheckFog entry

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

playerHitLoop2 anop

        lda rowCounter
        clc
        adc rectY

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda >BACKGROUND_ADDR,x
        cmp #COLOR_ORANGE
        bne playerHitDoneHit2

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_ORANGE
        bne playerHitDoneHit2

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_ORANGE
        bne playerHitDoneHit2

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_ORANGE
        bne playerHitDoneHit2

        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq playerHitDoneNoHit2
        bra playerHitLoop2

playerHitDoneHit2 anop

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

playerHitDoneNoHit2 anop

        lda #0
        sta playerHitWall

        rts



rowCounter dc i2'0'


        end
