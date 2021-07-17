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
        using gameData
        using roomsData
        using playerData


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
        jsl eraseRoom

; draw room as mirrored or repeated

        ldx currentRoom
        lda roomMirroredList,x
        cmp #1
        bne roomRepeats

; draw mirrored

        jsr drawRoomLeft
        jsr drawRoomRightMirrored
        bra checkForBarriers

roomRepeats anop

        jsr drawRoomRepeating

checkForBarriers anop

        lda currentRoom
        cmp #ROOM_INDEX_LEFT_OF_NAME
        beq drawRightBarrier
        cmp #ROOM_INDEX_SIDE_CORRIDOR_RIGHT
        beq drawRightBarrier
        cmp #ROOM_INDEX_BELOW_YELLOW_CASTLE_OLIVE
        beq drawLeftBarrier
        bra drawRoomDone

drawLeftBarrier anop
; Position missile 00 to 0D,00 - left thin wall

        lda #$1A
        sta rectX

        lda #$0
        sta rectY

        lda #4
        sta rectWidth

        lda #200
        sta rectHeight

        lda #COLOR_BLACK
        sta rectColor

        jsl drawBackgroundRectThin

        bra drawRoomDone

drawRightBarrier anop
; Position missile 01 to 96,00 - right thin wall

        lda #$12C
        sta rectX

        lda #$0
        sta rectY

        lda #4
        sta rectWidth

        lda #200
        sta rectHeight

        lda #COLOR_BLACK
        sta rectColor

        jsl drawBackgroundRectThin

drawRoomDone anop

        jsl blitRoom
        rts



drawRoomLeft entry

        ldx currentRoom
        lda roomGraphicsOffsetList,x
        sta dataIndex

        lda #0
        sta cy

roomVerticalLoop anop

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
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

        ldx currentRoom
        lda roomColorList,x
        sta rectColor

        jsl drawBackgroundRectChunk

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

        ldx currentRoom
        lda roomGraphicsOffsetList,x
        sta dataIndex

        lda #0
        sta cy

roomVerticalLoop2 anop

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
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

        ldx currentRoom
        lda roomColorList,x
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

        jsl drawBackgroundRectChunk

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



drawRoomRepeating entry

        ldx currentRoom
        lda roomGraphicsOffsetList,x
        sta dataIndex

        lda #0
        sta cy

roomVerticalLoop3 anop

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf0
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf1
        inc dataIndex
        inc dataIndex

        ldx dataIndex
        lda roomGraphicsData,x
        sta pf2
        inc dataIndex
        inc dataIndex

        lda #0
        sta cx

horizontalLoop3 anop

        lda cx
        cmp #12
        bcs shift2c

        lda cx
        cmp #4
        bcs shift1c


shift0c anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf0
        sta bit
        bra doneShift3

shift1c anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf1
        sta bit
        bra doneShift3

shift2c anop

        lda cx
        asl a
        tax
        lda shiftreg,x
        and pf2
        sta bit

doneShift3 anop

        lda bit
        cmp #0
        beq bitNotSet3

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

        ldx currentRoom
        lda roomColorList,x
        sta rectColor

        jsl drawBackgroundRectChunk

        lda cx
        asl a
        asl a
        asl a
        clc
        adc #160
        sta rectX

        lda #CELL_WIDTH
        sta rectWidth

        jsl drawBackgroundRectChunk

bitNotSet3 anop
        inc cx
        lda cx
        cmp #20
        beq roomNextRow3
        jmp horizontalLoop3

roomNextRow3 anop
        inc cy
        lda cy
        cmp #7
        beq roomDone3
        jmp roomVerticalLoop3

roomDone3 anop
        rts



; ------------------------------------

wrapPlayerRoom entry

        lda #6
        cmp playerY
        bcs wrapToRoomUp

        lda playerY
        cmp #194
        bcs wrapToRoomDown

        lda #6
        cmp playerX
        bcs wrapToRoomLeft

        lda playerX
        cmp #314
        bcs wrapToRoomRight

        bra wrapDone

wrapToRoomUp anop

        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomUp
        sta currentRoom

        jsr adjustRoomLevel

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #190
        sta playerY

        bra wrapDone

