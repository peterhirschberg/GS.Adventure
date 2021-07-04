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
        using controlsData


runPlayer entry

;       lda playerX
;       sta playerOldX
;       lda playerY
;        sta playerOldY

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

joystickDone anop

        jsr wrapPlayerRoom

        rts


movePlayerUp entry
        lda playerY
        sec
        sbc #6
        sta playerY
        rts

movePlayerDown entry
        lda playerY
        clc
        adc #6
        sta playerY
        rts

movePlayerRight entry
        lda playerX
        clc
        adc #6
        sta playerX
        rts

movePlayerLeft entry
        lda playerX
        sec
        sbc #6
        sta playerX
        rts



drawPlayer entry

        lda playerX
;        sec
;       sbc #4
        sta rectX

        lda playerY
;       sec
;       sbc #6
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        lda currentRoomColor
        sta rectColor

        jsr drawSpriteRect

        rts


erasePlayer entry

        lda playerOldX
;        sec
;       sbc #4
        sta rectX

        lda playerOldY
;        sec
;       sbc #6
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        jsr eraseSpriteRect

        rts


erasePlayerHit entry

        lda playerHitX
;        sec
;       sbc #4
        sta rectX

        lda playerHitY
;        sec
;       sbc #6
        sta rectY

        lda #6
        sta rectWidth
        lda #8
        sta rectHeight

        jsr eraseSpriteRect

        rts

        end

playerData data

playerX dc i2'100'
playerY dc i2'100'

playerLastX dc i2'100'
playerLastY dc i2'100'

playerOldX dc i2'100'
playerOldY dc i2'100'

playerHitX dc i2'100'
playerHitY dc i2'100'

        end
