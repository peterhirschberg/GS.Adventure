;
;  spriteDragonDraw.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteDragonDraw start spriteDragonDrawSeg
        using globalData
        using spriteData


drawSpriteRedDragon1 entry

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
        rtl

drawSpriteRedDragon2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$55

        sta 1
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$55

        sta 1
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$55

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$55

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$55

        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$55

        sta 4
        sta 6
        sta 7
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

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
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
        adc #1920
        tcd

        short m
        lda #$55

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$55

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$55

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$55

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$55

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$55

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2880
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
        adc #3040
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
        adc #3200
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
        adc #3360
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
        adc #3520
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
        adc #3680
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
        adc #3840
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
        adc #4000
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
        adc #4160
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
        adc #4320
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
        adc #4480
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
        adc #4640
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
        adc #4800
        tcd

        short m
        lda #$55

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
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
        sta 6
        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$55

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$55

        sta 4
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
        sta 3
        sta 4
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
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$55

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$55

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #7840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #8960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #9920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #10880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #11840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #12960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #13920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #14880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #15840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #16960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #17920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #18880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #19840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #20960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #21920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #22880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #23840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #24960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #25920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #26880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #27840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #28960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #29920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #30880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #31840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #32960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #33920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #34880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #35840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36800
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #36960
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37120
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37280
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37440
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37600
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37760
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #37920
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38080
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38240
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38400
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38560
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38720
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #38880
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39040
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39200
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39360
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39520
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39680
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #39840
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40000
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40160
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40320
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40480
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40640
        tcd

        short m
        lda #$55

        long m

        lda >drawAddress
        clc
        adc #40800
        tcd

        short m
        lda #$55

        long m

        long m

        _spriteFooter
        rtl

drawSpriteRedDragon3 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$55

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$55

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
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
        adc #1440
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
        adc #1600
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$55

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$55

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$55

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
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
        adc #2720
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
        adc #2880
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
        adc #3040
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
        adc #3200
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$55

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        long m

        _spriteFooter
        rtl

drawSpriteYellowDragon1 entry

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
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$33

        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$33

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$33

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$33

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$33

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$33

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

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
        lda #$33

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSpriteYellowDragon2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$33

        sta 1
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$33

        sta 1
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$33

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$33

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$33

        sta 3
        sta 4
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

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$33

        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$33

        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$33

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$33

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$33

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$33

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$33

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$33

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$33

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$33

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$33

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
        adc #3680
        tcd

        short m
        lda #$33

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
        adc #3840
        tcd

        short m
        lda #$33

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
        adc #4000
        tcd

        short m
        lda #$33

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
        adc #4160
        tcd

        short m
        lda #$33

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
        adc #4320
        tcd

        short m
        lda #$33

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
        adc #4480
        tcd

        short m
        lda #$33

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
        lda #$33

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
        lda #$33

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda #$33

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$33

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$33

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$33

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$33

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #7840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #8960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #9920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #10880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #11840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #12960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #13920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #14880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #15840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #16960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #17920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #18880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #19840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #20960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #21920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #22880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #23840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #24960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #25920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #26880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #27840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #28960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #29920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #30880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #31840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #32960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #33920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #34880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #35840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36800
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #36960
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37120
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37280
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37440
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37600
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37760
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #37920
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38080
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38240
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38400
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38560
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38720
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #38880
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39040
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39200
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39360
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39520
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39680
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #39840
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40000
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40160
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40320
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40480
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40640
        tcd

        short m
        lda #$33

        long m

        lda >drawAddress
        clc
        adc #40800
        tcd

        short m
        lda #$33

        long m

        long m

        _spriteFooter
        rtl

drawSpriteYellowDragon3 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$33

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$33

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$33

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
        adc #1440
        tcd

        short m
        lda #$33

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
        adc #1600
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$33

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$33

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$33

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$33

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
        adc #2720
        tcd

        short m
        lda #$33

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
        adc #2880
        tcd

        short m
        lda #$33

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
        adc #3040
        tcd

        short m
        lda #$33

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
        adc #3200
        tcd

        short m
        lda #$33

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$33

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$33

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$33

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        long m

        _spriteFooter
        rtl

drawSpriteGreenDragon1 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$bb

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 5
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$bb

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

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
        lda #$bb

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSpriteGreenDragon2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 1
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 1
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$bb

        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$bb

        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$bb

        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 2
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$bb

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$bb

        sta 1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$bb

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$bb

        sta 0
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$bb

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$bb

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$bb

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
        adc #3680
        tcd

        short m
        lda #$bb

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
        adc #3840
        tcd

        short m
        lda #$bb

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
        adc #4000
        tcd

        short m
        lda #$bb

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
        adc #4160
        tcd

        short m
        lda #$bb

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
        adc #4320
        tcd

        short m
        lda #$bb

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
        adc #4480
        tcd

        short m
        lda #$bb

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
        lda #$bb

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
        lda #$bb

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda #$bb

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$bb

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$bb

        sta 4
        long m

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$bb

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$bb

        sta 0
        long m

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #7840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #8960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #9920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #10880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #11840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #12960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #13920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #14880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #15840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #16960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #17920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #18880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #19840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #20960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #21920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #22880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #23840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #24960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #25920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #26880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #27840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #28960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #29920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #30880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #31840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #32960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #33920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #34880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #35840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36800
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #36960
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37120
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37280
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37440
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37600
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37760
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #37920
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38080
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38240
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38400
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38560
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38720
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #38880
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39040
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39200
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39360
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39520
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39680
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #39840
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40000
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40160
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40320
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40480
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40640
        tcd

        short m
        lda #$bb

        long m

        lda >drawAddress
        clc
        adc #40800
        tcd

        short m
        lda #$bb

        long m

        long m

        _spriteFooter
        rtl

drawSpriteGreenDragon3 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$bb

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
        adc #1440
        tcd

        short m
        lda #$bb

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
        adc #1600
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 0
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$bb

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$bb

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
        adc #2720
        tcd

        short m
        lda #$bb

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
        adc #2880
        tcd

        short m
        lda #$bb

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
        adc #3040
        tcd

        short m
        lda #$bb

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
        adc #3200
        tcd

        short m
        lda #$bb

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$bb

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$bb

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$bb

        sta 1
        sta 2
        sta 3
        sta 4
        long m

        long m

        _spriteFooter
        rtl



        end