wrapToRoomDown anop

        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomDown
        sta currentRoom

        jsr adjustRoomLevel

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #8
        sta playerY

        bra wrapDone

wrapToRoomLeft anop

        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomLeft
        sta currentRoom

        jsr adjustRoomLevel

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #310
        sta playerX

        bra wrapDone

wrapToRoomRight anop

        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomRight
        sta currentRoom

        jsr adjustRoomLevel

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #8
        sta playerX

        bra wrapDone

wrapDone anop

        rts


getCurrentLinkedRooms entry

        lda currentRoom
        asl a
        asl a
        tax
        lda roomLinkList,x
        asl a
        sta roomUp
        inx
        inx
        lda roomLinkList,x
        asl a
        sta roomRight
        inx
        inx
        lda roomLinkList,x
        asl a
        sta roomDown
        inx
        inx
        lda roomLinkList,x
        asl a
        sta roomLeft

        rts


adjustRoomLevel entry
; if the the room number is above $80 (shifted here to $100) it changes based on the game level

        lda currentRoom
        and #$100
        cmp #0
        beq adjustDone

; remove the $80 flag and add the level number to get the offset into the room delta table

        lda gameLevel
        asl a
        sta temp

        lda currentRoom
        and #$feff
        clc
        adc temp
        tax
        lda roomLevelDiffsList,x
        asl a
        sta currentRoom

adjustDone anop
        rts


roomHasFog entry

        ldx currentRoom
        lda roomColorList,x
        cmp #COLOR_FOG
        beq hasFog
        lda #0
        rts

hasFog anop
        lda #1
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

roomUp dc i2'0'
roomRight dc i2'0'
roomDown dc i2'0'
roomLeft dc i2'0'


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


        end


roomsData data

currentRoom dc i2'0'
lastRoom dc i2'0'

roomGraphicsData anop

; roomGfxLeftOfName
        dc i2'$F0,$FF,$FF'      ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$F0,$FF,$0F'      ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRRRRRR

; roomGfxBelowYellowCastle
        dc i2'$F0,$FF,$0F'      ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$F0,$FF,$FF'      ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRRRRRR

; roomGfxSideCorridor
        dc i2'$F0,$FF,$0F'      ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$00,$00,$00'
        dc i2'$F0,$FF,$0F'      ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR

; roomGfxNumberRoom
        dc i2'$F0,$FF,$FF'     ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$F0,$FF,$0F'     ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR

; roomGfxTwoExitRoom
        dc i2'$F0,$FF,$0F'     ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$30,$00,$00'     ; XX                                    RR
        dc i2'$F0,$FF,$0F'     ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR

; roomGfxBlueMazeTop
        dc i2'$F0,$FF,$0F'     ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$0C,$0C'     ;         XX    XX        RR    RR
        dc i2'$F0,$0C,$3C'     ; XXXX    XX    XXXX    RRRR    RR    RRRR
        dc i2'$F0,$0C,$00'     ; XXXX    XX                    RR    RRRR
        dc i2'$F0,$FF,$3F'     ; XXXXXXXXXXXXXXXXXX    RRRRRRRRRRRRRRRRRR
        dc i2'$00,$30,$30'     ;       XX        XX    RR        RR
        dc i2'$F0,$33,$3F'     ; XXXX  XX  XXXXXXXX    RRRRRRRR  RR  RRRR

; roomGfxBlueMaze1
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FC,$FF'          ; XXXXXXXXXX  XXXXXXXXRRRRRRRR  RRRRRRRRRR
        dc i2'$F0,$00,$C0'          ; XXXX              XXRR              RRRR
        dc i2'$F0,$3F,$CF'          ; XXXX  XXXXXXXXXX  XXRR  RRRRRRRRRR  RRRR
        dc i2'$00,$30,$CC'          ;       XX      XX  XXRR  RR      RR
        dc i2'$F0,$F3,$CC'          ; XXXXXXXX  XX  XX  XXRR  RR  RR  RRRRRRRR

