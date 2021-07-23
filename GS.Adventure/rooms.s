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
        using objectData


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
        jsr eraseRoom
        jsl dirtyAllSprites

; draw room as mirrored or repeated

        lda currentRoom
        asl a
        tax
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

        jsr drawBackgroundRectThin

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

        jsr drawBackgroundRectThin

drawRoomDone anop

        jsr blitRoom
        rts



drawRoomLeft entry

        lda currentRoom
        asl a
        tax
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

        lda currentRoom
        asl a
        tax
        lda roomColorList,x
        sta rectColor

        jsr drawBackgroundRectChunk

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

        lda currentRoom
        asl a
        tax
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

        lda currentRoom
        asl a
        tax
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

        jsr drawBackgroundRectChunk

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

        lda currentRoom
        asl a
        tax
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

        lda currentRoom
        asl a
        tax
        lda roomColorList,x
        sta rectColor

        jsr drawBackgroundRectChunk

        lda cx
        asl a
        asl a
        asl a
        clc
        adc #160
        sta rectX

        lda #CELL_WIDTH
        sta rectWidth

        jsr drawBackgroundRectChunk

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
        bcs wrapToRoomLeftShort
        bra wrapRight

wrapToRoomLeftShort anop
        brl wrapToRoomLeft

wrapRight anop
        lda playerX
        cmp #314
        bcs wrapToRoomRightShort

        brl wrapDone

wrapToRoomRightShort anop
        brl wrapToRoomRight

wrapToRoomUp anop

        lda currentRoom
        sta testRoom
        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomUp
        sta currentRoom

        lda currentRoom
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta currentRoom

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #190
        sta playerY

        brl wrapDone

wrapToRoomDown anop

; check for leaving castles

        lda currentRoom
        cmp #ROOM_INDEX_IN_YELLOW_CASTLE
        beq inCastle
        cmp #ROOM_INDEX_IN_WHITE_CASTLE
        beq inCastle
        cmp #ROOM_INDEX_IN_BLACK_CASTLE
        beq inCastle
        bra notInCastle

inCastle anop

        jsr leaveCastle
        rts

notInCastle anop

        lda currentRoom
        sta testRoom
        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomDown
        sta currentRoom

        lda currentRoom
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta currentRoom

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #8
        sta playerY

        brl wrapDone

wrapToRoomLeft anop

        lda currentRoom
        sta testRoom
        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomLeft
        sta currentRoom

        lda currentRoom
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta currentRoom

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #310
        sta playerX

        brl wrapDone

wrapToRoomRight anop

        lda currentRoom
        sta testRoom
        jsr getCurrentLinkedRooms

; update the room graphics
        lda roomRight
        sta currentRoom

        lda currentRoom
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta currentRoom

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

; wrap the player
        lda #8
        sta playerX

wrapDone anop

        rts



; ------------------------------------

wrapObjectRoom entry

; don't wrap the object carried by the player

        stx savex
        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        sta playerCarriedObject
        ldx savex

        txa
        cmp playerCarriedObject
        bne doWrapObjectRoom

doWrapObjectRoom anop

        lda #6
        cmp >objectPositionYList,x
        bcs wrapToRoomUp2

        stx savex
        jsr getHeightForObjectState
        ldx savex
        clc
        adc >objectPositionYList,x
        sta objectBottom

        lda objectBottom
        cmp #194
        bcs wrapToRoomDown2

        lda #6
        cmp >objectPositionXList,x
        bcs wrapToRoomLeft2Short
        bra checkWrapRight

wrapToRoomLeft2Short anop
        brl wrapToRoomLeft2

checkWrapRight anop

        sta savex
        jsr getWidthForObjectState
        ldx savex
        clc
        adc >objectPositionXList,x
        sta objectRight

        lda objectRight
        cmp #314
        bcs wrapToRoomRight2Short
        brl wrapDone2

wrapToRoomRight2Short anop
        brl wrapToRoomRight2

