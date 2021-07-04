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

        rts



onJoystickUp anop
        jsr movePlayerUp
        rts

onJoystickDown anop
        jsr movePlayerDown
        rts

onJoystickRight anop
        jsr movePlayerRight
        rts

onJoystickLeft anop
        jsr movePlayerLeft
        rts



movePlayerUp entry
        dec playerY
        rts

movePlayerDown entry
        inc playerY
        rts

movePlayerRight entry
        inc playerX
        rts

movePlayerLeft entry
        dec playerX
        rts



drawPlayer entry

        lda playerX
        sta rectX

        lda playerY
        sta rectY

        lda #10
        sta rectWidth
        lda #11
        sta rectHeight

        lda currentRoomColor
        sta rectColor

        jsr drawSpriteRect

        rts


erasePlayer entry

        lda playerOldX
        sta rectX

        lda playerOldY
        sta rectY

        lda #10
        sta rectWidth
        sta rectHeight

        jsr eraseSpriteRect

        rts


        end

playerData data

playerX dc i2'100'
playerY dc i2'100'

playerOldX dc i2'100'
playerOldY dc i2'100'


        end
