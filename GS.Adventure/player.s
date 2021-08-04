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
        beq onJoystickUp

        lda joystickDown
        cmp #1
        beq onJoystickDown

        lda joystickRight
        cmp #1
        beq onJoystickRight

        lda joystickLeft
        cmp #1
        beq onJoystickLeft

        lda joystickButton
        cmp #1
        beq onJoystickButton

        bra joystickDone

onJoystickUp anop
        lda #0
        sta joystickUp
        jsr movePlayerUp
        bra joystickDone

onJoystickDown anop
        lda #0
        sta joystickDown
        jsr movePlayerDown
        bra joystickDone

onJoystickRight anop
        lda #0
        sta joystickRight
        jsr movePlayerRight
        bra joystickDone

onJoystickLeft anop
        lda #0
        sta joystickLeft
        jsr movePlayerLeft
        bra joystickDone

onJoystickButton anop
        lda #0
        sta joystickButton
        jsr dropCarriedObject
        rts

joystickDone anop
        jsr wrapPlayerRoom
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

        lda playerDiffX
        clc
        adc playerDiffY
        cmp #0
        beq carryDone

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