; roomGfxBlueMazeBottom
        dc i2'$F0,$F3,$0C'          ; XXXXXXXX  XX  XX        RR  RR  RRRRRRRR
        dc i2'$00,$30,$0C'          ;       XX      XX        RR      RR
        dc i2'$F0,$3F,$0F'          ; XXXX  XXXXXXXXXX        RRRRRRRRRR  RRRR
        dc i2'$F0,$00,$00'          ; XXXX                                RRRR
        dc i2'$F0,$F0,$00'          ; XXXXXXXX                        RRRRRRRR
        dc i2'$00,$30,$00'          ;       XX                        RR
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR

; roomGfxBlueMazeCenter
        dc i2'$F0,$33,$3F'          ; XXXX  XX  XXXXXXXX    RRRRRRRR  RR  RRRR
        dc i2'$00,$30,$3C'          ;       XX      XXXX    RRRR      RR
        dc i2'$F0,$FF,$3C'          ; XXXXXXXXXXXX  XXXX    RRRR  RRRRRRRRRRRR
        dc i2'$00,$03,$3C'          ;           XX  XXXX    RRRR  RR
        dc i2'$F0,$33,$3C'          ; XXXX  XX  XX  XXXX    RRRR  RR  RR  RRRR
        dc i2'$00,$33,$0C'          ;       XX  XX  XX        RR  RR  RR
        dc i2'$F0,$F3,$0C'          ; XXXXXXXX  XX  XX        RR  RR  RRRRRRRR

; roomGfxBlueMazeEntry
        dc i2'$F0,$F3,$CC'          ; XXXXXXXX  XX  XX  XXRR  RR  RR  RRRRRRRR
        dc i2'$00,$33,$0C'          ;       XX  XX  XX        RR  RR  RR
        dc i2'$F0,$33,$FC'          ; XXXX  XX  XX  XXXXXXRRRRRR  RR  RR  RRRR
        dc i2'$00,$33,$00'          ;       XX  XX                RR  RR
        dc i2'$F0,$F3,$FF'          ; XXXXXXXX  XXXXXXXXXXRRRRRRRRRR  RRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR

; roomGfxMazeMiddle
        dc i2'$F0,$FF,$CC'          ; XXXXXXXXXXXX  XX  XXRR  RR  RRRRRRRRRRRR
        dc i2'$00,$00,$CC'          ;               XX  XXRR  RR
        dc i2'$F0,$03,$CF'          ; XXXX      XXXXXX  XXRR  RRRRRR      RRRR
        dc i2'$00,$03,$00'          ;           XX                RR
        dc i2'$F0,$F3,$FC'          ; XXXXXXXX  XX  XXXXXXRRRRRR  RR  RRRRRRRR
        dc i2'$00,$33,$0C'          ;       XX  XX  XX        RR  RR  RR
        dc i2'$F0,$33,$CC'          ; XXXX  XX  XX  XX  XXRR  RR  RR  RR  RRRR

; roomGfxMazeSide
        dc i2'$F0,$33,$CC'          ; XXXX  XX  XX  XX  XXRR  RR  RR  RR  RRRR
        dc i2'$00,$30,$CC'          ;       XX      XX  XXRR  RR      RR
        dc i2'$00,$3F,$CF'          ;       XXXXXX  XX  XXRR  RR  RRRRRR
        dc i2'$00,$00,$C0'          ;                   XXRR
        dc i2'$00,$3F,$C3'          ;       XXXXXXXX    XXRR    RRRRRRRR
        dc i2'$00,$30,$C0'          ;       XX          XXRR          RR
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR

; roomGfxMazeEntry
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$30,$00'          ;       XX                        RR
        dc i2'$F0,$30,$FF'          ; XXXX  XX    XXXXXXXXRRRRRRRRR   RR  RRRR
        dc i2'$00,$30,$C0'          ;       XX          XXRR          RR
        dc i2'$F0,$F3,$C0'          ; XXXXXXXX  XX      XXRR      RR  RRRRRRRR
        dc i2'$00,$03,$C0'          ;           XX      XXRR      RR
        dc i2'$F0,$FF,$CC'          ; XXXXXXXXXXXX  XX  XXRR  RR  RRRRRRRRRRRR

