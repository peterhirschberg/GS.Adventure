;
;  objects.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/13/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


objects start
        using objectData


initObjectPositions entry

        ldx #OBJECT_PORT1
        jsr setInitialObjectValues

        ldx #OBJECT_PORT2
        jsr setInitialObjectValues

        ldx #OBJECT_PORT3
        jsr setInitialObjectValues

        ldx #OBJECT_YELLOWKEY
        jsr setInitialObjectValues

        ldx #OBJECT_WHITEKEY
        jsr setInitialObjectValues

        ldx #OBJECT_BLACKKEY
        jsr setInitialObjectValues

        ldx #OBJECT_REDDRAGON
        jsr setInitialObjectValues

        ldx #OBJECT_YELLOWDRAGON
        jsr setInitialObjectValues

        ldx #OBJECT_GREENDRAGON
        jsr setInitialObjectValues

        ldx #OBJECT_BRIDGE
        jsr setInitialObjectValues

        ldx #OBJECT_DOT
        jsr setInitialObjectValues

        ldx #OBJECT_CHALISE
        jsr setInitialObjectValues

        ldx #OBJECT_MAGNET
        jsr setInitialObjectValues

        ldx #OBJECT_SWORD
        jsr setInitialObjectValues

        ldx #OBJECT_AUTHOR
        jsr setInitialObjectValues

        ldx #OBJECT_NUMBERS
        jsr setInitialObjectValues

        rts


setInitialObjectValues entry
; TODO - check for game 1,2 or 3

        lda >objectInitialPositionXGame1List,x
        adjustSpriteX
        sta >objectPositionXList,x

        lda >objectInitialPositionYGame1List,x
        adjustSpriteY
        sta >objectPositionYList,x

        lda >objectInitialRoomGame1List,x
        sta >objectRoomList,x

        lda >objectInitialStateGame1List,x
        sta >objectStateList,x

        rts


runObjects entry

        ldx #OBJECT_PORT1
        jsr updateObjectValues

        ldx #OBJECT_PORT2
        jsr updateObjectValues

        ldx #OBJECT_PORT3
        jsr updateObjectValues

        ldx #OBJECT_YELLOWKEY
        jsr updateObjectValues

        ldx #OBJECT_WHITEKEY
        jsr updateObjectValues

        ldx #OBJECT_BLACKKEY
        jsr updateObjectValues

        ldx #OBJECT_REDDRAGON
        jsr updateObjectValues

        ldx #OBJECT_YELLOWDRAGON
        jsr updateObjectValues

        ldx #OBJECT_GREENDRAGON
        jsr updateObjectValues

        ldx #OBJECT_BRIDGE
        jsr updateObjectValues

        ldx #OBJECT_DOT
        jsr updateObjectValues

        ldx #OBJECT_CHALISE
        jsr updateObjectValues

        ldx #OBJECT_MAGNET
        jsr updateObjectValues

        ldx #OBJECT_SWORD
        jsr updateObjectValues

        rts


updateObjectValues entry

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x

        rts



getHeightForObjectState entry

        txa

        cmp #OBJECT_YELLOWKEY
        beq getKeyHeight
        cmp #OBJECT_WHITEKEY
        beq getKeyHeight
        cmp #OBJECT_BLACKKEY
        beq getKeyHeight

        cmp #OBJECT_PORT1
        beq getPort1Height
        cmp #OBJECT_PORT2
        beq getPort2Height
        cmp #OBJECT_PORT3
        beq getPort3Height

        cmp #OBJECT_YELLOWDRAGON
        beq getDragonHeight
        cmp #OBJECT_GREENDRAGON
        beq getDragonHeight
        cmp #OBJECT_REDDRAGON
        beq getDragonHeight

        cmp #OBJECT_MAGNET
        beq getMagnetHeight

        cmp #OBJECT_CHALISE
        beq getChaliseHeight

        cmp #OBJECT_SWORD
        beq getSwordHeight

        cmp #OBJECT_DOT
        beq getDotHeight

        cmp #OBJECT_BAT
        beq getBatHeight

        cmp #OBJECT_BRIDGE
        beq getBridgeHeight

        rts

