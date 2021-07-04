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


initGame entry
        jsr setupScreen
        jsr initColorTable

        jsr borderInit

        jsr fillScreen

; ---------------

        lda #COLOR_YELLOW
        sta currentRoomColor

        jsr drawRoom

; ---------------

        rtl


runGameTick entry

        jsr waitForVbl

        jsr borderStart

; ---------------

        jsr checkControls

; ---------------

        lda gamePass
        cmp #0
        beq pass0
        cmp #1
        beq pass1
        cmp #2
        beq pass2

pass0 anop
        jsr runPlayer

        lda playerHitWall
        cmp #1
        bne noHitPass0
        jsr erasePlayerHit

noHitPass0 anop

        lda playerMoved
        cmp #1
        bne noMovePass0

        jsr erasePlayer
        jsr drawPlayer

noMovePass0 anop

        inc gamePass
        bra passDone

pass1 anop

        inc gamePass
        jsr collisionCheckPlayerWithWalls

        lda playerHitWall
        cmp #1
        bne noHitPass1

        lda playerMoved
        cmp #1
        bne noMovePass1

        jsr erasePlayer
        jsr drawPlayer

noMovePass1 anop
noHitPass1 anop

        bra passDone

pass2 anop

        lda #0
        sta gamePass

passDone anop

        jsr borderDone

        rtl





        end

gameData data

;currentRoom dc i2'ROOM_INDEX_CASTLE'
currentRoom dc i2'ROOM_INDEX_BELOW_YELLOW_CASTLE'

currentRoomColor dc i2'0'

gamePass dc i2'0'

        end
