;
;  game.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/19/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


game start
        using globalData
        using screenData
        using colorData
        using roomsData
        using gameData
        using playerData
        using objectData
        using spriteData
        using batData


initGame entry
        lda #0
        sta doInitGame

        jsr setupScreen
        jsr blackColorTable

        jsr zeroSurroundGrid
        jsr eraseSurroundPixelBuffer

;        jsr borderInit

        jsr initObjectPositions

        jsr startGameSelectMode

        jsr normalColorTable

        rts

        
resetGame entry

        lda gameSelectMode
        cmp #1
        bne softReset
        
        jsr initObjectPositions
        
softReset anop

        lda #0
        sta gameSelectMode

        lda #0
        sta gameWon

; bring the dragons to life

        jsr resetDragons

; make the bat want something right away
        lda #$ff
        sta batFedUpTimer

; set the current room

        lda #ROOM_INDEX_CASTLE_YELLOW
        sta currentRoom

; position the player

        lda #$50
        adjustSpriteX
        sta playerX

        lda #$20
        adjustSpriteY
        sta playerY

; unlink all objects
        ldx #OBJECT_PLAYER
        lda #OBJECT_NONE
        sta >objectLinkedObjectList,x

        jsr drawRoom
        
        rts


runGameTick entry
        jsr doRunGameTick
        rtl


doRunGameTick entry

        lda doInitGame
        cmp #1
        bne dontInitGame
        jsr initGame

dontInitGame anop

        jsr waitForVbl

;        jsr borderStart

        jsr checkControls
        
        lda gameSelectMode
        cmp #1
        bne normalGameMode
        jsr runGameSelectMode
        rts

normalGameMode anop

        lda gamePass
        cmp #0
        beq pass0Short
        cmp #1
        beq pass1Short
        cmp #2
        beq pass2Short
        rts

pass0Short anop
        brl pass0
pass1Short anop
        brl pass1
pass2Short anop
        brl pass2

pass0 anop
        lda gameWon
        cmp #1
        bne gameNotWon
        inc gamePass
        jsr advanceFlashColor
        jsr movePlayerCarriedObject
        jsl eraseRoomSprites
        jsl drawRoomSprites
        rts
        
gameNotWon anop

        jsr runPlayer

        lda playerX
        sec
        sbc playerOldX
        sta playerXDiff

        lda playerY
        sec
        sbc playerOldY
        sta playerYDiff

        lda playerXDiff
        clc
        adc playerYDiff
        cmp #0
        beq noMovePass0

        lda playerMoved
        cmp #0
        beq noMovePass0

        dec surroundUpdateCounter
        lda surroundUpdateCounter
        bmi updateSurround
        bra dontUpdateSurround

updateSurround anop
        lda #4
        sta surroundUpdateCounter

        jsr doSurround
        
dontUpdateSurround anop
        jsr erasePlayer
noMovePass0 anop
        jsr drawPlayer

        inc gamePass
        bra passDone

pass1 anop

        inc gamePass

        jsr runPortals
        
        jsr collisionCheckPlayerWithWalls

        jsr collisionCheckPlayerWithObjects

        lda playerHitWall
        cmp #1
        beq hitPass1

        lda playerHitObject
        cmp #OBJECT_NONE
        bne hitPass1

        bra noHitPass1

hitPass1 anop

        jsr erasePlayerHit
        jsr erasePlayer
        jsr drawPlayer

noHitPass1 anop

        bra passDone

pass2 anop

        lda #0
        sta gamePass

        jsr checkAllObjectsForOverlap

        jsr runObjects

        jsr runDragons
        
        jsr runBat

        jsr runMagnet

        jsr movePlayerCarriedObject
        jsr moveLinkedObjects

        jsl eraseRoomSprites
        jsl drawRoomSprites

        jsr advanceFlashColor

passDone anop

        lda #0
        sta playerMoved
        sta playerHitWall

        lda currentRoom
        sta lastRoom


;        jsr borderStart

;        jsr borderDone


        rts
        
        
        
startGameSelectMode entry

        lda #1
        sta gameSelectMode
        
        lda #ROOM_INDEX_NUMBER_ROOM_PURPLE1
        sta currentRoom
        
        jsr drawRoom
        
        rts
        
        
runGameSelectMode entry

        ldx #OBJECT_NUMBERS
        
        lda >objectStateList,x
        sta >objectOldStateList,x
       
        lda gameLevel
        sta >objectStateList,x
        
        lda #1
        sta >objectDirtyList,x
        
        jsl eraseRoomSprites
        jsl drawRoomSprites

        rts
        
        


doInitGame dc i2'1'

playerXDiff dc i2'0'
playerYDiff dc i2'0'

temp dc i2'0'

surroundUpdateCounter dc i2'0'

        end


gameData data

gamePass dc i2'0'

gameLevel dc i2'0'

gameDifficultyLeft dc i2'0'
gameDifficultyRight dc i2'1'

gameWon dc i2'0'

gameSelectMode dc i2'1'

        end
