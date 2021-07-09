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
        jsr blackColorTable

;        jsr borderInit

; -------------------------------
; set up game

;        lda #ROOM_INDEX_CASTLE_YELLOW

    lda #ROOM_INDEX_BELOW_YELLOW_CASTLE_LIME

        sta currentRoom

    lda #100

;        lda #$45
        sta playerX
;        lda #$85
        sta playerY

; -------------------------------

        jsr drawRoom

        jsr normalColorTable

        rtl


runGameTick entry

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

        lda playerHitWall
        cmp #1
        bne noHitPass0
        jsr erasePlayerHit

noHitPass0 anop

        lda playerMoved
        cmp #1
        bne noMovePass0

        jsr eraseSurround
        jsr erasePlayer
        jsr drawSurround
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

        stz playerMoved
        stz playerHitWall

        lda currentRoom
        sta lastRoom

;        jsr borderDone

        rtl





        end

gameData data

gamePass dc i2'0'

gameLevel dc i2'1'

        end
