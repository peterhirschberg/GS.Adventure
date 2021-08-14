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

normalColorTable entry

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

; "fog" color (same color as background)
        ldx #28
        lda #$0ccc
        sta >COLOR_TABLE,x

; "flash" color
        ldx #30
        lda #$0bf4
        sta >COLOR_TABLE,x

        rts


blackColorTable entry

; black
        ldx #0
        lda #$0000
        sta >COLOR_TABLE,x

; light grey
        ldx #2
        lda #$0000
        sta >COLOR_TABLE,x

; white
        ldx #4
        lda #$0000
        sta >COLOR_TABLE,x

; yellow
        ldx #6
        lda #$0000
        sta >COLOR_TABLE,x

; orange
        ldx #8
        lda #$0000
        sta >COLOR_TABLE,x

; red
        ldx #10
        lda #$0000
        sta >COLOR_TABLE,x

; purple
        ldx #12
        lda #$0000
        sta >COLOR_TABLE,x

; blue
        ldx #14
        lda #$0000
        sta >COLOR_TABLE,x

; light cyan
        ldx #16
        lda #$0000
        sta >COLOR_TABLE,x

; cyan
        ldx #18
        lda #$0000
        sta >COLOR_TABLE,x

; dark green
        ldx #20
        lda #$0000
        sta >COLOR_TABLE,x

; lime green
        ldx #22
        lda #$0000
        sta >COLOR_TABLE,x

; olive green
        ldx #24
        lda #$0000
        sta >COLOR_TABLE,x

; tan
        ldx #26
        lda #$0000
        sta >COLOR_TABLE,x

; "fog" color (same color as background)
        ldx #28
        lda #$0000
        sta >COLOR_TABLE,x

; "flash" color
        ldx #30
        lda #$0000
        sta >COLOR_TABLE,x

        rts


fogColorTable entry

; black
        ldx #0
        lda #$0ccc
        sta >COLOR_TABLE,x

; light grey
        ldx #2
        lda #$0ccc
        sta >COLOR_TABLE,x

; white
        ldx #4
        lda #$0ccc
        sta >COLOR_TABLE,x

; yellow
        ldx #6
        lda #$0ccc
        sta >COLOR_TABLE,x

; orange
        ldx #8
        lda #$0ccc
        sta >COLOR_TABLE,x

; red
        ldx #10
        lda #$0ccc
        sta >COLOR_TABLE,x

; purple
        ldx #12
        lda #$0ccc
        sta >COLOR_TABLE,x

; blue
        ldx #14
        lda #$0ccc
        sta >COLOR_TABLE,x

; light cyan
        ldx #16
        lda #$0ccc
        sta >COLOR_TABLE,x

; cyan
        ldx #18
        lda #$0ccc
        sta >COLOR_TABLE,x

; dark green
        ldx #20
        lda #$0ccc
        sta >COLOR_TABLE,x

; lime green
        ldx #22
        lda #$0ccc
        sta >COLOR_TABLE,x

; olive green
        ldx #24
        lda #$0ccc
        sta >COLOR_TABLE,x

; tan
        ldx #26
        lda #$0ccc
        sta >COLOR_TABLE,x

; "fog" color (same color as background)
        ldx #28
        lda #$0ccc
        sta >COLOR_TABLE,x

; "flash" color
        ldx #30
        lda #$0ccc
        sta >COLOR_TABLE,x

        rts

        
splashColorTable entry

        ldx #0
        lda #$0e92
        sta >COLOR_TABLE,x

        ldx #2
        lda #$0922
        sta >COLOR_TABLE,x

        ldx #4
        lda #$0e43
        sta >COLOR_TABLE,x

        ldx #6
        lda #$0467
        sta >COLOR_TABLE,x

        ldx #8
        lda #$04bd
        sta >COLOR_TABLE,x

        ldx #10
        lda #$0132
        sta >COLOR_TABLE,x

        ldx #12
        lda #$0262
        sta >COLOR_TABLE,x

        ldx #14
        lda #$03a3
        sta >COLOR_TABLE,x

        ldx #16
        lda #$07c2
        sta >COLOR_TABLE,x

        ldx #18
        lda #$0bd1
        sta >COLOR_TABLE,x

        ldx #20
        lda #$0642
        sta >COLOR_TABLE,x

        ldx #22
        lda #$0b52
        sta >COLOR_TABLE,x

        ldx #24
        lda #$0ca4
        sta >COLOR_TABLE,x

        ldx #26
        lda #$0fd1
        sta >COLOR_TABLE,x

        ldx #28
        lda #$0fe4
        sta >COLOR_TABLE,x

        ldx #30
        lda #$0eee
        sta >COLOR_TABLE,x

        rts
        
        

advanceFlashColor entry

        inc flashR
        inc flashG
        inc flashB

        lda flashR
        cmp #$0f
        bcs resetR
        bra dontResetR

resetR anop

        lda #0
        sta flashR

dontResetR anop

        lda flashG
        cmp #$0f
        bcs resetG
        bra dontResetG

resetG anop

        lda #0
        sta flashG

dontResetG anop

        lda flashB
        cmp #$0f
        bcs resetB
        bra dontResetB

resetB anop

        lda #0
        sta flashB

dontResetB anop

        lda flashR
        asl a
        asl a
        asl a
        asl a
        asl a
        asl a
        asl a
        asl a
        sta tempR

        lda flashG
        asl a
        asl a
        asl a
        asl a
        sta tempG

        lda flashB
        sta tempB

        lda tempR
        ora tempG
        ora tempB

; store the flash color in the palette
        ldx #30
        sta >COLOR_TABLE,x

        rts


flashR dc i2'0'
flashG dc i2'5'
flashB dc i2'10'

tempR dc i2'0'
tempG dc i2'0'
tempB dc i2'0'

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
COLOR_FOG           gequ $eeee
COLOR_FLASH         gequ $ffff

        end
