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


        
doSurround entry

        jsl roomHasFog
        cmp #1
        bne dontDoSurround

        jsr setStaleSurroundGrid
        jsr runSurround
        jsr eraseSurroundGrid
        jsr renderSurroundGrid
        
dontDoSurround anop
        
        rts
        

runSurround entry

        lda playerX
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX

        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX

        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX

        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX

        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX

        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        pixelToSurroundGrid
        sta surroundX
        
        lda playerY
        pixelToSurroundGrid
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
        
        lda surroundX
        sta surroundOldX
        lda surroundY
        sta surroundOldY
        
        rts

        

renderSurroundGrid entry

        lda #0
        sta surroundUpdated

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
        cmp #SURROUND_DRAW
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
        
        lda #1
        sta surroundUpdated

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

        lda surroundUpdated
        cmp #1
        beq surroundWasUpdated
        rts

surroundWasUpdated anop
        jsl dirtyAllSprites
        jsl drawRoomSprites
        rts

        
setStaleSurroundGrid entry

        ldy #SURROUND_ERASE

        lda surroundOldY
        asl a
        asl a
        bmi skip1
        cmp #24
        bcs skip1
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip1 anop

        lda surroundOldY
        clc
        adc #1
        asl a
        asl a
        bmi skip2
        cmp #24
        bcs skip2
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip2 anop

        lda surroundOldY
        clc
        adc #2
        asl a
        asl a
        bmi skip3
        cmp #24
        bcs skip3
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip3 anop

        lda surroundOldY
        clc
        adc #-1
        asl a
        asl a
        bmi skip4
        cmp #24
        bcs skip4
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip4 anop

        lda surroundOldY
        clc
        adc #-2
        asl a
        asl a
        bmi skip5
        cmp #24
        bcs skip5
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

        
; ##################################
skip5 anop

        lda surroundOldY
        asl a
        asl a
        bmi skip6
        cmp #24
        bcs skip6
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue


; ----------------------
skip6 anop

        lda surroundOldY
        clc
        adc #1
        asl a
        asl a
        bmi skip7
        cmp #24
        bcs skip7
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip7 anop

        lda surroundOldY
        clc
        adc #2
        asl a
        asl a
        bmi skip8
        cmp #24
        bcs skip8
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip8 anop

        lda surroundOldY
        clc
        adc #-1
        asl a
        asl a
        bmi skip9
        cmp #24
        bcs skip9
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip9 anop

        lda surroundOldY
        clc
        adc #-2
        asl a
        asl a
        bmi skip10
        cmp #24
        bcs skip10
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
        
; ##################################
skip10 anop

        lda surroundOldY
        asl a
        asl a
        bmi skip11
        cmp #24
        bcs skip11
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

        
; ----------------------
skip11 anop

        lda surroundOldY
        clc
        adc #1
        asl a
        asl a
        bmi skip12
        cmp #24
        bcs skip12
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip12 anop

        lda surroundOldY
        clc
        adc #2
        asl a
        asl a
        bmi skip13
        cmp #24
        bcs skip13
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip13 anop

        lda surroundOldY
        clc
        adc #-1
        asl a
        asl a
        bmi skip14
        cmp #24
        bcs skip14
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip14 anop

        lda surroundOldY
        clc
        adc #-2
        asl a
        asl a
        bmi skip15
        cmp #24
        bcs skip15
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        sec
        sbc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
        
; ##############################
; ##############################
skip15 anop

        lda surroundOldY
        asl a
        asl a
        bmi skip16
        cmp #24
        bcs skip16
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip16 anop

        lda surroundOldY
        clc
        adc #1
        asl a
        asl a
        bmi skip17
        cmp #24
        bcs skip17
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip17 anop

        lda surroundOldY
        clc
        adc #2
        asl a
        asl a
        bmi skip18
        cmp #24
        bcs skip18
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip18 anop

        lda surroundOldY
        clc
        adc #-1
        asl a
        asl a
        bmi skip19
        cmp #24
        bcs skip19
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip19 anop

        lda surroundOldY
        clc
        adc #-2
        asl a
        asl a
        bmi skip20
        cmp #24
        bcs skip20
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #1
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
        
; ##################################
skip20 anop

        lda surroundOldY
        asl a
        asl a
        bmi skip21
        cmp #24
        bcs skip21
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue


; ----------------------
skip21 anop

        lda surroundOldY
        clc
        adc #1
        asl a
        asl a
        bmi skip22
        cmp #24
        bcs skip22
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip22 anop

        lda surroundOldY
        clc
        adc #2
        asl a
        asl a
        bmi skip23
        cmp #24
        bcs skip23
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

; ----------------------
skip23 anop

        lda surroundOldY
        clc
        adc #-1
        asl a
        asl a
        bmi skip24
        cmp #24
        bcs skip24
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        
; ----------------------
skip24 anop

        lda surroundOldY
        clc
        adc #-2
        asl a
        asl a
        bmi skip25
        cmp #24
        bcs skip25
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda surroundOldX
        clc
        adc #2
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue

skip25 anop

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
        cmp #SURROUND_ERASE
        bne eraseSurroundSkipBlock

; erase this block

        lda colCounter
        surroundGridToPixel
        sta rectX

        lda rowCounter
        surroundGridToPixel
        sta rectY

        lda #12
        sta rectWidth

        lda #16
        sta rectHeight

        jsr eraseSurroundChunk
        
; clear the grid position

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
        lda #0
        sta >SURROUND_GRID_ADDR,x

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
        jmp eraseSurroundVLoop

eraseSurroundDone anop

        rts
        
        

surroundRedrawPlayerHitBlock entry

        lda playerHitX
        asl a
        asl a
        tax
        lda surroundGridRowOffsets,x
        sta rowAddress
        lda playerHitY
        asl a
        clc
        adc rowAddress
        tax
        unsetSurroundGridValue
        jsr renderSurroundGrid

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
        

        
eraseSurroundPixelBuffer entry

        lda #$4000
        sta counter
        
        ldx #0
        
erasePixelBufferLoop anop

        lda #00
        sta >SURROUND_PIXEL_ADDR,x
        inx
        inx
        
        dec counter
        lda counter
        bmi erasePixelBufferDone
        bra erasePixelBufferLoop

erasePixelBufferDone anop
        rts
        


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



surroundX dc i2'0'
surroundY dc i2'0'



surroundXDiff dc i2'0'
surroundYDiff dc i2'0'

rowCounter dc i2'0'
colCounter dc i2'0'

rowAddress dc i4'0'

counter dc i4'0'

SURROUND_ERASE gequ 1
SURROUND_LEAVE gequ 2
SURROUND_DRAW gequ 3

surroundUpdated dc i2'0'

        end


surroundData data

surroundOldX dc i2'0'
surroundOldY dc i2'0'
    
SURROUND_GRID_ADDR gequ $0a0000
SURROUND_PIXEL_ADDR gequ $0b0000

        end

