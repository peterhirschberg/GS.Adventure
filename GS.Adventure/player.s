;
;  player.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/4/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on


player start
        using globalData
        using gameData
        using playerData
        using screenData


runPlayer entry

        lda playerX
        sta playerOldX

        lda playerY
        sta playerOldY

        rts


drawPlayer entry

        lda playerX
        sta rectX

        lda playerY
        sta rectY

        lda #10
        sta rectWidth
        lda #11
        sta rectHeight

        lda currentRoomColor
        sta rectColor

        jsr drawSpriteRect

        rts


erasePlayer entry

        lda playerOldX
        sta rectX

        lda playerOldY
        sta rectY

        lda #10
        sta rectWidth
        sta rectHeight

        jsr eraseSpriteRect

        rts


        end

playerData data

playerX dc i2'100'
playerY dc i2'100'

playerOldX dc i2'100'
playerOldY dc i2'100'


        end
