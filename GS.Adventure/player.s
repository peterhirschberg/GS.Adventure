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
        using roomsData
        using controlsData
        using objectData
        using collisionData


runPlayer entry

        lda playerX
        sta playerOldX
        lda playerY
        sta playerOldY

        lda joystickUp
        cmp #1
        beq _onJoystickUp
        bra _readDown

_onJoystickUp anop

        jsr onJoystickUp

_readDown anop

        lda joystickDown
        cmp #1
        beq _onJoystickDown
        bra _readX

_onJoystickDown anop

        jsr onJoystickDown

_readX anop

        lda joystickRight
        cmp #1
        beq _onJoystickRight
        bra _readLeft

_onJoystickRight anop

        jsr onJoystickRight

_readLeft anop

        lda joystickLeft
        cmp #1
        beq _onJoystickLeft
        bra _readButton

_onJoystickLeft anop

        jsr onJoystickLeft

_readButton anop

        lda joystickButton
        cmp #1
        beq _onJoystickButton
        bra _readControlsDone

_onJoystickButton anop

        jsr onJoystickButton

_readControlsDone anop

        jsr wrapPlayerRoom

        rts



onJoystickUp entry
        lda #0
        sta joystickUp
        jsr movePlayerUp
        rts

onJoystickDown entry
        lda #0
        sta joystickDown
        jsr movePlayerDown
        rts

onJoystickRight entry
        lda #0
        sta joystickRight
        jsr movePlayerRight
        rts

onJoystickLeft entry
        lda #0
        sta joystickLeft
        jsr movePlayerLeft
        rts

onJoystickButton entry
        lda #0
        sta joystickButton
        jsr dropCarriedObject
        rts



movePlayerUp entry
        lda #1
        sta playerMoved
        lda playerY
        sec
        sbc #6
        sta playerY
        rts

movePlayerDown entry
        lda #1
        sta playerMoved
        lda playerY
        clc
        adc #6
        sta playerY
        rts

movePlayerRight entry
        lda goingThroughWall
        cmp #1
        bne moveRight
        rts

moveRight anop

        lda #1
        sta playerMoved
        lda playerX
        clc
        adc #6
        sta playerX
        rts

movePlayerLeft entry
        lda goingThroughWall
        cmp #1
        bne moveLeft
        rts
        
moveLeft anop

        lda #1
        sta playerMoved
        lda playerX
        sec
        sbc #6
        sta playerX
        rts



movePlayerCarriedObject entry

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        cmp #OBJECT_NONE
        beq carryDone

        lda playerX
        sec
        sbc playerOldX
        sta playerDiffX

        lda playerY
        sec
        sbc playerOldY
        sta playerDiffY

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x

        tax

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x
        clc
        adc playerDiffX
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x
        clc
        adc playerDiffY
        sta >objectPositionYList,x

        lda currentRoom
        sta >objectRoomList,x
        
        lda #1
        sta >objectDirtyList,x

carryDone anop
        rts


        
dropCarriedObject entry

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        cmp #OBJECT_NONE
        beq dropDone
        
; undo any horizontal wrapping / overflow / undeflow

        tax
        
        lda >objectPositionXList,x
        cmp #319
        bcs overflowRight
        bra dropIt
        
overflowRight anop

        sec
        sbc #320
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        clc
        adc #1
        sta >objectPositionYList,x
        
        lda #1
        sta >objectDirtyList,x
        
; drop it
dropIt anop

        jsr playPutdownSound

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        tax
        lda #0
        sta >objectLinkedList,x

        ldx #OBJECT_PLAYER
        lda #OBJECT_NONE
        sta >objectLinkedObjectList,x

dropDone anop
        rts
        
        

drawPlayer entry

        lda playerX
        sta rectX

        lda playerY
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        lda currentRoom
        asl a
        tax
        lda roomColorList,x
        sta rectColor

        jsr drawSpriteRect

        rts


erasePlayer entry

        lda currentRoom
        cmp lastRoom
        beq doErase
        rts

doErase anop

        lda playerOldX
        sta rectX

        lda playerOldY
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        jsl roomHasFog
        cmp #1
        beq hasFog
        jsr eraseSpriteRect
        rts

hasFog anop
        lda #COLOR_ORANGE
        sta rectColor
        jsr drawSpriteRect
        rts



erasePlayerHit entry

        lda playerHitX
        sta rectX

        lda playerHitY
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        jsl roomHasFog
        cmp #1
        beq hasFog2

        jsr eraseSpriteRect
        rts

hasFog2 anop

        jsr surroundRedrawPlayerHitBlock

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        cmp #OBJECT_NONE
        beq notCarryingObject
        tax
        lda #1
        sta >objectDirtyList,x
notCarryingObject anop
        rts
        
        

        end



playerData data

playerX dc i2'0'
playerY dc i2'0'

playerOldX dc i2'0'
playerOldY dc i2'0'

playerHitX dc i2'0'
playerHitY dc i2'0'

playerDiffX dc i2'0'
playerDiffY dc i2'0'

playerHitWall dc i2'0'
playerHitObject dc i2'0'

playerMoved dc i2'1' ; TODO: REMOVE THIS OR MOVE TO DIRTYLIST
objectMoved dc i2'0'

playerCarriedPosX dc i2'0'
playerCarriedPosY dc i2'0'

        end
