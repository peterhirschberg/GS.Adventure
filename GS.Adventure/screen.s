;
;  screen.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/27/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

screen start
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



; sets all pixels to 0
newRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth


        lda rectHeight
        sta rowCounter

rowLoop anop

        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        sta rowOffset

        lda #0
        sta columnCounter

        lda rectX
        sta cx

rectColumnLoop anop

        lda rowOffset
        clc
        adc cx
        tax

        lda rectColor
        sta >SCREEN_ADDR,x

        inc columnCounter
        lda columnCounter
        cmp rectWidth
        beq rectColumnDone
        inc cx
        jmp rectColumnLoop

rectColumnDone anop

        dec rowCounter
        lda rowCounter
        bmi rectDone
        jmp rowLoop

rectDone anop
        rts








; fills the screen with the background color using fill mode
fillScreen entry
        lda #0
        sta rowCounter
fillLoop anop
        lda rowCounter
        asl a
        tax
        lda screenRowOffsets,x
        tax
        lda #COLOR_LTGRAY
        sta >SCREEN_ADDR,x
        inc rowCounter
        lda rowCounter
        cmp #199
        beq fillDone
        bra fillLoop
fillDone anop
        rts



; set all pixels to 0
zeroScreen entry
        lda #0
        sta offset
loop anop
        tax
;        lda #COLOR_LTGRAY
        lda #COLOR_BLACK
        sta >SCREEN_ADDR,x
        inc offset
        lda offset
        cmp #$7d00
        beq done
        bra loop
done anop
        rts



drawRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter
fillLoop1 anop
        lda rowCounter
        clc
        adc rectY

        bmi nextRow1
        cmp #199
        bcs nextRow1

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax
        lda rectColor
        sta >SCREEN_ADDR,x

; bounds check
        lda rectX
        clc
        adc rectWidth
        cmp #159
        bcs nextRow1

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        clc
        adc rectWidth
        tax
; background color here???
        lda #COLOR_LTGRAY
        sta >SCREEN_ADDR,x

nextRow1 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone1
        bra fillLoop1
fillDone1 anop
        rts


eraseRect entry

        lda rectX
        lsr a
        sta rectX

        lda rectWidth
        lsr a
        sta rectWidth

        lda #0
        sta rowCounter
fillLoop2 anop
        lda rowCounter
        clc
        adc rectY

        bmi nextRow2
        cmp #199
        bcs nextRow2

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda #0
        sta >SCREEN_ADDR,x

; bounds check
        lda rectX
        clc
        adc rectWidth
        cmp #159
        bcs nextRow2

        lda rowCounter
        clc
        adc rectY
        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        clc
        adc rectWidth
        tax

        lda #0
        sta >SCREEN_ADDR,x

nextRow2 anop
        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq fillDone2
        bra fillLoop2
fillDone2 anop
        rts


; sets all pixels to 0
zeroScreen2 entry
        lda #199
        sta rowCounter

zeroRowLoop anop

        ldx rowCounter
        lda screenRowOffsets,x
        sta rowOffset

        lda #319
        sta columnCounter

zeroColumnLoop anop

        lda rowOffset
        clc
        adc columnCounter
        tax

        lda #$ff
        sta >SCREEN_ADDR,x

        dec columnCounter

        lda columnCounter
        bmi zeroColumnDone
        jmp zeroColumnLoop

zeroColumnDone anop

        dec rowCounter
        lda rowCounter
        bmi zeroDone
        jmp zeroRowLoop

zeroDone anop
        rts


;
; JOEYLIB BELOW
;
;----------------------------------------
; Turns off SHR Graphics
;----------------------------------------
asmGrOff entry
;	short	m
	lda	>$E1C029
	and	#$7F
	sta	>$E1C029
;	long	m
	rts


;----------------------------------------
; Turns on SHR Graphics
;----------------------------------------
asmGrOn entry
;	short	m
	lda	>$E1C029
	ora	#$C1
	sta	>$E1C029
;	long	m
    rts




; Credit for the code below goes to Jeremy Rand - author of BuGS


setupScreen entry
;        short i,m
        lda >SHADOW_REGISTER     ; Enable shadowing of SHR
        and #$f7
        sta >SHADOW_REGISTER

        lda #$a1
        sta >NEW_VIDEO_REGISTER     ; Enable SHR mode
        lda >BORDER_COLOUR_REGISTER
;        long i,m
        and #$000f
        sta borderColour

;		short i,m
		lda >BORDER_COLOUR_REGISTER
		and #$f0
		sta >BORDER_COLOUR_REGISTER
;		long i,m

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


setupScreen2 entry

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
nextWord2 anop
        phx
        dey
        dey
        bpl nextWord2

        lda >STATE_REGISTER
        and #$ffcf
        sta >STATE_REGISTER
        lda backupStack
        tcs
        pld
        cli

        rts


backupStack     dc i2'0'
borderColour    dc i2'0'

columnCounter dc i2'0'
rowCounter dc i2'0'
rowOffset dc i4'0'
offset dc i4'0'
rowAddress dc i4'0'
cx dc i2'0'

        end

screenData data

rectX dc i2'0'
rectY dc i2'0'
rectWidth dc i2'0'
rectHeight dc i2'0'
rectColor dc i2'0'


        end
