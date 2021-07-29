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

        ldx #OBJECT_PORT1
        jsr drawPort
        ldx #OBJECT_PORT2
        jsr drawPort
        ldx #OBJECT_PORT3
        jsr drawPort

        ldx #OBJECT_REDDRAGON
        jsr drawDragon
        ldx #OBJECT_YELLOWDRAGON
        jsr drawDragon
        ldx #OBJECT_GREENDRAGON
        jsr drawDragon

        jsr drawSword
        jsr drawBridge

        ldx #OBJECT_YELLOWKEY
        jsr drawKey
        ldx #OBJECT_WHITEKEY
        jsr drawKey
        ldx #OBJECT_BLACKKEY
        jsr drawKey

        jsr drawChalise
        jsr drawMagnet
        jsr drawBat

        jsr drawNumbers

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


        jsr eraseMagnet
        jsr eraseSword
        jsr eraseChalise
        jsr eraseBat
        jsr eraseNumbers

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
        cmp >currentRoom
        bne drawKeyDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawKey
        lda >objectRedrawList,x
        cmp #1
        bne drawKeyDone
        
doDrawKey anop

        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawKeyDone
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
        cmp >currentRoom
        bne drawPortDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawPort
        lda >objectRedrawList,x
        cmp #1
        bne drawPortDone
        
doDrawPort anop
        
        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

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
        cmp >currentRoom
        bne drawDragonDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawDragon
        lda >objectRedrawList,x
        cmp #1
        bne drawDragonDone
        
doDrawDragon anop
        
        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawDragonDone
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawDragonDone
        sta >spriteY
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
        cmp >currentRoom
        bne drawBridgeDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawBridge
        lda >objectRedrawList,x
        cmp #1
        bne drawBridgeDone
        
doDrawBridge anop

        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawBridgeDone
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
        cmp >currentRoom
        bne drawMagnetDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawMagnet
        lda >objectRedrawList,x
        cmp #1
        bne drawMagnetDone
        
doDrawMagnet anop
        
        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawMagnetDone
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
        cmp >currentRoom
        bne drawSwordDone
        
        lda >objectDirtyList,x
        cmp #1
        beq doDrawSword
        lda >objectRedrawList,x
        cmp #1
        bne drawSwordDone
        
doDrawSword anop

        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawSwordDone
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
        cmp >currentRoom
        bne drawChaliseDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawChalise
        lda >objectRedrawList,x
        cmp #1
        bne drawChaliseDone
        
doDrawChalise anop

        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawChaliseDone
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawChaliseDone
        sta >spriteY
        jsl drawSpriteChalise
drawChaliseDone anop
        rts

drawBat entry
        lda #OBJECT_BAT
        tax

        lda >objectRoomList,x
        cmp >currentRoom
        bne drawBatDone

        lda >objectDirtyList,x
        cmp #1
        beq doDrawBat
        lda >objectRedrawList,x
        cmp #1
        bne drawBatDone
        
doDrawBat anop

        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x

        lda >objectPositionXList,x
        bmi drawBatDone
        sta >spriteX
        lda >objectPositionYList,x
        bmi drawBatDone
        sta >spriteY
        lda >objectStateList,x
        cmp #0
        bne batState1
        jsl drawSpriteBat1
        bra drawBatDone
batState1 anop
        jsl drawSpriteBat2
drawBatDone anop
        rts
        
        
; erase


eraseKey entry

        lda >objectRoomList,x
        cmp >objectOldRoomList,x
        bne doEraseKey

        lda >objectRoomList,x
        cmp >currentRoom
        bne eraseKeyDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseKeyDone

doEraseKey anop

        lda >objectPositionOldXList,x
        bmi eraseKeyDone
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
        cmp >currentRoom
        bne erasePortDone

        lda >objectDirtyList,x
        cmp #1
        bne erasePortDone

        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        sta >spriteY
        jsl eraseSpritePort
erasePortDone anop
        rts