wrapToRoomUp2 anop

        lda >objectRoomList,x
        sta testRoom
        jsr getCurrentLinkedRooms

        lda roomUp
        sta >objectRoomList,x

        lda >objectRoomList,x
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta >objectRoomList,x

; wrap the object
        lda #190
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x

        brl wrapDone2

wrapToRoomDown2 anop

; check for leaving castles

        lda >objectRoomList,x
        cmp #ROOM_INDEX_IN_YELLOW_CASTLE
        beq inCastle2
        cmp #ROOM_INDEX_IN_WHITE_CASTLE
        beq inCastle2
        cmp #ROOM_INDEX_IN_BLACK_CASTLE
        beq inCastle2
        bra notInCastle2

inCastle2 anop

;        jsr leaveCastle ; <<<<<<<
;        rts

notInCastle2 anop

        lda >objectRoomList,x
        sta testRoom
        jsr getCurrentLinkedRooms

        lda roomDown
        sta >objectRoomList,x

        lda >objectRoomList,x
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta >objectRoomList,x

; wrap the object
        lda #8
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x

        brl wrapDone2

wrapToRoomLeft2 anop

        lda >objectRoomList,x
        sta testRoom
        jsr getCurrentLinkedRooms

        lda roomLeft
        sta >objectRoomList,x

        lda >objectRoomList,x
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta >objectRoomList,x

; wrap the object
        lda #310
        sta >objectPositionXList,x

        lda #1
        sta >objectDirtyList,x

        brl wrapDone2

wrapToRoomRight2 anop

        lda >objectRoomList,x
        sta testRoom
        jsr getCurrentLinkedRooms

        lda roomRight
        sta >objectRoomList,x

        lda >objectRoomList,x
        sta testRoom
        jsr adjustRoomLevel
        lda testRoom
        sta >objectRoomList,x

; wrap the object
        lda #8
        sta >objectPositionXList,x

        lda #1
        sta >objectDirtyList,x

wrapDone2 anop
        rts


; ------------------------------------

getCurrentLinkedRooms entry

        lda testRoom
        asl a
        asl a
        asl a
        tay
        lda roomLinkList,y
        sta roomUp
        iny
        iny
        lda roomLinkList,y
        sta roomRight
        iny
        iny
        lda roomLinkList,y
        sta roomDown
        iny
        iny
        lda roomLinkList,y
        sta roomLeft
        rts



adjustRoomLevel entry
; if the the room number is above $80 it changes based on the game level

        lda testRoom
        and #$80
        cmp #0
        beq adjustDone

; remove the $80 flag and add the level number to get the offset into the room delta table

        lda gameLevel
        sta temp

        lda testRoom
        and #$ff7f
        clc
        adc temp
        asl a
        tay
        lda roomLevelDiffsList,y
        sta testRoom

adjustDone anop
        rts



roomHasFog entry

        lda currentRoom
        asl a
        tax
        lda roomColorList,x
        cmp #COLOR_FOG
        beq hasFog
        lda #0
        rtl

hasFog anop
        lda #1
        rtl



checkCastles entry

        lda >playerHitObject
        cmp #OBJECT_PORT1
        beq onEnterYellowCastle
        cmp #OBJECT_PORT2
        beq onEnterWhiteCastle
        cmp #OBJECT_PORT3
        beq onEnterBlackCastle

        rtl

onEnterYellowCastle anop
        jsl enterYellowCastle
        rtl

onEnterWhiteCastle anop
        jsl enterWhiteCastle
        rtl

onEnterBlackCastle anop
        jsl enterBlackCastle
        rtl

enterYellowCastle entry

        ldx #OBJECT_PORT1
        lda >objectStateList,x
        cmp #0
        beq yellowCastleDone

        lda #$12
        sta >currentRoom

        lda >playerY
        clc
        adc #65
        sta >playerY
        sta >playerOldY

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        tax
        lda >objectPositionYList,x
        clc
        adc #65
        sta >objectPositionYList,x

        lda #0
        sta >playerHitObject
        sta >playerHitWall