getKeyHeight anop
        lda #OBJECT_HEIGHT_KEY
        rts

getPort1Height anop
        ldx #OBJECT_PORT1
        lda >objectStateList,x
        cmp #$00
        bne port1Open
        lda #OBJECT_HEIGHT_PORT_CLOSED
        rts
port1Open anop
        lda #OBJECT_HEIGHT_PORT_OPEN
        rts

getPort2Height anop
        ldx #OBJECT_PORT2
        lda >objectStateList,x
        cmp #$00
        bne port2Open
        lda #OBJECT_HEIGHT_PORT_CLOSED
        rts
port2Open anop
        lda #OBJECT_HEIGHT_PORT_OPEN
        rts

getPort3Height anop
        ldx #OBJECT_PORT3
        lda >objectStateList,x
        cmp #$00
        bne port3Open
        lda #OBJECT_HEIGHT_PORT_CLOSED
        rts
port3Open anop
        lda #OBJECT_HEIGHT_PORT_OPEN
        rts

getDragonHeight anop
        lda #OBJECT_HEIGHT_DRAGON1
        rts

getMagnetHeight anop
        lda #OBJECT_HEIGHT_MAGNET
        rts

getChaliseHeight anop
        lda #OBJECT_HEIGHT_CHALISE
        rts

getSwordHeight anop
        lda #OBJECT_HEIGHT_SWORD
        rts

getDotHeight anop
        lda #OBJECT_HEIGHT_DOT
        rts

getBatHeight anop
        lda #OBJECT_HEIGHT_BAT1
        rts

getBridgeHeight anop
        lda #OBJECT_HEIGHT_BRIDGE
        rts


getWidthForObjectState entry

        txa

        cmp #OBJECT_YELLOWKEY
        beq getKeyWidth
        cmp #OBJECT_WHITEKEY
        beq getKeyWidth
        cmp #OBJECT_BLACKKEY
        beq getKeyWidth

        cmp #OBJECT_PORT1
        beq getPortWidth
        cmp #OBJECT_PORT2
        beq getPortWidth
        cmp #OBJECT_PORT3
        beq getPortWidth

        cmp #OBJECT_YELLOWDRAGON
        beq getDragonWidth
        cmp #OBJECT_GREENDRAGON
        beq getDragonWidth
        cmp #OBJECT_REDDRAGON
        beq getDragonWidth

        cmp #OBJECT_MAGNET
        beq getMagnetWidth

        cmp #OBJECT_CHALISE
        beq getChaliseWidth

        cmp #OBJECT_SWORD
        beq getSwordWidth

        cmp #OBJECT_DOT
        beq getDotWidth

        cmp #OBJECT_BAT
        beq getBatWidth

        cmp #OBJECT_BRIDGE
        beq getBridgeWidth

        rts

getKeyWidth anop
        lda #OBJECT_WIDTH_KEY
        rts

getPortWidth anop
        lda #OBJECT_WIDTH_PORT_CLOSED
        rts

getDragonWidth anop
        lda #OBJECT_WIDTH_DRAGON1
        rts

getMagnetWidth anop
        lda #OBJECT_WIDTH_MAGNET
        rts

getChaliseWidth anop
        lda #OBJECT_WIDTH_CHALISE
        rts

getSwordWidth anop
        lda #OBJECT_WIDTH_SWORD
        rts

getDotWidth anop
        lda #OBJECT_WIDTH_DOT
        rts

getBatWidth anop
        lda #OBJECT_WIDTH_BAT1
        rts

getBridgeWidth anop
        lda #OBJECT_WIDTH_BRIDGE
        rts




temp dc i2'0'


        end


objectData data objectDataSeg

OBJECT_NONE             gequ -1
OBJECT_PORT1            gequ 2*0
OBJECT_PORT2            gequ 2*1
OBJECT_PORT3            gequ 2*2
OBJECT_AUTHOR           gequ 2*3
OBJECT_NUMBERS          gequ 2*4
OBJECT_REDDRAGON        gequ 2*5
OBJECT_YELLOWDRAGON     gequ 2*6
OBJECT_GREENDRAGON      gequ 2*7
OBJECT_SWORD            gequ 2*8
OBJECT_BRIDGE           gequ 2*9
OBJECT_YELLOWKEY        gequ 2*10
OBJECT_WHITEKEY         gequ 2*11
OBJECT_BLACKKEY         gequ 2*12
OBJECT_BAT              gequ 2*13
OBJECT_DOT              gequ 2*14
OBJECT_CHALISE          gequ 2*15
OBJECT_MAGNET           gequ 2*16
OBJECT_PLAYER           gequ 2*17

