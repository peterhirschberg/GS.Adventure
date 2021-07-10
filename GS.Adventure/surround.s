;
;  surround.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/6/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


surround start
        using screenData
        using playerData
        using roomsData
        using surroundData


checkSurroundDrawDirty entry

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY


        lda rectX
        cmp surroundOldX
        beq checkDrawY
        lda #1
        sta surroundDrawDirty

checkDrawY anop

        lda rectY
        cmp surroundOldY
        beq checkDone1
        lda #1
        sta surroundDrawDirty

checkDone1 anop

        rts



checkSurroundEraseDirty entry

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX

        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY


        lda rectX
        cmp surroundX
        beq checkEraseY
        lda #1
        sta surroundEraseDirty

checkEraseY anop

        lda rectY
        cmp surroundY
        beq checkDone2
        lda #1
        sta surroundEraseDirty

checkDone2 anop

        rts





drawSurround entry

        jsr roomHasFog
        cmp #1
        beq hasFog1
        rts

hasFog1 anop

        lda playerX
        sec
        sbc #SURROUND_OFFSET_X
        and #$fff0
        sta rectX
        sta surroundX


        lda playerY
        sec
        sbc #SURROUND_OFFSET_Y
        and #$fff0
        sta rectY
        sta surroundY


        jsr checkSurroundDrawDirty
        lda surroundDrawDirty
        cmp #1
        beq startDraw
        rts

startDraw anop

; --------------------------------------

        lda rectY
        bmi drawMinusY
        cmp #$76
        bcs drawPositiveY
        bra drawOkayY

drawMinusY anop
        stz rectY
        stz surroundY
        bra drawOkayY

drawPositiveY anop
        lda #$76
        sta rectY
        sta surroundY

drawOkayY anop

        jsl drawSurroundSprite
        jmp drawDone

; --------------------------------------

        lda playerX
        cmp playerOldX
        beq checkY
        bcs drawRight
        bra drawLeft

drawLeft anop
        jsr drawSurroundLeft
        jsr drawSurroundTop
        jsr drawSurroundBottom
        bra drawDone

drawRight anop
        jsr drawSurroundRight
        jsr drawSurroundTop
        jsr drawSurroundBottom
        bra drawDone

checkY anop

        lda playerY
        cmp playerOldY
        beq drawDone
        bcs drawBottom
        bra drawTop

drawBottom anop
        jsr drawSurroundBottom
        jsr drawSurroundLeft
        jsr drawSurroundRight
        bra drawDone

drawTop anop
        jsr drawSurroundTop
        jsr drawSurroundLeft
        jsr drawSurroundRight

drawDone anop

; --------------------------------------

        lda surroundOldX
;---------------
;        sec
;        sbc #16

;        bmi isMinus
;       bra notMinus
;
;isMinus anop

;        lda #0

;notMinus anop

;---------------
        sta eraseX

        lda surroundOldY
        sta eraseY


        lda surroundX
        sta surroundOldX
        lda surroundY
        sta surroundOldY

        stz surroundDrawDirty

noDrawDone anop

        rts


drawSurroundTop entry

        lda surroundX
        sta rectX

        lda surroundY
        sta rectY

        lda #SURROUND_WIDTH
        sta rectWidth

        lda #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundBottom entry

        lda surroundX
        sta rectX

        lda surroundY
        clc
        adc #SURROUND_HEIGHT
        sec
        sbc #16
        sta rectY

        lda #SURROUND_WIDTH
        sta rectWidth

        lda #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundLeft entry

        lda surroundX
        sta rectX

        lda surroundY
        sta rectY

        lda #16
        sta rectWidth

        lda #SURROUND_HEIGHT
        sec
        sbc #16
        sta rectHeight

        jsl drawSurroundSprite

        rts

drawSurroundRight entry

        lda surroundX
        clc
        adc #SURROUND_WIDTH
        sec
        sbc #16
        sta rectX

        lda surroundY
        sta rectY

        lda #16
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight

        jsl drawSurroundSprite

        rts









eraseSurround entry

        jsr roomHasFog
        cmp #1
        beq hasFog2
        rts

hasFog2 anop

        jsr checkSurroundEraseDirty
        lda surroundEraseDirty
        cmp #1
        beq startErase
        rts

startErase anop

        lda eraseX
        sta rectX
        lda eraseY
        sta rectY

        lda rectY
        bmi eraseMinusY
        cmp #$76
        bcs erasePositiveY
        bra eraseOkayY

