;
;  spriteBridge.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteBridge start spriteBridgeSeg
        using globalData
        using spriteData

drawSpriteBridge entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$66

        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        long m

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #7040
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #7200
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #7360
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        lda >drawAddress
        clc
        adc #7520
        tcd

        short m
        lda #$66

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 24
        sta 25
        sta 26
        sta 27
        sta 28
        sta 29
        sta 30
        sta 31
        long m

        long m

        _spriteFooter
        rtl

eraseSpriteBridge entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        clc
        adc #0
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #1
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #2
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #3
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #4
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #5
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #6
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #7
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #8
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #9
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #10
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #11
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #12
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #13
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #14
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #15
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #16
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #17
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #18
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #19
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #20
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #21
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #22
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #23
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #24
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #25
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #26
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #27
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #28
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #29
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #31
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #32
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #33
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #34
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #35
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #36
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #37
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #38
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #39
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #40
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #41
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #42
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #43
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #44
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #45
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #46
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >spriteY
        clc
        adc #47
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


        rtl

eraseSpriteBridgeFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        clc
        adc #0
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog0b
eraseSpriteBridgeFog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog0b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog1b
eraseSpriteBridgeFog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog1b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog2b
eraseSpriteBridgeFog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog2b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog3b
eraseSpriteBridgeFog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog3b anop
        long m

        lda >spriteY
        clc
        adc #1
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog4b
eraseSpriteBridgeFog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog4b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog5b
eraseSpriteBridgeFog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog5b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog6b
eraseSpriteBridgeFog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog6b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog7b
eraseSpriteBridgeFog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog7b anop
        long m

        lda >spriteY
        clc
        adc #2
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog8b
eraseSpriteBridgeFog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog8b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog9b
eraseSpriteBridgeFog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog9b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog10b
eraseSpriteBridgeFog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog10b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog11b
eraseSpriteBridgeFog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog11b anop
        long m

        lda >spriteY
        clc
        adc #3
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog12b
eraseSpriteBridgeFog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog12b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog13b
eraseSpriteBridgeFog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog13b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog14b
eraseSpriteBridgeFog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog14b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog15b
eraseSpriteBridgeFog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog15b anop
        long m

        lda >spriteY
        clc
        adc #4
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog16b
eraseSpriteBridgeFog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog16b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog17b
eraseSpriteBridgeFog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog17b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog18b
eraseSpriteBridgeFog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog18b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog19b
eraseSpriteBridgeFog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog19b anop
        long m

        lda >spriteY
        clc
        adc #5
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog20b
eraseSpriteBridgeFog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog20b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog21b
eraseSpriteBridgeFog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog21b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog22b
eraseSpriteBridgeFog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog22b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog23b
eraseSpriteBridgeFog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog23b anop
        long m

        lda >spriteY
        clc
        adc #6
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog24b
eraseSpriteBridgeFog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog24b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog25b
eraseSpriteBridgeFog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog25b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog26b
eraseSpriteBridgeFog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog26b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog27b
eraseSpriteBridgeFog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog27b anop
        long m

        lda >spriteY
        clc
        adc #7
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog28b
eraseSpriteBridgeFog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog28b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog29b
eraseSpriteBridgeFog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog29b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog30b
eraseSpriteBridgeFog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog30b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog31b
eraseSpriteBridgeFog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog31b anop
        long m

        lda >spriteY
        clc
        adc #8
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog32b
eraseSpriteBridgeFog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog32b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog33b
eraseSpriteBridgeFog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog33b anop
        long m

        lda >spriteY
        clc
        adc #9
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog34b
eraseSpriteBridgeFog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog34b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog35b
eraseSpriteBridgeFog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog35b anop
        long m

        lda >spriteY
        clc
        adc #10
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog36b
eraseSpriteBridgeFog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog36b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog37b
eraseSpriteBridgeFog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog37b anop
        long m

        lda >spriteY
        clc
        adc #11
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog38b
eraseSpriteBridgeFog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog38b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog39b
eraseSpriteBridgeFog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog39b anop
        long m

        lda >spriteY
        clc
        adc #12
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog40b
eraseSpriteBridgeFog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog40b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog41b
eraseSpriteBridgeFog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog41b anop
        long m

        lda >spriteY
        clc
        adc #13
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog42b
eraseSpriteBridgeFog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog42b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog43b
eraseSpriteBridgeFog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog43b anop
        long m

        lda >spriteY
        clc
        adc #14
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog44b
eraseSpriteBridgeFog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog44b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog45b
eraseSpriteBridgeFog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog45b anop
        long m

        lda >spriteY
        clc
        adc #15
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog46b
eraseSpriteBridgeFog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog46b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog47b
eraseSpriteBridgeFog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog47b anop
        long m

        lda >spriteY
        clc
        adc #16
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog48b
eraseSpriteBridgeFog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog48b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog49b
eraseSpriteBridgeFog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog49b anop
        long m

        lda >spriteY
        clc
        adc #17
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog50b
eraseSpriteBridgeFog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog50b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog51b
eraseSpriteBridgeFog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog51b anop
        long m

        lda >spriteY
        clc
        adc #18
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog52b
eraseSpriteBridgeFog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog52b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog53b
eraseSpriteBridgeFog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog53b anop
        long m

        lda >spriteY
        clc
        adc #19
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog54b
eraseSpriteBridgeFog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog54b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog55b
eraseSpriteBridgeFog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog55b anop
        long m

        lda >spriteY
        clc
        adc #20
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog56b
eraseSpriteBridgeFog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog56b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog57b
eraseSpriteBridgeFog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog57b anop
        long m

        lda >spriteY
        clc
        adc #21
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog58b
eraseSpriteBridgeFog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog58b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog59b
eraseSpriteBridgeFog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog59b anop
        long m

        lda >spriteY
        clc
        adc #22
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog60b
eraseSpriteBridgeFog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog60b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog61b
eraseSpriteBridgeFog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog61b anop
        long m

        lda >spriteY
        clc
        adc #23
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog62b
eraseSpriteBridgeFog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog62b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog63b
eraseSpriteBridgeFog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog63b anop
        long m

        lda >spriteY
        clc
        adc #24
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog64b
eraseSpriteBridgeFog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog64b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog65b
eraseSpriteBridgeFog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog65b anop
        long m

        lda >spriteY
        clc
        adc #25
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog66b
eraseSpriteBridgeFog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog66b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog67b
eraseSpriteBridgeFog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog67b anop
        long m

        lda >spriteY
        clc
        adc #26
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog68b
eraseSpriteBridgeFog68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog68b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog69b
eraseSpriteBridgeFog69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog69b anop
        long m

        lda >spriteY
        clc
        adc #27
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog70b
eraseSpriteBridgeFog70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog70b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog71b
eraseSpriteBridgeFog71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog71b anop
        long m

        lda >spriteY
        clc
        adc #28
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog72b
eraseSpriteBridgeFog72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog72b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog73b
eraseSpriteBridgeFog73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog73b anop
        long m

        lda >spriteY
        clc
        adc #29
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog74b
eraseSpriteBridgeFog74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog74b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog75b
eraseSpriteBridgeFog75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog75b anop
        long m

        lda >spriteY
        clc
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog76b
eraseSpriteBridgeFog76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog76b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog77b
eraseSpriteBridgeFog77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog77b anop
        long m

        lda >spriteY
        clc
        adc #31
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog78b
eraseSpriteBridgeFog78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog78b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog79b
eraseSpriteBridgeFog79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog79b anop
        long m

        lda >spriteY
        clc
        adc #32
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog80b
eraseSpriteBridgeFog80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog80b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog81b
eraseSpriteBridgeFog81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog81b anop
        long m

        lda >spriteY
        clc
        adc #33
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog82b
eraseSpriteBridgeFog82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog82b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog83b
eraseSpriteBridgeFog83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog83b anop
        long m

        lda >spriteY
        clc
        adc #34
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog84b
eraseSpriteBridgeFog84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog84b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog85b
eraseSpriteBridgeFog85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog85b anop
        long m

        lda >spriteY
        clc
        adc #35
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog86b
eraseSpriteBridgeFog86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog86b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog87b
eraseSpriteBridgeFog87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog87b anop
        long m

        lda >spriteY
        clc
        adc #36
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog88b
eraseSpriteBridgeFog88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog88b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog89b
eraseSpriteBridgeFog89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog89b anop
        long m

        lda >spriteY
        clc
        adc #37
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog90b
eraseSpriteBridgeFog90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog90b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog91b
eraseSpriteBridgeFog91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog91b anop
        long m

        lda >spriteY
        clc
        adc #38
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog92b
eraseSpriteBridgeFog92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog92b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog93b
eraseSpriteBridgeFog93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog93b anop
        long m

        lda >spriteY
        clc
        adc #39
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog94b
eraseSpriteBridgeFog94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog94b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog95b
eraseSpriteBridgeFog95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog95b anop
        long m

        lda >spriteY
        clc
        adc #40
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog96b
eraseSpriteBridgeFog96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog96b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog97b
eraseSpriteBridgeFog97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog97b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog98b
eraseSpriteBridgeFog98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog98b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog99b
eraseSpriteBridgeFog99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog99b anop
        long m

        lda >spriteY
        clc
        adc #41
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog100b
eraseSpriteBridgeFog100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog100b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog101b
eraseSpriteBridgeFog101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog101b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog102b
eraseSpriteBridgeFog102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog102b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog103b
eraseSpriteBridgeFog103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog103b anop
        long m

        lda >spriteY
        clc
        adc #42
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog104b
eraseSpriteBridgeFog104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog104b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog105b
eraseSpriteBridgeFog105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog105b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog106b
eraseSpriteBridgeFog106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog106b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog107b
eraseSpriteBridgeFog107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog107b anop
        long m

        lda >spriteY
        clc
        adc #43
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog108a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog108b
eraseSpriteBridgeFog108a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog108b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog109a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog109b
eraseSpriteBridgeFog109a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog109b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog110a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog110b
eraseSpriteBridgeFog110a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog110b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog111a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog111b
eraseSpriteBridgeFog111a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog111b anop
        long m

        lda >spriteY
        clc
        adc #44
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog112a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog112b
eraseSpriteBridgeFog112a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog112b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog113a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog113b
eraseSpriteBridgeFog113a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog113b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog114a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog114b
eraseSpriteBridgeFog114a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog114b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog115a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog115b
eraseSpriteBridgeFog115a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog115b anop
        long m

        lda >spriteY
        clc
        adc #45
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog116a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog116b
eraseSpriteBridgeFog116a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog116b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog117a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog117b
eraseSpriteBridgeFog117a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog117b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog118a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog118b
eraseSpriteBridgeFog118a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog118b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog119a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog119b
eraseSpriteBridgeFog119a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog119b anop
        long m

        lda >spriteY
        clc
        adc #46
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog120a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog120b
eraseSpriteBridgeFog120a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog120b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog121a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog121b
eraseSpriteBridgeFog121a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog121b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog122a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog122b
eraseSpriteBridgeFog122a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog122b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog123a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog123b
eraseSpriteBridgeFog123a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog123b anop
        long m

        lda >spriteY
        clc
        adc #47
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog124a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog124b
eraseSpriteBridgeFog124a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog124b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog125a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog125b
eraseSpriteBridgeFog125a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog125b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog126a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog126b
eraseSpriteBridgeFog126a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog126b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog127a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog127b
eraseSpriteBridgeFog127a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog127b anop
        long m


        rtl

        end
