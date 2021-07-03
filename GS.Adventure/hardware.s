;
;  hardware.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/2/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        mcopy 13:ORCAInclude:m16.ORCA
        case on


hardware start
        using globalData
        using screenData
        using colorData



; Set the SCB to fill mode for all 200 screen rows
initSCB entry
        lda #0
        sta rowCounter
        ldx #0
initLoop anop
        lda >SCB_BASE,x
        ora #FILL_MODE
        sta >SCB_BASE,x
        inc rowCounter
        lda rowCounter
        cmp #199
        beq initDone
        inx
        jmp initLoop
initDone anop
        rts



shadowingOff entry
        short m
        lda >$E0C035
        ora #$08
        sta >$E0C035
        long m
        rts


shadowingOn entry
        short m
        lda >$E0C035
        and #$F7
        sta >$E0C035
        long m
        rts


interruptsOff entry
        short m
        sta >$00C004
        sta >$00C002
        long m
        lda EntryStack
        tcs
        lda EntryDP
        tcd
        cli
        rts

interruptsOn entry
        tdc
        sta EntryDP
        tsc
        sta EntryStack
        sei
        short m
        sta >$00C005
        sta >$00C003
        long m
        rts



;  ...stuff
;  jsr setR0W1
;  jsr shadowingOff
;  jsr eraseWithBackgroundFromBank00
;  jsr setR1W1
;  jsr drawNewStuffInBank01
;  jsr shadowingOn
;  jsr bitbltDirtyRectangles
;  jsr setR0W0



; Thanks to Jesse Blue for this code ----------------------------------

; during init of your program:
borderInit entry
        short m
        lda >$00c034 ;black border
        and #$f0
        sta >$00c034
        long m
        rts

; before you start to erase/draw
borderStart entry
        short m
        lda >$00c034
        inc a
        sta >$00c034
        long m
        rts

; at the end of changing pixels on the screen
borderDone entry
        short m
        lda >$00c034 ;black border
        and #$f0
        sta >$00c034
        long m
        rts




; Credit for the code below goes to Jeremy Rand - author of BuGS

setupScreen entry

        lda >BORDER_COLOR_REGISTER
        and #$f0
        sta >BORDER_COLOR_REGISTER

        sei
        phd
        tsc
        sta backupStack
        lda >STATE_REGISTER      ; Direct Page and Stack in Bank 01/
        ora #$0030
        sta >STATE_REGISTER
        ldx #$0000

        lda #$9dfe
        tcs
        ldy #$7e00
nextWord anop
        phx
        dey
        dey
        bpl nextWord

        lda >STATE_REGISTER
        and #$ffcf
        sta >STATE_REGISTER
        lda backupStack
        tcs
        pld
        cli

        rts


waitForBeam entry
beamLoop anop
        lda >VERTICAL_COUNTER     ; load the counter value
        and #$80ff                ; mask out the VBL bits
        asl a                     ; shift the word around
        adc #0                    ; move MSB -> LSB
        cmp #$1c8
        bge beamLoop
        rtl


waitForVbl entry
vblLoop1 anop
		short m
		lda #$fe
		cmp >READ_VBL
		bpl vblLoop1
vblLoop2 anop
		cmp >READ_VBL
		bmi vblLoop2
		long m
		rtl



backupStack     dc i2'0'

EntryDP dc i2'0'
EntryStack dc i2'0'

StackPtr dc i2'0'

rowCounter dc i2'0'

        end
