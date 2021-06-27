;
;  rooms.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 6/27/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on

rooms start
        using globalData
        using screenData

drawRoom entry

; Extract the playfield register bits and paint the playfield
; The playfied register is 20 bits wide encoded across 3 bytes
; as follows:
;    PF0   |  PF1   |  PF2
;  xxxx4567|76543210|01234567
; Each set bit indicates playfield color - else background color -
; the size of each block is 8 x 32, and the drawing is shifted
; upwards by 16 pixels

        lda #0
        sta cy
        sta dataIndex

roomVerticalLoop anop

        lda dataIndex
        tax
        lda roomGfxCastle,x
        sta pf0
        inc dataIndex

        lda dataIndex
        tax
        lda roomGfxCastle,x
        sta pf1
        inc dataIndex

        lda dataIndex
        tax
        lda roomGfxCastle,x
        sta pf2
        inc dataIndex

        lda #6
        sec
        sbc cy
        sta ypos

        lda #0
        sta cx

horizontalLoop anop

        lda #4
        cmp cx
        bcs shift1

        lda #12
        cmp cx
        bcs shift2

; shift0

        ldx cx
        lda shiftreg,x
        and pf2
        sta bit
        bra doneShift

shift1 anop

        ldx cx
        lda shiftreg,x
        and pf0
        sta bit
        bra doneShift

shift2 anop

        ldx cx
        lda shiftreg,x
        and pf1
        sta bit

doneShift anop

        lda bit
        cmp #0
        beq bitNotSet

        lda cx
        asl a
        asl a
        asl a
        sta rectX

        lda cy
        asl a
        asl a
        asl a
        asl a
        asl a
        sta rectY

        lda #CELL_WIDTH
        sta rectWidth

        lda #CELL_HEIGHT
        sta rectHeight

        lda #COLOR_BLUE
        sta rectColor

        jsr drawRect

bitNotSet anop
        inc cx
        lda cx
        cmp #19
        beq roomNextRow
        jmp horizontalLoop

roomNextRow anop
        inc cy
        lda cy
        cmp #6
        beq roomDone
        jmp roomVerticalLoop

roomDone anop
        rts


temp dc i1'0'
bit dc i1'0'
pf0 dc i1'0'
pf1 dc i1'0'
pf2 dc i1'0'

cx dc i2'0'
cy dc i2'0'
ypos dc i2'0'
dataIndex dc i2'0'

CELL_WIDTH gequ 8
CELL_HEIGHT gequ 32

shiftreg anop
        dc i1'$10'
        dc i1'$20'
        dc i1'$40'
        dc i1'$80'
        dc i1'$80'
        dc i1'$40'
        dc i1'$20'
        dc i1'$10'
        dc i1'$8'
        dc i1'$2'
        dc i1'$1'
        dc i1'$1'
        dc i1'$2'
        dc i1'$4'
        dc i1'$8'
        dc i1'$10'
        dc i1'$20'
        dc i1'$40'
        dc i1'$80'


roomGfxCastle anop
        dc i1'$F0' i1'$FE' i1'$15' ; XXXXXXXXXXX X X X      R R R RRRRRRRRRRR
        dc i1'$30' i1'$03' i1'$1F' ; XX        XXXXXXX      RRRRRRR        RR
        dc i1'$30' i1'$03' i1'$FF' ; XX        XXXXXXXXXXRRRRRRRRRR        RR
        dc i1'$30' i1'$00' i1'$FF' ; XX          XXXXXXXXRRRRRRRR          RR
        dc i1'$30' i1'$00' i1'$3F' ; XX          XXXXXX    RRRRRR          RR
        dc i1'$30' i1'$00' i1'$00' ; XX                                    RR
        dc i1'$F0' i1'$FF' i1'$0F' ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR



        end


roomsData data

        end
