;
;  portals.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/18/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on

portals start
        using globalData
        using gameData
        using playerData
        using objectData
        using collisionData

runPortals entry
        jsr hitTestPortals
        jsr animatePortals
        rts


hitTestPortals entry

; do hit testing with keys

        lda #OBJECT_YELLOWKEY
        sta hitTestObjectB
        lda #OBJECT_PORT1
        sta hitTestObjectA
        jsr collisionCheckObjects
        cmp #1
        beq hitPort1

        jmp port1Done

hitPort1 anop
        ldx #OBJECT_PORT1
        lda >objectStateList,x
        cmp #0
        beq port1ToOpen
        cmp #6
        beq port1ToClose
        bra port1Done

port1ToOpen anop

        lda #1
        sta portal1RunState
        lda #1
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port1Done

port1ToClose anop

        lda #-1
        sta portal1RunState
        lda #5
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port1Done

port1Done anop
        rts


animatePortals entry

; run the portal states up and down

        dec portalRunTimer
        lda portalRunTimer
        bmi runPorts

        jmp animateDone

runPorts anop

        lda #2
        sta portalRunTimer

        lda portal1RunState
        cmp #0
        beq animateDone

        ldx #OBJECT_PORT1

        lda #1
        sta >objectDirtyList,x

        lda >objectStateList,x
        clc
        adc portal1RunState
        sta >objectStateList,x

        lda >objectStateList,x
        bmi port1ResetToClosed
        cmp #6
        bcs port1ResetToOpen

        jmp animateDone

port1ResetToClosed anop
        lda #0
        sta >objectStateList,x
        lda #0
        sta portal1RunState
        jmp animateDone

port1ResetToOpen anop
        lda #6
        sta >objectStateList,x
        lda #0
        sta portal1RunState

animateDone anop

        rts


portal1RunState dc i2'0'
portal2RunState dc i2'0'
portal3RunState dc i2'0'

portalRunTimer dc i2'0'

        end
