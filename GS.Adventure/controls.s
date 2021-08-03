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
        using gameData
        using objectData

    using batData


checkControls entry

        short i,m
        lda >KEYBOARD
        bpl checkKeysDone
        sta >KEYBOARD_STROBE
        long i,m
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

        cmp #'1'
        beq onReset
        
        cmp #'2'
        beq onSelect

        cmp #$20
        beq onJoystickButton

        cmp #'q'
        beq onQuit
        cmp #'Q'
        beq onQuit

checkKeysDone anop
        long i,m
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

onJoystickButton anop
        lda #1
        sta joystickButton
        rts

onReset anop
        jsr resetGame
        rts
        
onSelect anop
        lda gameSelectMode
        cmp #1
        bne startSelectMode
        
        ldx #OBJECT_NUMBERS
        lda #1
        sta >objectDirtyList,x

        inc gameLevel
        lda gameLevel
        cmp #3
        beq wrapLevel
        rts
        
startSelectMode anop
        jsr startGameSelectMode
        rts
        
wrapLevel anop
        lda #0
        sta gameLevel
        rts
        
onQuit anop
;        jsl signalQuit


        lda batFedUpTimer
        tax
        brk
        

        rts

        
        
        end


controlsData data


joystickUp dc i2'0'
joystickRight dc i2'0'
joystickDown dc i2'0'
joystickLeft dc i2'0'

joystickButton dc i2'0'


        end
