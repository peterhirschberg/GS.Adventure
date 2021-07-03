;
;  color.s
;  GS.Asteroids
;
;  Created by Peter Hirschberg on 5/14/21.
;  Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

color start
        using globalData

initColorTable entry

; black
        ldx #0
        lda #$0000
        sta >COLOR_TABLE,x

; light grey
        ldx #2
        lda #$0ccc
        sta >COLOR_TABLE,x

; white
        ldx #4
        lda #$0fff
        sta >COLOR_TABLE,x

; yellow
        ldx #6
        lda #$0fe4
        sta >COLOR_TABLE,x

; orange
        ldx #8
        lda #$0fa2
        sta >COLOR_TABLE,x

; red
        ldx #10
        lda #$0f56
        sta >COLOR_TABLE,x

; purple
        ldx #12
        lda #$0a5e
        sta >COLOR_TABLE,x

; blue
        ldx #14
        lda #$076f
        sta >COLOR_TABLE,x

; light cyan
        ldx #16
        lda #$05bf
        sta >COLOR_TABLE,x

; cyan
        ldx #18
        lda #$06d7
        sta >COLOR_TABLE,x

; dark green
        ldx #20
        lda #$02e2
        sta >COLOR_TABLE,x

; lime green
        ldx #22
        lda #$09e2
        sta >COLOR_TABLE,x

; olive green
        ldx #24
        lda #$0ab3
        sta >COLOR_TABLE,x

; tan
        ldx #26
        lda #$0db4
        sta >COLOR_TABLE,x

; "flash" color
        ldx #28
        lda #$0bf4
        sta >COLOR_TABLE,x

        rts


        end

colorData data

COLOR_BLACK         gequ $0000
COLOR_LTGRAY        gequ $1111
COLOR_WHITE         gequ $2222
COLOR_YELLOW        gequ $3333
COLOR_ORANGE        gequ $4444
COLOR_RED           gequ $5555
COLOR_PURPLE        gequ $6666
COLOR_BLUE          gequ $7777
COLOR_LTCYAN        gequ $8888
COLOR_CYAN          gequ $9999
COLOR_DKGREEN       gequ $aaaa
COLOR_LIMEGREEN     gequ $bbbb
COLOR_OLIVEGREEN    gequ $cccc
COLOR_TAN           gequ $dddd
COLOR_FLASH         gequ $eeee

        end