; ensure the port stays open in case we are walking in with the key
        lda #6
        sta >objectStateList,x

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

yellowCastleDone anop
        rtl


enterWhiteCastle entry

        ldx #OBJECT_PORT2
        lda >objectStateList,x
        cmp #0
        beq whiteCastleDone

        lda #$1a
        sta >currentRoom

        lda >playerY
        clc
        adc #65
        sta >playerY
        sta >playerOldY

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        tax
        lda >objectPositionYList,x
        clc
        adc #65
        sta >objectPositionYList,x

        lda #0
        sta >playerHitObject
        sta >playerHitWall

; ensure the port stays open in case we are walking in with the key
        lda #6
        sta >objectStateList,x

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

whiteCastleDone anop
        rtl


enterBlackCastle entry

        ldx #OBJECT_PORT3
        lda >objectStateList,x
        cmp #0
        beq blackCastleDone

        lda #$1b
        sta >currentRoom

        lda >playerY
        clc
        adc #65
        sta >playerY
        sta >playerOldY

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        tax
        lda >objectPositionYList,x
        clc
        adc #65
        sta >objectPositionYList,x

        lda #0
        sta >playerHitObject
        sta >playerHitWall

; ensure the port stays open in case we are walking in with the key
        lda #6
        sta >objectStateList,x

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

blackCastleDone anop
        rtl


leaveCastle entry

        lda currentRoom
        cmp #ROOM_INDEX_IN_YELLOW_CASTLE
        beq leaveYellowCastle
        cmp #ROOM_INDEX_IN_WHITE_CASTLE
        beq leaveWhiteCastle
        cmp #ROOM_INDEX_IN_BLACK_CASTLE
        beq leaveBlackCastle

        rts

leaveYellowCastle anop

        lda #$11
        sta currentRoom

        jsr finishLeavingCastle

        rts

leaveWhiteCastle anop

        lda #$0f
        sta currentRoom

        jsr finishLeavingCastle

        rts

leaveBlackCastle anop

        lda #$10
        sta currentRoom

        jsr finishLeavingCastle

        rts

finishLeavingCastle entry

        lda >playerY
        sec
        sbc #45
        sta >playerY
        sta >playerOldY

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        tax
        lda >objectPositionYList,x
        sec
        sbc #45
        sta >objectPositionYList,x

; draw the new room
        jsr zeroSurroundGrid
        jsr drawRoom

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

objectRight dc i2'0'
objectBottom dc i2'0'

roomUp dc i2'0'
roomRight dc i2'0'
roomDown dc i2'0'
roomLeft dc i2'0'

testRoom dc i2'0'

playerCarriedObject dc i2'0'

savex dc i2'0'

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


; up/right/down/left
roomLinkList anop
        dc i2'$00,$00,$00,$00' ; 0
        dc i2'$08,$02,$80,$03' ; 1
        dc i2'$11,$03,$83,$01' ; 2
        dc i2'$06,$01,$86,$02' ; 3
        dc i2'$10,$05,$07,$06' ; 4
        dc i2'$1D,$06,$08,$04' ; 5
        dc i2'$07,$04,$03,$05' ; 6
        dc i2'$04,$08,$06,$08' ; 7
        dc i2'$05,$07,$01,$07' ; 8
        dc i2'$0A,$0A,$0B,$0A' ; 9
        dc i2'$03,$09,$09,$09' ; A
        dc i2'$09,$0C,$1C,$0D' ; B
        dc i2'$1C,$0D,$1D,$0B' ; C
        dc i2'$0F,$0B,$0E,$0C' ; D
        dc i2'$0D,$10,$0F,$10' ; E
        dc i2'$0E,$0F,$0D,$0F' ; F
        dc i2'$01,$1C,$04,$1C' ; 10
        dc i2'$06,$03,$02,$01' ; 11
        dc i2'$12,$12,$12,$12' ; 12 yellow castle
        dc i2'$15,$14,$15,$16' ; 13
        dc i2'$16,$15,$16,$13' ; 14
        dc i2'$13,$16,$13,$14' ; 15
        dc i2'$14,$13,$1B,$15' ; 16
        dc i2'$19,$18,$19,$18' ; 17
        dc i2'$1A,$17,$1A,$17' ; 18
        dc i2'$17,$1A,$17,$1A' ; 19
        dc i2'$18,$19,$18,$19' ; 1A white castle
        dc i2'$89,$89,$89,$89' ; 1B black castle
        dc i2'$1D,$07,$8C,$08' ; 1C
        dc i2'$8F,$01,$10,$03' ; 1D
        dc i2'$06,$01,$06,$03' ; 1E


