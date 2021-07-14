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
        jsr drawWhiteKey
        jsr drawBlackKey

        jsr drawPort1
        jsr drawPort2
        jsr drawPort3

        jsr drawRedDragon
        jsr drawGreenDragon
        jsr drawYellowDragon

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

drawWhiteKey entry
        ldx #OBJECT_WHITEKEY
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawWhiteKeyDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteWhiteKey
drawWhiteKeyDone anop
        rts

drawBlackKey entry
        ldx #OBJECT_BLACKKEY
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawBlackKeyDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteBlackKey
drawBlackKeyDone anop
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

drawPort2 entry
        ldx #OBJECT_PORT2
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort2Done
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpritePort7
drawPort2Done anop
        rts

drawPort3 entry
        ldx #OBJECT_PORT3
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort3Done
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpritePort7
drawPort3Done anop
        rts

drawRedDragon entry
        ldx #OBJECT_REDDRAGON
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawRedDragonDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteRedDragon1
drawRedDragonDone anop
        rts

drawGreenDragon entry
        ldx #OBJECT_GREENDRAGON
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawGreenDragonDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteGreenDragon1
drawGreenDragonDone anop
        rts

drawYellowDragon entry
        ldx #OBJECT_YELLOWDRAGON
        lda objectRoomList,x
        asl a
        cmp currentRoom
        bne drawYellowDragonDone
        lda objectPositionXList,x
        adjustSpriteX
        sta spriteX
        lda objectPositionYList,x
        adjustSpriteY
        sta spriteY
        jsl drawSpriteYellowDragon1
drawYellowDragonDone anop
        rts


temp dc i2'0'


        end


spriteData data

rowAddress dc i4'0'
drawAddress dc i4'0'

backupStack dc i4'0'

spriteX dc i2'0'
spriteY dc i2'0'
    
        end
