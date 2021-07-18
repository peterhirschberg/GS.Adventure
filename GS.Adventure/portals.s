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

        jsr hitTestPortal1
        jsr hitTestPortal2
        jsr hitTestPortal3

        dec portalRunTimer
        lda portalRunTimer
        bmi runPorts

        jmp portalsDone

runPorts anop

        lda #2
        sta portalRunTimer

        jsr animatePortal1
        jsr animatePortal2
        jsr animatePortal3

portalsDone anop
        rts


hitTestPortal1 entry

; do hit testing with key

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


hitTestPortal2 entry

; do hit testing with key

        lda #OBJECT_WHITEKEY
        sta hitTestObjectB
        lda #OBJECT_PORT2
        sta hitTestObjectA
        jsr collisionCheckObjects
        cmp #1
        beq hitPort2

        jmp port2Done

hitPort2 anop
        ldx #OBJECT_PORT2
        lda >objectStateList,x
        cmp #0
        beq port2ToOpen
        cmp #6
        beq port2ToClose
        bra port2Done

port2ToOpen anop

        lda #1
        sta portal2RunState
        lda #1
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port2Done

port2ToClose anop

        lda #-1
        sta portal2RunState
        lda #5
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port2Done

port2Done anop
        rts


hitTestPortal3 entry

; do hit testing with key

        lda #OBJECT_BLACKKEY
        sta hitTestObjectB
        lda #OBJECT_PORT3
        sta hitTestObjectA
        jsr collisionCheckObjects
        cmp #1
        beq hitPort3

        jmp port3Done

hitPort3 anop

        ldx #OBJECT_PORT3
        lda >objectStateList,x
        cmp #0
        beq port3ToOpen
        cmp #6
        beq port3ToClose
        bra port3Done

port3ToOpen anop

        lda #1
        sta portal3RunState
        lda #1
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port3Done

port3ToClose anop

        lda #-1
        sta portal3RunState
        lda #5
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

        bra port3Done

port3Done anop
        rts


animatePortal1 entry
; run the portal state up and down

        lda portal1RunState
        cmp #0
        beq animatePort1Done

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

        jmp animatePort1Done

port1ResetToClosed anop
        lda #0
        sta >objectStateList,x
        lda #0
        sta portal1RunState
        jmp animatePort1Done

port1ResetToOpen anop
        lda #6
        sta >objectStateList,x
        lda #0
        sta portal1RunState

animatePort1Done anop
        rts


animatePortal2 entry
; run the portal state up and down

        lda portal2RunState
        cmp #0
        beq animatePort2Done

        ldx #OBJECT_PORT2

        lda #1
        sta >objectDirtyList,x

        lda >objectStateList,x
        clc
        adc portal2RunState
        sta >objectStateList,x

        lda >objectStateList,x
        bmi port2ResetToClosed
        cmp #6
        bcs port2ResetToOpen

        jmp animatePort2Done

port2ResetToClosed anop
        lda #0
        sta >objectStateList,x
        lda #0
        sta portal2RunState
        jmp animatePort2Done

port2ResetToOpen anop
        lda #6
        sta >objectStateList,x
        lda #0
        sta portal2RunState

animatePort2Done anop
        rts


animatePortal3 entry
; run the portal state up and down

        lda portal3RunState
        cmp #0
        beq animatePort3Done

        ldx #OBJECT_PORT3

        lda #1
        sta >objectDirtyList,x

        lda >objectStateList,x
        clc
        adc portal3RunState
        sta >objectStateList,x

        lda >objectStateList,x
        bmi port3ResetToClosed
        cmp #6
        bcs port3ResetToOpen

        jmp animatePort3Done

port3ResetToClosed anop
        lda #0
        sta >objectStateList,x
        lda #0
        sta portal3RunState
        jmp animatePort3Done

port3ResetToOpen anop
        lda #6
        sta >objectStateList,x
        lda #0
        sta portal3RunState

animatePort3Done anop
        rts




portal1RunState dc i2'0'
portal2RunState dc i2'0'
portal3RunState dc i2'0'

portalRunTimer dc i2'0'

        end
