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


sprites start spritesSeg
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

        rtl


eraseRoomSprites entry

        ldx #OBJECT_YELLOWKEY
        jsr eraseKey

        ldx #OBJECT_WHITEKEY
        jsr eraseKey

        ldx #OBJECT_BLACKKEY
        jsr eraseKey

        jsr erasePort1
        jsr erasePort2
        jsr erasePort3

        jsr eraseRedDragon
        jsr eraseGreenDragon
        jsr eraseYellowDragon

        jsr eraseBridge

        rtl


dirtyAllSprites entry

        lda #0
        tax

dirtyLoop anop

        lda #1
        sta >objectDirtyList,x
        inx
        inx

        txa
        cmp #36
        beq dirtyDone
        bra dirtyLoop

dirtyDone anop
        rtl


; draw

drawYellowKey entry
        lda #OBJECT_YELLOWKEY
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawYellowKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawYellowKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawYellowKeyDone
        sta >spriteY
        lda #COLOR_YELLOW
        sta >spriteColor
        jsl drawSpriteKey
drawYellowKeyDone anop
        rts

drawWhiteKey entry
        lda #OBJECT_WHITEKEY
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawWhiteKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawWhiteKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawWhiteKeyDone
        sta >spriteY
        lda #COLOR_WHITE
        sta >spriteColor
        jsl drawSpriteKey
drawWhiteKeyDone anop
        rts

drawBlackKey entry
        lda #OBJECT_BLACKKEY
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawBlackKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawBlackKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawBlackKeyDone
        sta >spriteY
        lda #COLOR_BLACK
        sta >spriteColor
        jsl drawSpriteKey
drawBlackKeyDone anop
        rts

drawPort1 entry
        lda #OBJECT_PORT1
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawPort1Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort1Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawPort1Done
        sta >spriteY
        jsl drawSpritePort7
drawPort1Done anop
        rts

drawPort2 entry
        lda #OBJECT_PORT2
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawPort2Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort2Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawPort2Done
        sta >spriteY
        jsl drawSpritePort7
drawPort2Done anop
        rts

drawPort3 entry
        lda #OBJECT_PORT3
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawPort3Done

        lda >objectDirtyList,x
        cmp #1
        bne drawPort3Done
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawPort3Done
        sta >spriteY
        jsl drawSpritePort7
drawPort3Done anop
        rts

drawRedDragon entry
        lda #OBJECT_REDDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawRedDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawRedDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        sta >spriteY
        bmi drawRedDragonDone
        lda #COLOR_RED
        sta >spriteColor
        jsl drawSpriteDragon1
drawRedDragonDone anop
        rts

drawGreenDragon entry
        lda #OBJECT_GREENDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawGreenDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawGreenDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawGreenDragonDone
        sta >spriteY
        lda #COLOR_LIMEGREEN
        sta >spriteColor
        jsl drawSpriteDragon1
drawGreenDragonDone anop
        rts

drawYellowDragon entry
        lda #OBJECT_YELLOWDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawYellowDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawYellowDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawYellowDragonDone
        sta >spriteY
        lda #COLOR_YELLOW
        sta >spriteColor
        jsl drawSpriteDragon1
drawYellowDragonDone anop
        rts

drawBridge entry
        lda #OBJECT_BRIDGE
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawBridgeDone

        lda >objectDirtyList,x
        cmp #1
        bne drawBridgeDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawBridgeDone
        sta >spriteY
        jsl drawSpriteBridge
drawBridgeDone anop
        rts


; erase


eraseKey entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseKeyDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseKeyDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseKeyFog
        jsl eraseSpriteKey
        bra eraseKeyDone
eraseKeyFog anop
        jsl eraseSpriteKeyFog
eraseKeyDone anop
        rts


erasePort1 entry
        lda #OBJECT_PORT1
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne erasePort1Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort1Done

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi erasePort1Done
        sta >spriteY
        jsl eraseSpritePort
erasePort1Done anop
        rts

erasePort2 entry
        lda #OBJECT_PORT2
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne erasePort2Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort2Done

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi erasePort2Done
        sta >spriteY
        jsl eraseSpritePort
erasePort2Done anop
        rts

erasePort3 entry
        lda #OBJECT_PORT3
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne erasePort3Done

        lda >objectDirtyList,x
        cmp #1
        bne erasePort3Done

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi erasePort3Done
        sta >spriteY
        jsl eraseSpritePort
erasePort3Done anop
        rts

eraseRedDragon entry
        lda #OBJECT_REDDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseRedDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseRedDragonDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseRedDragonDone
        sta >spriteY
        jsl eraseSpriteDragon1
eraseRedDragonDone anop
        rts

eraseGreenDragon entry
        lda #OBJECT_GREENDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseGreenDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseGreenDragonDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseGreenDragonDone
        sta >spriteY
        jsl eraseSpriteDragon1
eraseGreenDragonDone anop
        rts

eraseYellowDragon entry
        lda #OBJECT_YELLOWDRAGON
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseYellowDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseYellowDragonDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseYellowDragonDone
        sta >spriteY
        jsl eraseSpriteDragon1
eraseYellowDragonDone anop
        rts

eraseBridge entry
        lda #OBJECT_BRIDGE
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseBridgeDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseBridgeDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseBridgeDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseBridgeFog
        jsl eraseSpriteBridge
        bra eraseBridgeDone
eraseBridgeFog anop
        jsl eraseSpriteBridgeFog
eraseBridgeDone anop
        rts



        end


spriteData data spriteDataSeg

rowCounter dc i2'0'

rowAddress dc i4'0'
drawAddress dc i4'0'

backupStack dc i4'0'

spriteX dc i2'0'
spriteY dc i2'0'

spriteColor dc i2'0'
    
        end
