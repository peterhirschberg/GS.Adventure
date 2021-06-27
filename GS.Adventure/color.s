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

; first entry is reserved for FILL MODE
        ldx #0
        lda #$0000
        sta >COLOR_TABLE,x

; black
        ldx #2
        lda #$0000
        sta >COLOR_TABLE,x

; light grey
        ldx #4
        lda #$0ccc
        sta >COLOR_TABLE,x

; white
        ldx #6
        lda #$0fff
        sta >COLOR_TABLE,x

; yellow
        ldx #8
        lda #$0fe4
        sta >COLOR_TABLE,x

; orange
        ldx #10
        lda #$0fa2
        sta >COLOR_TABLE,x

; red
        ldx #12
        lda #$0f56
        sta >COLOR_TABLE,x

; purple
        ldx #14
        lda #$0a5e
        sta >COLOR_TABLE,x

; blue
        ldx #16
        lda #$076f
        sta >COLOR_TABLE,x

; light cyan
        ldx #18
        lda #$05bf
        sta >COLOR_TABLE,x

; cyan
        ldx #20
        lda #$06d7
        sta >COLOR_TABLE,x

; dark green
        ldx #22
        lda #$02e2
        sta >COLOR_TABLE,x

; lime green
        ldx #24
        lda #$09e2
        sta >COLOR_TABLE,x

; olive green
        ldx #26
        lda #$0ab3
        sta >COLOR_TABLE,x

; tan
        ldx #28
        lda #$0db4
        sta >COLOR_TABLE,x

; "flash" color
        ldx #30
        lda #$0bf4
        sta >COLOR_TABLE,x

        rts

        
        end
