;
;  objects.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/13/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

objects start
        using objectData


initObjectPositions entry

; TODO - check for game 1,2 or 3

        ldx #OBJECT_PORT1
        lda objectInitialPositionGame1XList,x
        sta objectPositionXList,x
        lda objectInitialPositionGame1YList,x
        sta objectPositionYList,x

        ldx #OBJECT_YELLOWKEY
        lda objectInitialPositionGame1XList,x
        sta objectPositionXList,x
        lda objectInitialPositionGame1YList,x
        sta objectPositionYList,x


        rts


        end

objectData data

OBJECT_PORT1            gequ 2*0
OBJECT_PORT2            gequ 2*1
OBJECT_PORT3            gequ 2*2
OBJECT_REDDRAGON        gequ 2*3
OBJECT_YELLOWDRAGON     gequ 2*4
OBJECT_GREENDRAGON      gequ 2*5
OBJECT_SWORD            gequ 2*6
OBJECT_BRIDGE           gequ 2*7
OBJECT_YELLOWKEY        gequ 2*8
OBJECT_WHITEKEY         gequ 2*9
OBJECT_BLACKKEY         gequ 2*10
OBJECT_BAT              gequ 2*11
OBJECT_DOT              gequ 2*12
OBJECT_CHALISE          gequ 2*13
OBJECT_MAGNET           gequ 2*14
OBJECT_AUTHOR           gequ 2*16
OBJECT_NUMBERS          gequ 2*18

objectRoomList anop
        dc i2'$11' ; port 1
        dc i2'$0f' ; port 2
        dc i2'$10' ; port 3
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

objectPositionXList anop
        dc i2'$00' ; port 1
        dc i2'$00' ; port 2
        dc i2'$00' ; port 3
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
        dc i2'$0c' ; port 1
        dc i2'$0c' ; port 2
        dc i2'$0c' ; port 3
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


objectInitialPositionGame1XList anop
        dc i2'$4d' ; port 1
        dc i2'$4d' ; port 2
        dc i2'$4d' ; port 3
        dc i2'$50' ; red dragon
        dc i2'$50' ; yellow dragon
        dc i2'$50' ; green dragon
        dc i2'$20' ; sword
        dc i2'$37' ; bridge
        dc i2'$20' ; yellow key
        dc i2'$20' ; white key
        dc i2'$20' ; black key
        dc i2'$20' ; bat
        dc i2'$12' ; dot
        dc i2'$20' ; chalise
        dc i2'$20' ; magnet

objectInitialPositionGame1YList anop
        dc i2'$31' ; port 1
        dc i2'$31' ; port 2
        dc i2'$31' ; port 3
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


        end