; roomGfxCastle
        dc i2'$F0,$FE,$15'          ; XXXXXXXXXXX X X X      R R R RRRRRRRRRRR
        dc i2'$30,$03,$1F'          ; XX        XXXXXXX      RRRRRRR        RR
        dc i2'$30,$03,$FF'          ; XX        XXXXXXXXXXRRRRRRRRRR        RR
        dc i2'$30,$00,$FF'          ; XX          XXXXXXXXRRRRRRRR          RR
        dc i2'$30,$00,$3F'          ; XX          XXXXXX    RRRRRR          RR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR

; roomGfxRedMaze1
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$00,$0C'          ;                   XX        RR
        dc i2'$F0,$FF,$0C'          ; XXXXXXXXXXXX  XX        RR  RRRRRRRRRRRR
        dc i2'$F0,$03,$CC'          ; XXXX      XX  XX  XXRR  RR  RR      RRRR
        dc i2'$F0,$33,$CF'          ; XXXX  XX  XXXXXX  XXRR  RRRRRR  RR  RRRR

; roomGfxRedMazeBottom
        dc i2'$F0,$33,$CF'          ; XXXX  XX  XXXXXX  XXRR  RRRRRR  RR  RRRR
        dc i2'$F0,$30,$00'          ; XXXX  XX                        RR  RRRR
        dc i2'$F0,$33,$FF'          ; XXXX  XX  XXXXXXXXXXRRRRRRRRRR  RR  RRRR
        dc i2'$00,$33,$00'          ;       XX  XX                RR  RR  RRRR
        dc i2'$F0,$FF,$00'          ; XXXXXXXXXXXX                RRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR

; roomGfxRedMazeTop
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR
        dc i2'$00,$00,$C0'          ;                   XXRR
        dc i2'$F0,$FF,$CF'          ; XXXXXXXXXXXXXXXX  XXRR  RRRRRRRRRRRRRRRR
        dc i2'$00,$00,$CC'          ;               XX  XXRR  RR
        dc i2'$F0,$33,$FF'          ; XXXX  XX  XXXXXXXXXXRRRRRRRRRR  RR  RRRR
        dc i2'$F0,$33,$00'          ; XXXX  XX  XX                RR  RR  RRRR
        dc i2'$F0,$3F,$0C'          ; XXXX  XXXXXX  XX        RR  RRRRRR  RRRR

; roomGfxWhiteCastleEntry
        dc i2'$F0,$3F,$0C'          ; XXXX  XXXXXX  XX        RR  RRRRRR  RRRR
        dc i2'$F0,$00,$0C'          ; XXXX          XX        RR          RRRR
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$30,$00'          ;       XX                        RR
        dc i2'$F0,$30,$00'          ; XXXX  XX                        RR  RRRR
        dc i2'$00,$30,$00'          ;       XX                        RR
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR

; roomGfxTopEntryRoom
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$30,$00,$00'          ; XX                                    RR
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXRRRRRRRRRRRRRRRRRRRR

; roomGfxBlackMaze1
        dc i2'$F0,$F0,$FF'          ; XXXXXXXX    XXXXXXXXRRRRRRRR    RRRRRRRR
        dc i2'$00,$00,$03'          ;             XX            RR
        dc i2'$F0,$FF,$03'          ; XXXXXXXXXXXXXX            RRRRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$30,$3F,$FF'          ; XX    XXXXXXXXXXXXXXRRRRRRRRRRRRRR    RR
        dc i2'$00,$30,$00'          ;       XX                        RR
        dc i2'$F0,$F0,$FF'          ; XXXXXXXX    XXXXXXXXRRRRRRRR    RRRRRRRR

; roomGfxBlackMaze3
        dc i2'$F0,$F0,$FF'          ; XXXXXXXX    XXXXXXXXRRRRRRRR    RRRRRRRR
        dc i2'$30,$00,$00'          ; XX                  MM
        dc i2'$30,$3F,$FF'          ; XX    XXXXXXXXXXXXXXMM    MMMMMMMMMMMMMM
        dc i2'$00,$30,$00'          ;       XX                  MM
        dc i2'$F0,$F0,$FF'          ; XXXXXXXX    XXXXXXXXMMMMMMMM    MMMMMMMM
        dc i2'$30,$00,$03'          ; XX          XX      MM          MM
        dc i2'$F0,$F0,$FF'          ; XXXXXXXX    XXXXXXXXMMMMMMMM    MMMMMMMM

