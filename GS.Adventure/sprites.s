;
;  sprites.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/10/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on
        mcopy global.macros
        keep global


sprites start
        using globalData
        using gameData
        using roomsData
        using objectData
        using spriteData


drawRoomSprites entry

        jsr drawYellowKey
        jsr drawPort1

        rts


drawYellowKey entry
        ldx #OBJECT_YELLOWKEY
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawYellowKeyDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteYellowKey
drawYellowKeyDone anop
        rts


drawPort1 entry
        ldx #OBJECT_PORT1
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort1Done
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpritePort7
drawPort1Done anop
        rts


        end


spriteData data

rowAddress dc i4'0'
drawAddress dc i4'0'

backupStack dc i4'0'

spriteX dc i2'0'
spriteY dc i2'0'
    
        end