eraseMinusY anop
        stz rectY
        stz eraseY
        bra eraseOkayY

erasePositiveY anop
        lda #$76
        sta rectY
        sta eraseY

eraseOkayY anop

        jsl eraseSurroundSprite
        stz surroundEraseDirty

        rts


; ---------------------------------------------


        lda playerX
        cmp playerOldX
        beq checkY1
        bcs eraseLeft
        bra eraseRight

eraseLeft anop
        jsr eraseSurroundLeft
        jsr eraseSurroundTop
        jsr eraseSurroundBottom
        stz surroundEraseDirty
        bra checkY1

eraseRight anop
        jsr eraseSurroundRight
        jsr eraseSurroundTop
        jsr eraseSurroundBottom
        stz surroundEraseDirty

checkY1 anop

        lda playerY
        cmp playerOldY
        beq skipEraseY
        bcs eraseTop
        bra eraseBottom

eraseBottom anop
        jsr eraseSurroundBottom
        jsr eraseSurroundLeft
        jsr eraseSurroundRight
        stz surroundEraseDirty
        bra eraseDone

eraseTop anop
        jsr eraseSurroundTop
        jsr eraseSurroundLeft
        jsr eraseSurroundRight
        stz surroundEraseDirty
        bra eraseDone

skipEraseY anop
        stz surroundEraseDirty

eraseDone anop


        rts



eraseSurroundTop entry

        lda eraseX
        sta rectX

        lda eraseY
        sta rectY

        lda #SURROUND_WIDTH
;---------------
;        clc
;        adc #32
;---------------
        sta rectWidth

        lda #16
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundBottom entry


        lda eraseX
        sta rectX

        lda eraseY
        clc
        adc #SURROUND_HEIGHT
;        sec
;        sbc #16
        sta rectY

        lda #SURROUND_WIDTH
;---------------
        clc
        adc #16
;---------------
        sta rectWidth

        lda #16
        sta rectHeight


;    lda #COLOR_RED
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundLeft entry

        lda eraseX
        sta rectX

        lda eraseY
        sta rectY

        lda #12
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts

eraseSurroundRight entry

        lda eraseX
        clc
        adc #SURROUND_WIDTH
;---------------
;        clc
;        adc #32
;---------------
;        clc
;        adc #16
        sta rectX

        lda eraseY
        sta rectY

        lda #12
        sta rectWidth

        lda #SURROUND_HEIGHT
        sta rectHeight


;    lda #COLOR_BLUE
;    sta rectColor

;    jsr drawSpriteRect

        jsl eraseSurroundSprite

        rts


; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////
; ////////////////////////////////////////


runSurround entry

        inc surroundGenId
        lda surroundGenId
        cmp #$ff
        bne runSurroundContinue
        lda #1
        sta surroundGenId
        
runSurroundContinue anop

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX

        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        clc
        adc #1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------
        
        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------
        
        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------
        
        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

        
; ##################################

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue


; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX

        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        clc
        adc #1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
        
; ##################################

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue


; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX

        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        clc
        adc #1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
        
; ##############################
; ##############################


        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX

        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        clc
        adc #1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
        
; ##################################

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue


; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX

        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY

        lda surroundY
        clc
        adc #1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue

; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-1
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
; ----------------------

        lda playerX
        jsr pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        jsr pixelToSurroundGrid
        sta surroundY
        
        lda surroundY
        clc
        adc #-2
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        setSurroundGridValue
        
        
        rts

        
        
pixelToSurroundGrid entry
        lsr a
        lsr a
        lsr a
        lsr a
        rts
        
        

renderSurroundGrid entry

        lda #0
        sta rowCounter

renderSurroundVLoop anop
        lda #0
        sta colCounter

renderSurroundHLoop anop

        lda rowCounter
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress

        lda colCounter

        clc
        adc rowAddress
        asl a
        
        tax
        lda >SURROUND_GRID_ADDR,x
        cmp #0
        beq renderSurroundSkipBlock
        cmp surroundGenId
        bne renderSurroundSkipBlock

; render this block

        lda colCounter
        asl a
        asl a
        asl a
        asl a
        sta rectX

        lda rowCounter
        asl a
        asl a
        asl a
        asl a
        sta rectY

        lda #12
        sta rectWidth

        lda #16
        sta rectHeight

        lda #COLOR_ORANGE
        sta rectColor

        jsr drawSurroundChunk