objectRoomList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectPositionXList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectPositionYList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectPositionOldXList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectPositionOldYList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectStateList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectColorList anop
        dc i2'COLOR_BLACK' ; port 1
        dc i2'COLOR_BLACK' ; port 2
        dc i2'COLOR_BLACK' ; port 3
        dc i2'COLOR_FLASH' ; author
        dc i2'COLOR_LIMEGREEN' ; numbers
        dc i2'COLOR_RED' ; red dragon
        dc i2'COLOR_YELLOW' ; yellow dragon
        dc i2'COLOR_LIMEGREEN' ; green dragon
        dc i2'COLOR_YELLOW' ; sword
        dc i2'COLOR_PURPLE' ; bridge
        dc i2'COLOR_YELLOW' ; yellow key
        dc i2'COLOR_WHITE' ; white key
        dc i2'COLOR_BLACK' ; black key
        dc i2'COLOR_BLACK' ; bat
        dc i2'COLOR_LTGRAY' ; dot
        dc i2'COLOR_FLASH' ; chalise
        dc i2'COLOR_BLACK' ; magnet

objectLinkedObjectList anop
        dc i2'OBJECT_NONE' ; port 1
        dc i2'OBJECT_NONE' ; port 2
        dc i2'OBJECT_NONE' ; port 3
        dc i2'OBJECT_NONE' ; author
        dc i2'OBJECT_NONE' ; numbers
        dc i2'OBJECT_NONE' ; red dragon
        dc i2'OBJECT_NONE' ; yellow dragon
        dc i2'OBJECT_NONE' ; green dragon
        dc i2'OBJECT_NONE' ; sword
        dc i2'OBJECT_NONE' ; bridge
        dc i2'OBJECT_NONE' ; yellow key
        dc i2'OBJECT_NONE' ; white key
        dc i2'OBJECT_NONE' ; black key
        dc i2'OBJECT_NONE' ; bat
        dc i2'OBJECT_NONE' ; dot
        dc i2'OBJECT_NONE' ; chalise
        dc i2'OBJECT_NONE' ; magnet
        dc i2'OBJECT_NONE' ; player

objectLinkedObjectXOffsetList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet
        dc i2'$00' ; player

objectLinkedObjectYOffsetList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet
        dc i2'$00' ; player

objectLinkableList anop
        dc i2'$0' ; port 1
        dc i2'$0' ; port 2
        dc i2'$0' ; port 3
        dc i2'$0' ; author
        dc i2'$0' ; numbers
        dc i2'$0' ; red dragon
        dc i2'$0' ; yellow dragon
        dc i2'$0' ; green dragon
        dc i2'$1' ; sword
        dc i2'$1' ; bridge
        dc i2'$1' ; yellow key
        dc i2'$1' ; white key
        dc i2'$1' ; black key
        dc i2'$1' ; bat
        dc i2'$1' ; dot
        dc i2'$1' ; chalise
        dc i2'$1' ; magnet
        dc i2'$0' ; player

objectDirtyList anop
        dc i2'$1' ; port 1
        dc i2'$1' ; port 2
        dc i2'$1' ; port 3
        dc i2'$1' ; author
        dc i2'$1' ; numbers
        dc i2'$1' ; red dragon
        dc i2'$1' ; yellow dragon
        dc i2'$1' ; green dragon
        dc i2'$1' ; sword
        dc i2'$1' ; bridge
        dc i2'$1' ; yellow key
        dc i2'$1' ; white key
        dc i2'$1' ; black key
        dc i2'$1' ; bat
        dc i2'$1' ; dot
        dc i2'$1' ; chalise
        dc i2'$1' ; magnet
        dc i2'$1' ; player


; Initial values

