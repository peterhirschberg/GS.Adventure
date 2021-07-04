;
;  controls.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/4/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


controls start
        using globalData
        using controlsData


checkControls entry

;        short i,m
        lda >KEYBOARD
        bpl checkKeysDone
        sta >KEYBOARD_STROBE
;        long i,m
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
;        long i,m
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