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
        using controlsData
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

        jsr soundInit

        jsr blackColorTable
        
        jsr drawSplashBase

        rts
        

postSplashInitGame entry

        jsr blackColorTable

        jsr zeroSurroundGrid
        jsr eraseSurroundPixelBuffer

        jsr initObjectPositions

        jsr startGameSelectMode
        
        jsr normalColorTable

        rts

        
resetGame entry

        jsr dropCarriedObject
        jsr unlinkAllObjects

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

        jsr checkControls
        
        lda doSplashScreen
        cmp #1
        bne checkSelectMode
        
        jsr runSplashScreen
        rts

checkSelectMode anop
        
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
        cmp #0
        beq noHitWallPass1
        bra hitWallPass1

noHitWallPass1 anop

        lda playerHitObject
        cmp #OBJECT_NONE
        beq noHitPass1

hitWallPass1 anop

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

        
runSplashScreen entry

        lda splashSpritesDirty
        cmp #1
        bne dontDrawSplashSprites

        lda #0
        sta splashSpritesDirty
        
        jsr drawSplashSprites

dontDrawSplashSprites anop

        lda joystickButton
        cmp #1
        bne notJoyStickButton
        
        lda #0
        sta doSplashScreen
        jsr postSplashInitGame
        
        rts
        
notJoyStickButton anop

        rts
        

; Thanks to Antoine Vignau for this code

saveState entry
        tdc
        sta mydp
        tsx
        stx mysp
        rtl


restoreState entry
        clc
        xce
        rep #$30
        ldx mysp
        txs
        lda mydp
        tcd
        rtl


doInitGame dc i2'1'

playerXDiff dc i2'0'
playerYDiff dc i2'0'

temp dc i2'0'

surroundUpdateCounter dc i2'0'

mydp dc i4'0'
mysp dc i4'0'


        end


gameData data

gamePass dc i2'0'

gameLevel dc i2'0'

gameDifficultyLeft dc i2'0'
gameDifficultyRight dc i2'1'

gameWon dc i2'0'

gameSelectMode dc i2'1'

doSplashScreen dc i2'1'

splashSpritesDirty dc i2'1'

        end