objectInitialRoomGame1List anop
        dc i2'$11' ; port 1
        dc i2'$0f' ; port 2
        dc i2'$10' ; port 3
        dc i2'$1e' ; author
        dc i2'$00' ; numbers
        dc i2'$0e' ; red dragon
        dc i2'$01' ; yellow dragon
        dc i2'$1d' ; green dragon
        dc i2'$12' ; sword
        dc i2'$04' ; bridge
        dc i2'$11' ; yellow key
        dc i2'$0e' ; white key
        dc i2'$1d' ; black key
        dc i2'$1a' ; bat
        dc i2'$15' ; dot
        dc i2'$1c' ; chalise
        dc i2'$1b' ; magnet

objectInitialStateGame1List anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
        dc i2'$00' ; author
        dc i2'$00' ; numbers
        dc i2'$00' ; red dragon
        dc i2'$00' ; yellow dragon
        dc i2'$00' ; green dragon
        dc i2'$00' ; sword
        dc i2'$00' ; bridge
        dc i2'$00' ; yellow key
        dc i2'$00' ; white key
        dc i2'$00' ; black key
        dc i2'$00' ; bat
        dc i2'$00' ; dot
        dc i2'$00' ; chalise
        dc i2'$00' ; magnet

objectInitialPositionXGame1List anop
        dc i2'$4d' ; port 1
        dc i2'$4d' ; port 2
        dc i2'$4d' ; port 3
        dc i2'$50' ; author
        dc i2'$50' ; numbers
        dc i2'$50' ; red dragon
        dc i2'$50' ; yellow dragon
        dc i2'$50' ; green dragon
        dc i2'$20' ; sword
        dc i2'$2b' ; bridge
        dc i2'$20' ; yellow key
        dc i2'$20' ; white key
        dc i2'$20' ; black key
        dc i2'$20' ; bat
        dc i2'$12' ; dot
        dc i2'$20' ; chalise
        dc i2'$20' ; magnet

objectInitialPositionYGame1List anop
        dc i2'$31' ; port 1
        dc i2'$31' ; port 2
        dc i2'$31' ; port 3
        dc i2'$69' ; author
        dc i2'$40' ; numbers
        dc i2'$20' ; red dragon
        dc i2'$20' ; yellow dragon
        dc i2'$20' ; green dragon
        dc i2'$20' ; sword
        dc i2'$37' ; bridge
        dc i2'$40' ; yellow key
        dc i2'$40' ; white key
        dc i2'$40' ; black key
        dc i2'$20' ; bat
        dc i2'$12' ; dot
        dc i2'$20' ; chalise
        dc i2'$20' ; magnet


OBJECT_WIDTH_KEY gequ 14
OBJECT_HEIGHT_KEY gequ 6

OBJECT_WIDTH_BRIDGE gequ 62
OBJECT_HEIGHT_BRIDGE gequ 48

OBJECT_WIDTH_BAT1 gequ 14
OBJECT_HEIGHT_BAT1 gequ 14

OBJECT_WIDTH_BAT2 gequ 14
OBJECT_HEIGHT_BAT2 gequ 22

OBJECT_WIDTH_DRAGON1 gequ 14
OBJECT_HEIGHT_DRAGON1 gequ 40

OBJECT_WIDTH_DRAGON2 gequ 14
OBJECT_HEIGHT_DRAGON2 gequ 44

OBJECT_WIDTH_DRAGON3 gequ 14
OBJECT_HEIGHT_DRAGON3 gequ 34

OBJECT_WIDTH_SWORD gequ 14
OBJECT_HEIGHT_SWORD gequ 10

OBJECT_WIDTH_DOT gequ 2
OBJECT_HEIGHT_DOT gequ 2

OBJECT_WIDTH_CHALISE gequ 14
OBJECT_HEIGHT_CHALISE gequ 18

OBJECT_WIDTH_MAGNET gequ 14
OBJECT_HEIGHT_MAGNET gequ 16

OBJECT_WIDTH_PORT_OPEN gequ 12
OBJECT_HEIGHT_PORT_OPEN gequ 8

OBJECT_WIDTH_PORT_CLOSED gequ 12
OBJECT_HEIGHT_PORT_CLOSED gequ 32




        end
