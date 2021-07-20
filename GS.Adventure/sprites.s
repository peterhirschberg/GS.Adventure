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

        jsr drawBridge

        ldx #OBJECT_YELLOWKEY
        jsr drawKey
        ldx #OBJECT_WHITEKEY
        jsr drawKey
        ldx #OBJECT_BLACKKEY
        jsr drawKey

        ldx #OBJECT_PORT1
        jsr drawPort
        ldx #OBJECT_PORT2
        jsr drawPort
        ldx #OBJECT_PORT3
        jsr drawPort

        ldx #OBJECT_REDDRAGON
        jsr drawDragon
        ldx #OBJECT_GREENDRAGON
        jsr drawDragon
        ldx #OBJECT_YELLOWDRAGON
        jsr drawDragon

        jsr drawSword
        jsr drawMagnet
        jsr drawChalise

; bat??

        rtl


eraseRoomSprites entry

        jsr eraseBridge

        ldx #OBJECT_YELLOWKEY
        jsr eraseKey

        ldx #OBJECT_WHITEKEY
        jsr eraseKey

        ldx #OBJECT_BLACKKEY
        jsr eraseKey

        ldx #OBJECT_PORT1
        jsr erasePort

        ldx #OBJECT_PORT2
        jsr erasePort

        ldx #OBJECT_PORT3
        jsr erasePort

        ldx #OBJECT_REDDRAGON
        jsr eraseDragon
        lda >objectStateList,x
        sta >objectOldStateList,x

        ldx #OBJECT_GREENDRAGON
        jsr eraseDragon
        lda >objectStateList,x
        sta >objectOldStateList,x

        ldx #OBJECT_YELLOWDRAGON
        jsr eraseDragon
        lda >objectStateList,x
        sta >objectOldStateList,x


        jsr eraseSword
        jsr eraseMagnet
        jsr eraseChalise

; bat??

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

drawKey entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne drawKeyDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawKeyDone
        sta >spriteY
        lda >objectColorList,x
        sta >spriteColor
        jsl drawSpriteKey
drawKeyDone anop
        rts

drawPort entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawPortDone

        lda >objectDirtyList,x
        cmp #1
        bne drawPortDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawPortDone
        sta >spriteY

        jsr drawPortState

drawPortDone anop
        rts

drawDragon entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne drawDragonDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        sta >spriteY
        bmi drawDragonDone
        lda >objectColorList,x
        sta >spriteColor

        lda >objectStateList,x
        cmp #0
        beq drawDragon0
        cmp #1
        beq drawDragon1
        cmp #2
        beq drawDragon2
        rts

drawDragon0 anop
        jsl drawSpriteDragon1
        rts

drawDragon1 anop
        jsl drawSpriteDragon2
        rts

drawDragon2 anop
        jsl drawSpriteDragon3
        rts

drawDragonDone anop
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

drawMagnet entry
        lda #OBJECT_MAGNET
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawMagnetDone

        lda >objectDirtyList,x
        cmp #1
        bne drawMagnetDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawMagnetDone
        sta >spriteY
        jsl drawSpriteMagnet
drawMagnetDone anop
        rts

drawSword entry
        lda #OBJECT_SWORD
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawSwordDone

        lda >objectDirtyList,x
        cmp #1
        bne drawSwordDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawSwordDone
        sta >spriteY
        jsl drawSpriteSword
drawSwordDone anop
        rts

drawChalise entry
        lda #OBJECT_CHALISE
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne drawChaliseDone

        lda >objectDirtyList,x
        cmp #1
        bne drawChaliseDone
        lda #0
        sta >objectDirtyList,x

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawChaliseDone
        sta >spriteY
        jsl drawSpriteChalise
drawChaliseDone anop
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


erasePort entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne erasePortDone

        lda >objectDirtyList,x
        cmp #1
        bne erasePortDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi erasePortDone
        sta >spriteY
        jsl eraseSpritePort
erasePortDone anop
        rts


eraseDragon entry
        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseDragonDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseDragonDone
        sta >spriteY

        lda >objectOldStateList,x
        cmp #0
        beq eraseDragon0
        cmp #1
        beq eraseDragon1
        cmp #2
        beq eraseDragon2
        rts

eraseDragon0 anop
        jsl eraseSpriteDragon1
        rts

eraseDragon1 anop
        jsl eraseSpriteDragon2
        rts

eraseDragon2 anop
        jsl eraseSpriteDragon3
        rts

eraseDragonDone anop
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

eraseChalise entry
        lda #OBJECT_CHALISE
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseChaliseDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseChaliseDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseChaliseDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseChaliseFog
        jsl eraseSpriteChalise
        bra eraseChaliseDone
eraseChaliseFog anop
        jsl eraseSpriteChaliseFog
eraseChaliseDone anop
        rts

eraseMagnet entry
        lda #OBJECT_MAGNET
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseMagnetDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseMagnetDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseMagnetDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseMagnetFog
        jsl eraseSpriteMagnet
        bra eraseMagnetDone
eraseMagnetFog anop
        jsl eraseSpriteMagnetFog
eraseMagnetDone anop
        rts

eraseSword entry
        lda #OBJECT_SWORD
        tax

        lda >objectRoomList,x
        asl a
        cmp >currentRoom
        bne eraseSwordDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseSwordDone

        lda >objectPositionOldXList,x
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseSwordDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseSwordFog
        jsl eraseSpriteSword
        bra eraseMagnetDone
eraseSwordFog anop
        jsl eraseSpriteSwordFog
eraseSwordDone anop
        rts


drawPortState entry

        lda >objectStateList,x

        cmp #$00
        beq drawPortState1

        cmp #$01
        beq drawPortState2

        cmp #$02
        beq drawPortState3

        cmp #$03
        beq drawPortState4

        cmp #$04
        beq drawPortState5

        cmp #$05
        beq drawPortState6

        cmp #$06
        beq drawPortState7

        rts

drawPortState1 anop
        jsl drawSpritePort7
        rts

drawPortState2 anop
        jsl drawSpritePort6
        rts

drawPortState3 anop
        jsl drawSpritePort5
        rts

drawPortState4 anop
        jsl drawSpritePort4
        rts

drawPortState5 anop
        jsl drawSpritePort3
        rts

drawPortState6 anop
        jsl drawSpritePort2
        rts

drawPortState7 anop
        jsl drawSpritePort1
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
