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


initGame entry
        lda #0
        sta doInitGame

        jsr setupScreen
        jsr blackColorTable

        jsr zeroSurroundGrid
        jsr eraseSurroundPixelBuffer

;        jsr borderInit

; -------------------------------
; set up game

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

; initialize object positions (only on full reset)

        jsr initObjectPositions

; -------------------------------

        jsr drawRoom

        jsr normalColorTable

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

        lda gamePass
        cmp #0
        beq pass0
        cmp #1
        beq pass1
        cmp #2
        beq pass2

pass0 anop
        jsr runPlayer

        lda playerMoved
        cmp #1
        bne noMovePass0

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

        jsr collisionCheckPlayerWithWalls

        jsr collisionCheckPlayerWithObjects

        lda playerHitWall
        cmp #1
        beq hitPass1

        lda playerHitObject
        cmp #0
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

        jsr runObjects

; run object movement here?

        jsr moveCarriedObject

        jsl eraseRoomSprites

passDone anop

        stz playerMoved
        stz playerHitWall

        lda currentRoom
        sta lastRoom


;        jsr borderStart


        jsl drawRoomSprites


;        jsr borderStart
        

        lda temp
        sta >spriteX
        lda #40
        sta >spriteY
        
        jsr roomHasFog
        cmp #1
        beq eraseWithFog
;        jsr eraseSpriteDragon
        bra eraseDone
eraseWithFog anop
;        jsr eraseSpriteDragonFog
eraseDone anop

        inc temp
        inc temp
        lda temp
        cmp #320
        beq resetTemp
        cmp #319
        beq resetTemp
        bra continue
        
resetTemp anop
        lda #0
        sta temp
        
continue anop

        lda temp
        sta >spriteX
        lda #40
        sta >spriteY
;        jsr drawSpriteRedDragon

        
;        jsr borderDone

        rts


doInitGame dc i2'1'
temp dc i2'0'


        end


gameData data

gamePass dc i2'0'

gameLevel dc i2'0'

surroundUpdateCounter dc i2'0'

        end