eraseDragon entry

        lda >objectRoomList,x
        cmp >objectOldRoomList,x
        bne doEraseDragon

        lda >objectRoomList,x
        cmp >currentRoom
        bne eraseDragonDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseDragonDone

doEraseDragon anop

        lda >objectPositionOldXList,x
        bmi eraseDragonDone
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
        cmp >objectOldRoomList,x
        bne doEraseBridge

        lda >objectRoomList,x
        cmp >currentRoom
        bne eraseBridgeDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseBridgeDone

doEraseBridge anop

        lda >objectPositionOldXList,x
        bmi eraseBridgeDone
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
        cmp >currentRoom
        bne eraseChaliseDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseChaliseDone

        lda >objectPositionOldXList,x
        bmi eraseChaliseDone
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
        cmp >objectOldRoomList,x
        bne doEraseMagnet

        lda >objectRoomList,x
        cmp >currentRoom
        bne eraseMagnetDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseMagnetDone

doEraseMagnet anop

        lda >objectPositionOldXList,x
        bmi eraseMagnetDone
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
        cmp >currentRoom
        bne eraseSwordDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseSwordDone

        lda >objectPositionOldXList,x
        bmi eraseSwordDone
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

eraseBat entry
        lda #OBJECT_BAT
        tax

        lda >objectRoomList,x
        cmp >currentRoom
        bne eraseBatDone

        lda >objectDirtyList,x
        cmp #1
        bne eraseBatDone

        lda >objectPositionOldXList,x
        bmi eraseBatDone
        sta >spriteX
        lda >objectPositionOldYList,x
        bmi eraseBatDone
        sta >spriteY

        jsl roomHasFog
        cmp #1
        beq eraseBatFog
        lda >objectOldStateList,x
        cmp #0
        bne batEraseState1
        jsl eraseSpriteBat1
        bra eraseBatDone
batEraseState1 anop
        jsl eraseSpriteBat2
        bra eraseBatDone
eraseBatFog anop
        lda >objectOldStateList,x
        cmp #0
        bne batEraseState1Fog
        jsl eraseSpriteBat1Fog
        bra eraseBatDone
batEraseState1Fog anop
        jsl eraseSpriteBat1Fog
eraseBatDone anop
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

        
drawNumbers entry

        lda >gameSelectMode
        cmp #1
        bne drawNumbersDone

        ldx #OBJECT_NUMBERS
        
        lda >objectDirtyList,x
        cmp #1
        beq doDrawNumbers
        lda >objectRedrawList,x
        cmp #1
        bne drawNumbersDone
        
doDrawNumbers anop
        
        lda #0
        sta >objectDirtyList,x
        sta >objectRedrawList,x
        
        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        sta >spriteY

        lda >objectStateList,x
        cmp #0
        beq drawNumber1
        cmp #1
        beq drawNumber2
        cmp #2
        beq drawNumber3
        rts
        
drawNumber1 anop
        jsl drawSpriteNum1
        rts

drawNumber2 anop
        jsl drawSpriteNum2
        rts

drawNumber3 anop
        jsl drawSpriteNum3
        rts
        
drawNumbersDone anop
        rts

        
eraseNumbers entry

        lda >gameSelectMode
        cmp #1
        bne eraseNumbersDone

        ldx #OBJECT_NUMBERS
        
        lda >objectDirtyList,x
        cmp #1
        bne eraseNumbersDone
        
        lda >objectPositionXList,x
        sta >spriteX
        lda >objectPositionYList,x
        sta >spriteY
        
        lda >objectOldStateList,x
        cmp #0
        beq eraseNumber1
        cmp #1
        beq eraseNumber2
        cmp #2
        beq eraseNumber3
        rts
        
eraseNumber1 anop
        jsl eraseSpriteNum1
        rts

eraseNumber2 anop
        jsl eraseSpriteNum2
        rts

eraseNumber3 anop
        jsl eraseSpriteNum3
        rts

eraseNumbersDone anop
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
