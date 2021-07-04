;
;  controls.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/4/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on


controls start
        using globalData
        using controlsData


checkControls entry

        lda #0
        sta joystickUp
        sta joystickRight
        sta joystickDown
        sta joystickLeft

        lda >KEYBOARD
        bpl checkKeysDone
        sta >KEYBOARD_STROBE
        and #$007f

        cmp #'w'
        beq onJoystickUp
        cmp #'W'
        beq onJoystickUp

        cmp #'s'
        beq onJoystickDown
        cmp #'S'
        beq onJoystickDown

        cmp #'d'
        beq onJoystickRight
        cmp #'D'
        beq onJoystickRight

        cmp #'a'
        beq onJoystickLeft
        cmp #'A'
        beq onJoystickLeft

checkKeysDone anop
        rts

onJoystickUp anop
        lda #1
        sta joystickUp
        rts

onJoystickDown anop
        lda #1
        sta joystickDown
        rts

onJoystickLeft anop
        lda #1
        sta joystickLeft
        rts

onJoystickRight anop
        lda #1
        sta joystickRight
        rts


        end


controlsData data


joystickUp dc i2'0'
joystickRight dc i2'0'
joystickDown dc i2'0'
joystickLeft dc i2'0'


        end
