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
        
        

        
drawAddress dc i4'0'

backupStack dc i4'0'
    
        end


spriteData data
    
spriteX dc i2'0'
spriteY dc i2'0'
    
        end