renderSurroundSkipBlock anop
        inc colCounter
        lda colCounter
        cmp #20
        beq renderSurroundGridRowDone
        bra renderSurroundHLoop

renderSurroundGridRowDone anop
        stz colCounter
        inc rowCounter
        lda rowCounter
        cmp #13
        beq renderSurroundDone
        bra renderSurroundVLoop

renderSurroundDone anop

        rts



eraseSurroundGrid entry

        lda #0
        sta rowCounter

eraseSurroundVLoop anop
        lda #0
        sta colCounter

eraseSurroundHLoop anop

        lda rowCounter
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress

        lda colCounter

        clc
        adc rowAddress
        asl a
        
        tax
        lda >SURROUND_GRID_ADDR,x
        cmp #0
        beq eraseSurroundSkipBlock
        cmp surroundGenId
        bne eraseSurroundSkipBlock

; erase this block

        lda colCounter
        asl a
        asl a
        asl a
        asl a
        sta rectX

        lda rowCounter
        asl a
        asl a
        asl a
        asl a
        sta rectY

        lda #12
        sta rectWidth

        lda #16
        sta rectHeight

        lda #COLOR_ORANGE
        sta rectColor

        jsr eraseSurroundChunk

eraseSurroundSkipBlock anop
        inc colCounter
        lda colCounter
        cmp #20
        beq eraseSurroundGridRowDone
        bra eraseSurroundHLoop

eraseSurroundGridRowDone anop
        stz colCounter
        inc rowCounter
        lda rowCounter
        cmp #13
        beq eraseSurroundDone
        bra eraseSurroundVLoop

eraseSurroundDone anop

        rts
        
        
        
        
zeroSurroundGrid entry
        lda #0
        sta rowCounter

zeroSurroundVLoop anop
        lda #0
        sta colCounter

zeroSurroundHLoop anop

        lda rowCounter
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda colCounter
        asl a
        clc
        adc rowAddress
        tax
        lda #0
        sta >SURROUND_GRID_ADDR,x

        inc colCounter
        lda colCounter
        cmp #20
        beq zeroSurroundGridRowDone
        bra zeroSurroundHLoop

zeroSurroundGridRowDone anop
        lda #0
        sta colCounter
        inc rowCounter
        lda rowCounter
        cmp #26
        beq zeroSurroundDone
        bra zeroSurroundVLoop

zeroSurroundDone anop

        rts
        

     bra here
        ldx #0
        lda surroundGridRowOffsets,x
        clc
        adc #2
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x


        ldx #1
        lda surroundGridRowOffsets,x
        clc
        adc #2
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x

here anop

        lda #4
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda #2
        asl a
        clc
        adc rowAddress
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x


        lda #4
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda #4
        asl a
        clc
        adc rowAddress
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x

        
        lda #5
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda #2
        asl a
        clc
        adc rowAddress
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x
        
        
        lda #5
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda #4
        asl a
        clc
        adc rowAddress
        tax
        lda #1
        sta >SURROUND_GRID_ADDR,x


        rts




; divide X & Y by 16

; 320 / 16
; 200 / 16
;
; 20 x 12 block size

surroundGridRowOffsets anop
        dc i2'0'
        dc i2'32'
        dc i2'64'
        dc i2'96'
        dc i2'128'
        dc i2'160'
        dc i2'192'
        dc i2'224'
        dc i2'256'
        dc i2'288'
        dc i2'320'
        dc i2'352'
        dc i2'384'
        dc i2'416'
        dc i2'448'
        dc i2'480'
        dc i2'512'
        dc i2'544'
        dc i2'576'
        dc i2'608'
        dc i2'640'
        dc i2'672'
        dc i2'704'
        dc i2'736'
        dc i2'768'


surroundDrawDirty dc i2'0'
surroundEraseDirty dc i2'0'

surroundX dc i2'0'
surroundY dc i2'0'

surroundOldX dc i2'0'
surroundOldY dc i2'0'

eraseX dc i2'0'
eraseY dc i2'0'


rowCounter dc i2'0'
colCounter dc i2'0'

rowAddress dc i4'0'

surroundGenId dc i2'0'


SURROUND_WIDTH gequ 80
SURROUND_HEIGHT gequ 80
SURROUND_OFFSET_X gequ 32
SURROUND_OFFSET_Y gequ 32


        end

surroundData data

surroundAllDirty dc i2'1'

SURROUND_GRID_ADDR gequ $0a0000

        end

