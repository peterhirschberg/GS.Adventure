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
;
; Playfields are always just the left half of the screen and
; the right half is either mirrored or repeated from the left.
;

        jsr drawRoomLeft
        jsr drawRoomRightMirrored

        rts


drawRoomLeft entry

        lda #0
        sta cy
        sta dataIndex

roomVerticalLoop anop

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf2
        inc dataIndex
        inc dataIndex

        lda #0
        sta cx

horizontalLoop anop

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

        lda cy
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
        cmp #20
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



drawRoomRightMirrored entry

        lda #0
        sta cy
        sta dataIndex

roomVerticalLoop2 anop

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGfxCastle,x
        sta pf2
        inc dataIndex
        inc dataIndex

        lda #19
        sta cx

horizontalLoop2 anop

        lda cx
        cmp #12
        bcs shift2b

        lda cx
        cmp #4
        bcs shift1b


shift0b anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf0
        sta bit
        bra doneShift2

shift1b anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf1
        sta bit
        bra doneShift2

shift2b anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf2
        sta bit

doneShift2 anop

        lda bit
        cmp #0
        beq bitNotSet2

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
        sec
        sbc #10 ; adjust vertical position
        sta rectY

        lda #CELL_WIDTH
        sta rectWidth

        lda #CELL_HEIGHT
        sta rectHeight

        lda #COLOR_YELLOW
        sta rectColor

; draw mirrored right half

        lda cx
        sta temp
        inc temp

        lda #40
        sec
        sbc temp

        sta rectX
        asl a
        asl a
        asl a
        sta rectX

        jsr drawRect

bitNotSet2 anop
        dec cx
        lda cx
        bmi roomNextRow2
        jmp horizontalLoop2

roomNextRow2 anop
        inc cy
        lda cy
        cmp #7
        beq roomDone2
        jmp roomVerticalLoop2

roomDone2 anop
        rts



temp dc i2'0'
bit dc i2'0'
pf0 dc i2'0'
pf1 dc i2'0'
pf2 dc i2'0'

cx2 dc i2'0'
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


roomGfxCastle anop
        dc i2'$F0, $FE, $15' ; XXXXXXXXXXX X X X      R R R RRRRRRRRRRR
        dc i2'$30, $03, $1F' ; XX        XXXXXXX      RRRRRRR        RR
        dc i2'$30, $03, $FF' ; XX        XXXXXXXXXXRRRRRRRRRR        RR
        dc i2'$30, $00, $FF' ; XX          XXXXXXXXRRRRRRRR          RR
        dc i2'$30, $00, $3F' ; XX          XXXXXX    RRRRRR          RR
        dc i2'$30, $00, $00' ; XX                                    RR
        dc i2'$F0, $FF, $0F' ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR


        end


roomsData data

        end