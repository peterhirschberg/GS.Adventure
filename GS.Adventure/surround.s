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


        jsr eraseSurroundRect

        rts


        end
