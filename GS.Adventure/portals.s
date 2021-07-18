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

; do hit testing with keys

        lda #OBJECT_YELLOWKEY
        sta hitTestObjectB
        lda #OBJECT_PORT1
        sta hitTestObjectA
        jsr collisionCheckObjects
        cmp #1
        beq hitPort1

        jmp hitTestDone

hitPort1 anop
        ldx #OBJECT_PORT1
        lda >objectStateList,x
        cmp #0
        beq port1ToOpen
        cmp #6
        beq port1ToOpen
        bra port1Done

port1ToOpen anop

        lda #1
        sta portal1RunState
        bra port1Done

port1ToClose anop

        lda #-1
        sta portal1RunState
        bra port1Done

port1Done anop

; run the portal states up and down

        dec portalRunTimer
        lda portalRunTimer
        bmi runPorts

        jmp hitTestDone

runPorts anop

        lda #4
        sta portalRunTimer

        lda portal1RunState
        cmp #0
        jmp hitTestDone

        ldx #OBJECT_PORT1
        lda >objectStateList,x
        clc
        adc portal1RunState
        bmi port1ResetToClosed
        cmp #6
        bcs port1ResetToOpen

        sta >objectStateList,x

        lda #1
        sta >objectDirtyList,x
        jmp hitTestDone

port1ResetToClosed anop
        lda #0
        sta >objectStateList,x
        lda #0
        sta portal1RunState

        lda #1
        sta >objectDirtyList,x
        jmp hitTestDone

port1ResetToOpen anop
        lda #6
        sta >objectStateList,x
        lda #0
        sta portal1RunState

        lda #1
        sta >objectDirtyList,x

hitTestDone anop

        rts


portal1RunState dc i2'0'
portal2RunState dc i2'0'
portal3RunState dc i2'0'

portalRunTimer dc i2'0'

        end
