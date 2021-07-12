;
;  sprites.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/10/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on
        mcopy global.macros
        keep global


sprites start
        using globalData
        using spriteData
    
    
drawSpriteYellowKey entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$33

        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$33

        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 7
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 7
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$33

        sta 0
        sta 2
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$33

        sta 0
        sta 2
        sta 5
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rts

drawSpriteRedDragon entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$55

        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$55

        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$55

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$55

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$55

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$55

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$55

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$55

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$55

        sta 0
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$55

        sta 0
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 7
        long m

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 7
        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rts

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
        rts
        
        
        
eraseSpriteDragon entry

        lda spriteX
        lsr a
        sta spriteX
        lda spriteY
        clc
        adc #0
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #1
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #2
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #3
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #4
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #5
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #6
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #7
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #8
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #9
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #10
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #11
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #12
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #13
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #14
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #15
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #16
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #17
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #18
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #19
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #20
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #21
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #22
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #23
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #24
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #25
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #26
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #27
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #28
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #29
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #30
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #31
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #32
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #33
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #34
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #35
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #36
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #37
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #38
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda spriteY
        clc
        adc #39
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


        rts


        
eraseSpriteDragonFog entry

        lda spriteX
        lsr a
        sta spriteX
        lda spriteY
        clc
        adc #0
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon0b
eraseSpriteDragon0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon0b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1b
eraseSpriteDragon1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1b anop
        long m

        lda spriteY
        clc
        adc #1
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2b
eraseSpriteDragon2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3b
eraseSpriteDragon3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3b anop
        long m

        lda spriteY
        clc
        adc #2
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon4b
eraseSpriteDragon4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon4b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon5b
eraseSpriteDragon5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon5b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon6b
eraseSpriteDragon6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon6b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon7b
eraseSpriteDragon7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon7b anop
        long m

        lda spriteY
        clc
        adc #3
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon8b
eraseSpriteDragon8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon8b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon9b
eraseSpriteDragon9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon9b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon10b
eraseSpriteDragon10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon10b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon11b
eraseSpriteDragon11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon11b anop
        long m

        lda spriteY
        clc
        adc #4
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon12b
eraseSpriteDragon12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon12b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon13b
eraseSpriteDragon13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon13b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon14b
eraseSpriteDragon14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon14b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon15b
eraseSpriteDragon15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon15b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon16b
eraseSpriteDragon16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon16b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon17b
eraseSpriteDragon17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon17b anop
        long m

        lda spriteY
        clc
        adc #5
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon18b
eraseSpriteDragon18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon18b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon19b
eraseSpriteDragon19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon19b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon20b
eraseSpriteDragon20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon20b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon21b
eraseSpriteDragon21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon21b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon22b
eraseSpriteDragon22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon22b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon23b
eraseSpriteDragon23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon23b anop
        long m

        lda spriteY
        clc
        adc #6
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon24b
eraseSpriteDragon24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon24b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon25b
eraseSpriteDragon25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon25b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon26b
eraseSpriteDragon26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon26b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon27b
eraseSpriteDragon27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon27b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon28b
eraseSpriteDragon28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon28b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon29b
eraseSpriteDragon29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon29b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon30b
eraseSpriteDragon30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon30b anop
        long m

        lda spriteY
        clc
        adc #7
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon31b
eraseSpriteDragon31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon31b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon32b
eraseSpriteDragon32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon32b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon33b
eraseSpriteDragon33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon33b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon34b
eraseSpriteDragon34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon34b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon35b
eraseSpriteDragon35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon35b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon36b
eraseSpriteDragon36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon36b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon37b
eraseSpriteDragon37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon37b anop
        long m

        lda spriteY
        clc
        adc #8
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon38b
eraseSpriteDragon38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon38b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon39b
eraseSpriteDragon39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon39b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon40b
eraseSpriteDragon40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon40b anop
        long m

        lda spriteY
        clc
        adc #9
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon41b
eraseSpriteDragon41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon41b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon42b
eraseSpriteDragon42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon42b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon43b
eraseSpriteDragon43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon43b anop
        long m

        lda spriteY
        clc
        adc #10
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon44b
eraseSpriteDragon44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon44b anop
        long m

        lda spriteY
        clc
        adc #11
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon45b
eraseSpriteDragon45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon45b anop
        long m

        lda spriteY
        clc
        adc #12
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon46b
eraseSpriteDragon46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon46b anop
        long m

        lda spriteY
        clc
        adc #13
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon47b
eraseSpriteDragon47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon47b anop
        long m

        lda spriteY
        clc
        adc #14
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon48b
eraseSpriteDragon48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon48b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon49b
eraseSpriteDragon49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon49b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon50b
eraseSpriteDragon50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon50b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon51b
eraseSpriteDragon51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon51b anop
        long m

        lda spriteY
        clc
        adc #15
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon52b
eraseSpriteDragon52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon52b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon53b
eraseSpriteDragon53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon53b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon54b
eraseSpriteDragon54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon54b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon55b
eraseSpriteDragon55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon55b anop
        long m

        lda spriteY
        clc
        adc #16
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon56b
eraseSpriteDragon56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon56b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon57b
eraseSpriteDragon57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon57b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon58b
eraseSpriteDragon58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon58b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon59b
eraseSpriteDragon59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon59b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon60b
eraseSpriteDragon60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon60b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon61b
eraseSpriteDragon61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon61b anop
        long m

        lda spriteY
        clc
        adc #17
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon62b
eraseSpriteDragon62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon62b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon63b
eraseSpriteDragon63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon63b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon64b
eraseSpriteDragon64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon64b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon65b
eraseSpriteDragon65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon65b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon66b
eraseSpriteDragon66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon66b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon67b
eraseSpriteDragon67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon67b anop
        long m

        lda spriteY
        clc
        adc #18
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon68b
eraseSpriteDragon68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon68b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon69b
eraseSpriteDragon69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon69b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon70b
eraseSpriteDragon70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon70b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon71b
eraseSpriteDragon71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon71b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon72b
eraseSpriteDragon72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon72b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon73b
eraseSpriteDragon73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon73b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon74b
eraseSpriteDragon74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon74b anop
        long m

        lda spriteY
        clc
        adc #19
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon75b
eraseSpriteDragon75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon75b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon76b
eraseSpriteDragon76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon76b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon77b
eraseSpriteDragon77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon77b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon78b
eraseSpriteDragon78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon78b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon79b
eraseSpriteDragon79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon79b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon80b
eraseSpriteDragon80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon80b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon81b
eraseSpriteDragon81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon81b anop
        long m

        lda spriteY
        clc
        adc #20
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon82b
eraseSpriteDragon82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon82b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon83b
eraseSpriteDragon83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon83b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon84b
eraseSpriteDragon84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon84b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon85b
eraseSpriteDragon85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon85b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon86b
eraseSpriteDragon86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon86b anop
        long m

        lda spriteY
        clc
        adc #21
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon87b
eraseSpriteDragon87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon87b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon88b
eraseSpriteDragon88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon88b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon89b
eraseSpriteDragon89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon89b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon90b
eraseSpriteDragon90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon90b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon91b
eraseSpriteDragon91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon91b anop
        long m

        lda spriteY
        clc
        adc #22
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon92b
eraseSpriteDragon92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon92b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon93b
eraseSpriteDragon93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon93b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon94b
eraseSpriteDragon94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon94b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon95b
eraseSpriteDragon95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon95b anop
        long m

        lda spriteY
        clc
        adc #23
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon96b
eraseSpriteDragon96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon96b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon97b
eraseSpriteDragon97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon97b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon98b
eraseSpriteDragon98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon98b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon99b
eraseSpriteDragon99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon99b anop
        long m

        lda spriteY
        clc
        adc #24
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon100b
eraseSpriteDragon100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon100b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon101b
eraseSpriteDragon101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon101b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon102b
eraseSpriteDragon102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon102b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon103b
eraseSpriteDragon103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon103b anop
        long m

        lda spriteY
        clc
        adc #25
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon104b
eraseSpriteDragon104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon104b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon105b
eraseSpriteDragon105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon105b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon106b
eraseSpriteDragon106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon106b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon107b
eraseSpriteDragon107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon107b anop
        long m

        lda spriteY
        clc
        adc #26
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon108a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon108b
eraseSpriteDragon108a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon108b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon109a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon109b
eraseSpriteDragon109a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon109b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon110a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon110b
eraseSpriteDragon110a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon110b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon111a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon111b
eraseSpriteDragon111a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon111b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon112a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon112b
eraseSpriteDragon112a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon112b anop
        long m

        lda spriteY
        clc
        adc #27
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon113a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon113b
eraseSpriteDragon113a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon113b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon114a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon114b
eraseSpriteDragon114a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon114b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon115a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon115b
eraseSpriteDragon115a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon115b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon116a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon116b
eraseSpriteDragon116a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon116b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon117a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon117b
eraseSpriteDragon117a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon117b anop
        long m

        lda spriteY
        clc
        adc #28
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon118a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon118b
eraseSpriteDragon118a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon118b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon119a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon119b
eraseSpriteDragon119a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon119b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon120a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon120b
eraseSpriteDragon120a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon120b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon121a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon121b
eraseSpriteDragon121a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon121b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon122a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon122b
eraseSpriteDragon122a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon122b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon123a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon123b
eraseSpriteDragon123a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon123b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon124a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon124b
eraseSpriteDragon124a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon124b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon125a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon125b
eraseSpriteDragon125a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon125b anop
        long m

        lda spriteY
        clc
        adc #29
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon126a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon126b
eraseSpriteDragon126a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon126b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon127a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon127b
eraseSpriteDragon127a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon127b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon128a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon128b
eraseSpriteDragon128a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon128b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon129a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon129b
eraseSpriteDragon129a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon129b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon130a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon130b
eraseSpriteDragon130a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon130b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon131a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon131b
eraseSpriteDragon131a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon131b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon132a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon132b
eraseSpriteDragon132a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon132b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon133a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon133b
eraseSpriteDragon133a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon133b anop
        long m

        lda spriteY
        clc
        adc #30
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon134a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon134b
eraseSpriteDragon134a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon134b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon135a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon135b
eraseSpriteDragon135a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon135b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon136a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon136b
eraseSpriteDragon136a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon136b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon137a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon137b
eraseSpriteDragon137a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon137b anop
        long m

        lda spriteY
        clc
        adc #31
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon138a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon138b
eraseSpriteDragon138a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon138b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon139a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon139b
eraseSpriteDragon139a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon139b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon140a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon140b
eraseSpriteDragon140a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon140b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon141a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon141b
eraseSpriteDragon141a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon141b anop
        long m

        lda spriteY
        clc
        adc #32
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon142a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon142b
eraseSpriteDragon142a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon142b anop
        long m

        lda spriteY
        clc
        adc #33
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon143a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon143b
eraseSpriteDragon143a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon143b anop
        long m

        lda spriteY
        clc
        adc #34
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon144a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon144b
eraseSpriteDragon144a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon144b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon145a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon145b
eraseSpriteDragon145a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon145b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon146a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon146b
eraseSpriteDragon146a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon146b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon147a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon147b
eraseSpriteDragon147a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon147b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon148a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon148b
eraseSpriteDragon148a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon148b anop
        long m

        lda spriteY
        clc
        adc #35
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon149a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon149b
eraseSpriteDragon149a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon149b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon150a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon150b
eraseSpriteDragon150a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon150b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon151a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon151b
eraseSpriteDragon151a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon151b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon152a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon152b
eraseSpriteDragon152a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon152b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon153a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon153b
eraseSpriteDragon153a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon153b anop
        long m

        lda spriteY
        clc
        adc #36
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon154a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon154b
eraseSpriteDragon154a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon154b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon155a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon155b
eraseSpriteDragon155a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon155b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon156a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon156b
eraseSpriteDragon156a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon156b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon157a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon157b
eraseSpriteDragon157a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon157b anop
        long m

        lda spriteY
        clc
        adc #37
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon158a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon158b
eraseSpriteDragon158a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon158b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon159a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon159b
eraseSpriteDragon159a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon159b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon160a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon160b
eraseSpriteDragon160a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon160b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon161a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon161b
eraseSpriteDragon161a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon161b anop
        long m

        lda spriteY
        clc
        adc #38
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon162a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon162b
eraseSpriteDragon162a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon162b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon163a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon163b
eraseSpriteDragon163a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon163b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon164a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon164b
eraseSpriteDragon164a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon164b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon165a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon165b
eraseSpriteDragon165a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon165b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon166a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon166b
eraseSpriteDragon166a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon166b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon167a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon167b
eraseSpriteDragon167a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon167b anop
        long m

        lda spriteY
        clc
        adc #39
        asl a
        tax
        lda screenRowOffsets,x
        sta rowAddress

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon168a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon168b
eraseSpriteDragon168a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon168b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon169a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon169b
eraseSpriteDragon169a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon169b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon170a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon170b
eraseSpriteDragon170a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon170b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon171a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon171b
eraseSpriteDragon171a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon171b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #6
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon172a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon172b
eraseSpriteDragon172a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon172b anop
        long m

        lda rowAddress
        clc
        adc spriteX

        clc
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon173a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon173b
eraseSpriteDragon173a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon173b anop
        long m


        rts

        
rowAddress dc i4'0'
drawAddress dc i4'0'

backupStack dc i4'0'
    
        end


spriteData data
    
spriteX dc i2'0'
spriteY dc i2'0'
    
        end