; roomGfxBlackMaze2
        dc i2'$F0,$FF,$FF'          ; XXXXXXXXXXXXXXXXXXXXMMMMMMMMMMMMMMMMMMMM
        dc i2'$00,$00,$C0'          ;                   XX                  MM
        dc i2'$F0,$FF,$CF'          ; XXXXXXXXXXXXXXXX  XXMMMMMMMMMMMMMMMM  MM
        dc i2'$00,$00,$0C'          ;                   XX                  MM
        dc i2'$F0,$0F,$FF'          ; XXXX    XXXXXXXXXXXXMMMM    MMMMMMMMMMMM
        dc i2'$00,$0F,$C0'          ;         XXXX      XX        MMMM      MM
        dc i2'$30,$CF,$CC'          ; XX  XX  XXXX  XX  XXMM  MM  MMMM  MM  MM

; roomGfxBlackMazeEntry
        dc i2'$30,$CF,$CC'          ; XX  XX  XXXX  XX  XXMM  MM  MMMM  MM  MM
        dc i2'$00,$C0,$CC'          ;         XX        XX  XXRR  RR        RR
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR
        dc i2'$00,$00,$00'          ;
        dc i2'$F0,$FF,$0F'          ; XXXXXXXXXXXXXXXX        RRRRRRRRRRRRRRRR


ROOM_GRAPHICS_LEFT_OF_NAME          gequ 7*3*2*0
ROOM_GRAPHICS_BELOW_YELLOW_CASTLE   gequ 7*3*2*1
ROOM_GRAPHICS_SIDE_CORRIDOR         gequ 7*3*2*2
ROOM_GRAPHICS_NUMBER_ROOM           gequ 7*3*2*3
ROOM_GRAPHICS_TWO_EXIT_ROOM         gequ 7*3*2*4
ROOM_GRAPHICS_BLUE_MAZE_TOP         gequ 7*3*2*5
ROOM_GRAPHICS_BLUE_MAZE1            gequ 7*3*2*6
ROOM_GRAPHICS_BLUE_MAZE_BOTTOM      gequ 7*3*2*7
ROOM_GRAPHICS_BLUE_MAZE_CENTER      gequ 7*3*2*8
ROOM_GRAPHICS_BLUE_MAZE_ENTRY       gequ 7*3*2*9
ROOM_GRAPHICS_MAZE_MIDDLE           gequ 7*3*2*10
ROOM_GRAPHICS_MAZE_SIDE             gequ 7*3*2*11
ROOM_GRAPHICS_MAZE_ENTRY            gequ 7*3*2*12
ROOM_GRAPHICS_CASTLE                gequ 7*3*2*13
ROOM_GRAPHICS_RED_MAZE1             gequ 7*3*2*14
ROOM_GRAPHICS_RED_MAZE_BOTTOM       gequ 7*3*2*15
ROOM_GRAPHICS_RED_MAZE_TOP          gequ 7*3*2*16
ROOM_GRAPHICS_WHITE_CASTLE_ENTRY    gequ 7*3*2*17
ROOM_GRAPHICS_TOP_ENTRY_ROOM        gequ 7*3*2*18
ROOM_GRAPHICS_BLACK_MAZE1           gequ 7*3*2*19
ROOM_GRAPHICS_BLACK_MAZE2           gequ 7*3*2*20
ROOM_GRAPHICS_BLACK_MAZE3           gequ 7*3*2*21
ROOM_GRAPHICS_BLACK_MAZE_ENTRY      gequ 7*3*2*22