roomLevelDiffsList anop
        dc i2'$10,$0f,$0f'      ; down from room 01
        dc i2'$05,$11,$11'      ; down from room 02
        dc i2'$1d,$0a,$0a'      ; down from room 03
        dc i2'$1c,$16,$16'      ; u/l/r/d from room 1b (black castle room)
        dc i2'$1b,$0c,$0c'      ; down from room 1c
        dc i2'$03,$0c,$0c'      ; up from room 1d (top entry room)


ROOM_INDEX_NUMBER_ROOM_PURPLE1          gequ $0
ROOM_INDEX_BELOW_YELLOW_CASTLE_OLIVE    gequ $1
ROOM_INDEX_BELOW_YELLOW_CASTLE_LIME     gequ $2
ROOM_INDEX_LEFT_OF_NAME                 gequ $3
ROOM_INDEX_BLUE_MAZE_TOP                gequ $4
ROOM_INDEX_BLUE_MAZE1                   gequ $5
ROOM_INDEX_BLUE_MAZE_BOTTOM             gequ $6
ROOM_INDEX_BLUE_MAZE_CENTER             gequ $7
ROOM_INDEX_BLUE_MAZE_ENTRY              gequ $8
ROOM_INDEX_MAZE_MIDDLE                  gequ $9
ROOM_INDEX_MAZE_ENTRY                   gequ $A
ROOM_INDEX_MAZE_SIDE                    gequ $B
ROOM_INDEX_SIDE_CORRIDOR_RIGHT          gequ $C
ROOM_INDEX_SIDE_CORRIDOR_LEFT           gequ $D
ROOM_INDEX_TOP_ENTRY_ROOM_CYAN          gequ $E
ROOM_INDEX_CASTLE_WHITE                 gequ $F
ROOM_INDEX_CASTLE_BLACK                 gequ $10
ROOM_INDEX_CASTLE_YELLOW                gequ $11
ROOM_INDEX_NUMBER_ROOM_YELLOW           gequ $12
ROOM_INDEX_BLACK_MAZE1                  gequ $13
ROOM_INDEX_BLACK_MAZE2                  gequ $14
ROOM_INDEX_BLACK_MAZE3                  gequ $15
ROOM_INDEX_BLACK_MAZE_ENTRY             gequ $16
ROOM_INDEX_RED_MAZE1                    gequ $17
ROOM_INDEX_RED_MAZE_TOP                 gequ $18
ROOM_INDEX_RED_MAZE_BOTTOM              gequ $19
ROOM_INDEX_WHITE_CASTLE_ENTRY           gequ $1A
ROOM_INDEX_TWO_EXIT_ROOM                gequ $1B
ROOM_INDEX_NUMBER_ROOM_PURPLE2          gequ $1C
ROOM_INDEX_TOP_ENTRY_ROOM_RED           gequ $1D
ROOM_INDEX_BELOW_YELLOW_CASTLE_PURPLE   gequ $1E

ROOM_INDEX_IN_YELLOW_CASTLE             gequ $12
ROOM_INDEX_IN_WHITE_CASTLE              gequ $1a
ROOM_INDEX_IN_BLACK_CASTLE              gequ $1b

        end
