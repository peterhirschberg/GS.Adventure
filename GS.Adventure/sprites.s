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

        jsr drawBridge

        rts


eraseRoomSprites entry

        jsr eraseYellowKey
        jsr eraseWhiteKey
        jsr eraseBlackKey

        jsr erasePort1
        jsr erasePort2
        jsr erasePort3

        jsr eraseRedDragon
        jsr eraseGreenDragon
        jsr eraseYellowDragon

        jsr eraseBridge

        rts

; draw

drawYellowKey entry
        ldx #OBJECT_YELLOWKEY

        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawYellowKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawYellowKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawYellowKeyDone
        sta spriteY
        jsl drawSpriteYellowKey
drawYellowKeyDone anop
        rts

drawWhiteKey entry
        ldx #OBJECT_WHITEKEY
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawWhiteKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawWhiteKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawWhiteKeyDone
        sta spriteY
        jsl drawSpriteWhiteKey
drawWhiteKeyDone anop
        rts

drawBlackKey entry
        ldx #OBJECT_BLACKKEY
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawBlackKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawBlackKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawBlackKeyDone
        sta spriteY
        jsl drawSpriteBlackKey
drawBlackKeyDone anop
        rts

drawPort1 entry
        ldx #OBJECT_PORT1
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort1Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort1Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawPort1Done
        sta spriteY
        jsl drawSpritePort7
drawPort1Done anop
        rts

drawPort2 entry
        ldx #OBJECT_PORT2
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort2Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort2Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawPort2Done
        sta spriteY
        jsl drawSpritePort7
drawPort2Done anop
        rts

drawPort3 entry
        ldx #OBJECT_PORT3
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawPort3Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort3Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawPort3Done
        sta spriteY
        jsl drawSpritePort7
drawPort3Done anop
        rts

drawRedDragon entry
        ldx #OBJECT_REDDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawRedDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawRedDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        sta spriteY
        bmi drawRedDragonDone
        jsl drawSpriteRedDragon1
drawRedDragonDone anop
        rts

drawGreenDragon entry
        ldx #OBJECT_GREENDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawGreenDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawGreenDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawGreenDragonDone
        sta spriteY
        jsl drawSpriteGreenDragon1
drawGreenDragonDone anop
        rts

drawYellowDragon entry
        ldx #OBJECT_YELLOWDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawYellowDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawYellowDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawYellowDragonDone
        sta spriteY
        jsl drawSpriteYellowDragon1
drawYellowDragonDone anop
        rts

drawBridge entry
        ldx #OBJECT_BRIDGE
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne drawBridgeDone

        lda >objectDirtyList,x
        cmp #1
        bne drawBridgeDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta spriteX
        lda >objectPositionYList,x
        bmi drawBridgeDone
        sta spriteY
        jsl drawSpriteBridge
drawBridgeDone anop
        rts


; erase


eraseYellowKey entry
        ldx #OBJECT_YELLOWKEY
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseYellowKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseYellowKeyDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseYellowKeyDone
        sta spriteY
        jsl eraseSpriteKey
eraseYellowKeyDone anop
        rts

eraseWhiteKey entry
        ldx #OBJECT_WHITEKEY
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseWhiteKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseWhiteKeyDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseWhiteKeyDone
        sta spriteY
        jsl eraseSpriteKey
eraseWhiteKeyDone anop
        rts

eraseBlackKey entry
        ldx #OBJECT_BLACKKEY
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseBlackKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseBlackKeyDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseBlackKeyDone
        sta spriteY
        jsl eraseSpriteKey
eraseBlackKeyDone anop
        rts

erasePort1 entry
        ldx #OBJECT_PORT1
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne erasePort1Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort1Done

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi erasePort1Done
        sta spriteY
        jsl eraseSpritePort
erasePort1Done anop
        rts

erasePort2 entry
        ldx #OBJECT_PORT2
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne erasePort2Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort2Done

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi erasePort2Done
        sta spriteY
        jsl eraseSpritePort
erasePort2Done anop
        rts

erasePort3 entry
        ldx #OBJECT_PORT3
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne erasePort3Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort3Done

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi erasePort3Done
        sta spriteY
        jsl eraseSpritePort
erasePort3Done anop
        rts

eraseRedDragon entry
        ldx #OBJECT_REDDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseRedDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseRedDragonDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseRedDragonDone
        sta spriteY
        jsl eraseSpriteDragon1
eraseRedDragonDone anop
        rts

eraseGreenDragon entry
        ldx #OBJECT_GREENDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseGreenDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseGreenDragonDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseGreenDragonDone
        sta spriteY
        jsl eraseSpriteDragon1
eraseGreenDragonDone anop
        rts

eraseYellowDragon entry
        ldx #OBJECT_YELLOWDRAGON
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseYellowDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseYellowDragonDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseYellowDragonDone
        sta spriteY
        jsl eraseSpriteDragon1
eraseYellowDragonDone anop
        rts

eraseBridge entry
        ldx #OBJECT_BRIDGE
        lda >objectRoomList,x
        asl a
        cmp currentRoom
        bne eraseBridgeDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseBridgeDone

        lda >objectPositionOldXList,x
        sta spriteX
        lda >objectPositionOldYList,x
        bmi eraseBridgeDone
        sta spriteY
        jsl eraseSpriteBridge
eraseBridgeDone anop
        rts



        end


spriteData data

rowCounter dc i2'0'

rowAddress dc i4'0'
drawAddress dc i4'0'

backupStack dc i4'0'

spriteX dc i2'0'
spriteY dc i2'0'
    
        end