roomGraphicsOffsetList anop
        dc i2'ROOM_GRAPHICS_NUMBER_ROOM'
        dc i2'ROOM_GRAPHICS_BELOW_YELLOW_CASTLE'
        dc i2'ROOM_GRAPHICS_BELOW_YELLOW_CASTLE'
        dc i2'ROOM_GRAPHICS_LEFT_OF_NAME'
        dc i2'ROOM_GRAPHICS_BLUE_MAZE_TOP'
        dc i2'ROOM_GRAPHICS_BLUE_MAZE1'
        dc i2'ROOM_GRAPHICS_BLUE_MAZE_BOTTOM'
        dc i2'ROOM_GRAPHICS_BLUE_MAZE_CENTER'
        dc i2'ROOM_GRAPHICS_BLUE_MAZE_ENTRY'
        dc i2'ROOM_GRAPHICS_MAZE_MIDDLE'
        dc i2'ROOM_GRAPHICS_MAZE_ENTRY'
        dc i2'ROOM_GRAPHICS_MAZE_SIDE'
        dc i2'ROOM_GRAPHICS_SIDE_CORRIDOR'
        dc i2'ROOM_GRAPHICS_SIDE_CORRIDOR'
        dc i2'ROOM_GRAPHICS_TOP_ENTRY_ROOM'
        dc i2'ROOM_GRAPHICS_CASTLE'
        dc i2'ROOM_GRAPHICS_CASTLE'
        dc i2'ROOM_GRAPHICS_CASTLE'
        dc i2'ROOM_GRAPHICS_NUMBER_ROOM'
        dc i2'ROOM_GRAPHICS_BLACK_MAZE1'
        dc i2'ROOM_GRAPHICS_BLACK_MAZE2'
        dc i2'ROOM_GRAPHICS_BLACK_MAZE3'
        dc i2'ROOM_GRAPHICS_BLACK_MAZE_ENTRY'
        dc i2'ROOM_GRAPHICS_RED_MAZE1'
        dc i2'ROOM_GRAPHICS_RED_MAZE_TOP'
        dc i2'ROOM_GRAPHICS_RED_MAZE_BOTTOM'
        dc i2'ROOM_GRAPHICS_WHITE_CASTLE_ENTRY'
        dc i2'ROOM_GRAPHICS_TWO_EXIT_ROOM'
        dc i2'ROOM_GRAPHICS_NUMBER_ROOM'
        dc i2'ROOM_GRAPHICS_TOP_ENTRY_ROOM'
        dc i2'ROOM_GRAPHICS_BELOW_YELLOW_CASTLE'


roomColorList anop
        dc i2'COLOR_PURPLE'
        dc i2'COLOR_OLIVEGREEN'
        dc i2'COLOR_LIMEGREEN'
        dc i2'COLOR_TAN'
        dc i2'COLOR_BLUE'
        dc i2'COLOR_BLUE'
        dc i2'COLOR_BLUE'
        dc i2'COLOR_BLUE'
        dc i2'COLOR_BLUE'
        dc i2'COLOR_FOG'
        dc i2'COLOR_FOG'
        dc i2'COLOR_FOG'
        dc i2'COLOR_LTCYAN'
        dc i2'COLOR_DKGREEN'
        dc i2'COLOR_CYAN'
        dc i2'COLOR_WHITE'
        dc i2'COLOR_BLACK'
        dc i2'COLOR_YELLOW'
        dc i2'COLOR_YELLOW'
        dc i2'COLOR_FOG'
        dc i2'COLOR_FOG'
        dc i2'COLOR_FOG'
        dc i2'COLOR_FOG'
        dc i2'COLOR_RED'
        dc i2'COLOR_RED'
        dc i2'COLOR_RED'
        dc i2'COLOR_RED'
        dc i2'COLOR_RED'
        dc i2'COLOR_PURPLE'
        dc i2'COLOR_RED'
        dc i2'COLOR_PURPLE'


roomMirroredList anop
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'0'
        dc i2'0'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'
        dc i2'1'


roomLinkList anop
        dc i2'$00,$00,$00,$00'
        dc i2'$08,$02,$80,$03'
        dc i2'$11,$03,$83,$01'
        dc i2'$06,$01,$86,$02'
        dc i2'$10,$05,$07,$06'
        dc i2'$1D,$06,$08,$04'
        dc i2'$07,$04,$03,$05'
        dc i2'$04,$08,$06,$08'
        dc i2'$05,$07,$01,$07'
        dc i2'$0A,$0A,$0B,$0A'
        dc i2'$03,$09,$09,$09'
        dc i2'$09,$0C,$1C,$0D'
        dc i2'$1C,$0D,$1D,$0B'
        dc i2'$0F,$0B,$0E,$0C'
        dc i2'$0D,$10,$0F,$10'
        dc i2'$0E,$0F,$0D,$0F'
        dc i2'$01,$1C,$04,$1C'
        dc i2'$06,$03,$02,$01'
        dc i2'$12,$12,$12,$12'
        dc i2'$15,$14,$15,$16'
        dc i2'$16,$15,$16,$13'
        dc i2'$13,$16,$13,$14'
        dc i2'$14,$13,$1B,$15'
        dc i2'$19,$18,$19,$18'
        dc i2'$1A,$17,$1A,$17'
        dc i2'$17,$1A,$17,$1A'
        dc i2'$18,$19,$18,$19'
        dc i2'$89,$89,$89,$89'
        dc i2'$1D,$07,$8C,$08'
        dc i2'$8F,$01,$10,$03'
        dc i2'$06,$01,$06,$03'


