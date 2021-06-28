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

        ldx dataIndex
        lda roomGfxCastle2,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle2,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle2,x
        sta pf2
        inc dataIndex
        inc dataIndex

        lda #6
        sec
        sbc cy
        sta ypos

        lda #0
        sta cx

horizontalLoop anop

;        lda cx
;        pha
;        jsl lessThan4
;        cmp #1
;        beq shift0

;        lda cx
;        pha
;        jsl lessThan12
;        cmp #1
;        beq shift1
;        bra shift2


        lda cx
        cmp #12
        bcs shift2

        lda cx
        cmp #4
        bcs shift1


shift0 anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf0
        sta bit
        bra doneShift

shift1 anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf1
        sta bit
        bra doneShift

shift2 anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf2
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

        lda cy ; should be ypos
        asl a
        asl a
        asl a
        asl a
        asl a
        sec
        sbc #10 ; adjust vertical position
        sta rectY

        lda #CELL_WIDTH
        sta rectWidth

        lda #CELL_HEIGHT
        sta rectHeight

        lda #COLOR_YELLOW
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
        cmp #7
        beq roomDone
        jmp roomVerticalLoop

roomDone anop
        rts


temp dc i2'0'
bit dc i2'0'
pf0 dc i2'0'
pf1 dc i2'0'
pf2 dc i2'0'

cx dc i2'0'
cy dc i2'0'
ypos dc i2'0'
dataIndex dc i2'0'

CELL_WIDTH gequ 8
CELL_HEIGHT gequ 32

shiftreg anop
        dc i2'$10'
        dc i2'$20'
        dc i2'$40'
        dc i2'$80'

        dc i2'$80'
        dc i2'$40'
        dc i2'$20'
        dc i2'$10'
        dc i2'$8'
        dc i2'$4'
        dc i2'$2'
        dc i2'$1'

        dc i2'$1'
        dc i2'$2'
        dc i2'$4'
        dc i2'$8'
        dc i2'$10'
        dc i2'$20'
        dc i2'$40'
        dc i2'$80'


roomGfxCastleOrg anop
        dc i2'$F0' i2'$FE' i2'$15' ; XXXXXXXXXXX X X X      R R R RRRRRRRRRRR
        dc i2'$30' i2'$03' i2'$1F' ; XX        XXXXXXX      RRRRRRR        RR
        dc i2'$30' i2'$03' i2'$FF' ; XX        XXXXXXXXXXRRRRRRRRRR        RR
        dc i2'$30' i2'$00' i2'$FF' ; XX          XXXXXXXXRRRRRRRR          RR
        dc i2'$30' i2'$00' i2'$3F' ; XX          XXXXXX    RRRRRR          RR
        dc i2'$30' i2'$00' i2'$00' ; XX                                    RR
        dc i2'$F0' i2'$FF' i2'$0F' ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR

roomGfxCastle anop
        dc i2'$F0' dc i2'$FE' dc i2'$15' ; XXXXXXXXXXX X X X      R R R RRRRRRRRRRR
        dc i2'$30' dc i2'$03' dc i2'$1F' ; XX        XXXXXXX      RRRRRRR        RR
        dc i2'$30' dc i2'$03' dc i2'$FF' ; XX        XXXXXXXXXXRRRRRRRRRR        RR
        dc i2'$30' dc i2'$00' dc i2'$FF' ; XX          XXXXXXXXRRRRRRRR          RR
        dc i2'$30' dc i2'$00' dc i2'$3F' ; XX          XXXXXX    RRRRRR          RR
        dc i2'$30' dc i2'$00' dc i2'$00' ; XX                                    RR
        dc i2'$F0' dc i2'$FF' dc i2'$0F' ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR

roomGfxCastle2 anop
        dc i2'$F0'
        dc i2'$FE'
        dc i2'$15'

        dc i2'$30'
        dc i2'$03'
        dc i2'$1F'

        dc i2'$30'
        dc i2'$03'
        dc i2'$FF'

        dc i2'$30'
        dc i2'$00'
        dc i2'$FF'

        dc i2'$30'
        dc i2'$00'
        dc i2'$3F'

        dc i2'$30'
        dc i2'$00'
        dc i2'$00'

        dc i2'$F0'
        dc i2'$FF'
        dc i2'$0F'


        end


roomsData data

        end