roomLevelDiffsList anop
        dc i2'$10,$0f,$0f'      ; down from room 01
        dc i2'$05,$11,$11'      ; down from room 02
        dc i2'$1d,$0a,$0a'      ; down from room 03
        dc i2'$1c,$16,$16'      ; u/l/r/d from room 1b (black castle room)
        dc i2'$1b,$0c,$0c'      ; down from room 1c
        dc i2'$03,$0c,$0c'      ; up from room 1d (top entry room)


ROOM_INDEX_NUMBER_ROOM_PURPLE1          gequ 2*0    ; 0
ROOM_INDEX_BELOW_YELLOW_CASTLE_OLIVE    gequ 2*1    ; 1
ROOM_INDEX_BELOW_YELLOW_CASTLE_LIME     gequ 2*2    ; 2
ROOM_INDEX_LEFT_OF_NAME                 gequ 2*3    ; 3
ROOM_INDEX_BLUE_MAZE_TOP                gequ 2*4    ; 4
ROOM_INDEX_BLUE_MAZE1                   gequ 2*5    ; 5
ROOM_INDEX_BLUE_MAZE_BOTTOM             gequ 2*6    ; 6
ROOM_INDEX_BLUE_MAZE_CENTER             gequ 2*7    ; 7
ROOM_INDEX_BLUE_MAZE_ENTRY              gequ 2*8    ; 8
ROOM_INDEX_MAZE_MIDDLE                  gequ 2*9    ; 9
ROOM_INDEX_MAZE_ENTRY                   gequ 2*10   ; A
ROOM_INDEX_MAZE_SIDE                    gequ 2*11   ; B
ROOM_INDEX_SIDE_CORRIDOR_RIGHT          gequ 2*12   ; C
ROOM_INDEX_SIDE_CORRIDOR_LEFT           gequ 2*13   ; D
ROOM_INDEX_TOP_ENTRY_ROOM_CYAN          gequ 2*14   ; E
ROOM_INDEX_CASTLE_WHITE                 gequ 2*15   ; F
ROOM_INDEX_CASTLE_BLACK                 gequ 2*16   ; 10
ROOM_INDEX_CASTLE_YELLOW                gequ 2*17   ; 11
ROOM_INDEX_NUMBER_ROOM_YELLOW           gequ 2*18   ; 12
ROOM_INDEX_BLACK_MAZE1                  gequ 2*19   ; 13
ROOM_INDEX_BLACK_MAZE2                  gequ 2*20   ; 14
ROOM_INDEX_BLACK_MAZE3                  gequ 2*21   ; 15
ROOM_INDEX_BLACK_MAZE_ENTRY             gequ 2*22   ; 16
ROOM_INDEX_RED_MAZE1                    gequ 2*23   ; 17
ROOM_INDEX_RED_MAZE_TOP                 gequ 2*24   ; 18
ROOM_INDEX_RED_MAZE_BOTTOM              gequ 2*25   ; 19
ROOM_INDEX_WHITE_CASTLE_ENTRY           gequ 2*26   ; 1A
ROOM_INDEX_TWO_EXIT_ROOM                gequ 2*27   ; 1B
ROOM_INDEX_NUMBER_ROOM_PURPLE2          gequ 2*28   ; 1C
ROOM_INDEX_TOP_ENTRY_ROOM_RED           gequ 2*29   ; 1D
ROOM_INDEX_BELOW_YELLOW_CASTLE_PURPLE   gequ 2*30   ; 1E


        end
