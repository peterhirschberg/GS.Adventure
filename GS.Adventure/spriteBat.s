;
;  spriteBat.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteBat start spriteBatSeg
        using globalData
        using spriteData


drawSpriteBat1 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$00

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
        adc #1120
        tcd

        short m
        lda #$00

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
        adc #1280
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #7840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #8960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #9920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #10880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #11840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #12960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #13920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #14880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #15840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #16960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #17920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #18880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #19840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #20960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #21920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #22880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #23840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #24960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #25920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #26880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #27840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #28960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #29920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #30880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #31840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #32960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #33920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #34880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #35840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #36960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37120
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37280
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37440
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37600
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37760
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #37920
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38080
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38240
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38400
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38560
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38720
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #38880
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39040
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39200
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39360
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39520
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39680
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #39840
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40000
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40160
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40320
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40480
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40640
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40800
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #40960
        tcd

        short m
        lda #$00

        long m

        lda >drawAddress
        clc
        adc #41120
        tcd

        short m
        lda #$00

        long m

        long m

        _spriteFooter
        rtl

drawSpriteBat2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$00

        sta 0
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$00

        sta 0
        long m

        long m

        _spriteFooter
        rtl

eraseSpriteBat1 entry

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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
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
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
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
        adc #3
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
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

        lda >spriteY
        clc
        adc #13
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #14
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #15
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #16
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #17
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #18
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #19
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #20
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #21
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #22
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #23
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #24
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #25
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #26
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #27
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #28
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #29
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #31
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #32
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #33
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #34
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #35
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #36
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #37
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #38
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #39
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #40
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #41
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #42
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #43
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #44
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #45
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #46
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #47
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #48
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #49
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #50
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #51
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #52
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #53
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #54
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #55
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #56
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #57
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #58
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #59
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #60
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #61
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #62
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #63
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #64
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #65
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #66
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #67
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #68
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #69
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #70
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #71
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #72
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #73
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #74
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #75
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #76
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #77
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #78
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #79
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #80
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #81
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #82
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #83
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #84
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #85
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #86
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #87
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #88
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #89
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #90
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #91
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #92
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #93
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #94
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #95
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #96
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #97
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #98
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #99
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #100
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #101
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #102
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #103
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #104
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #105
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #106
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #107
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #108
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #109
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #110
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #111
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #112
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #113
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #114
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #115
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #116
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #117
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #118
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #119
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #120
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #121
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #122
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #123
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #124
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #125
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #126
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #127
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #128
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #129
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #130
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #131
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #132
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #133
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #134
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #135
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #136
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #137
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #138
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #139
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #140
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #141
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #142
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #143
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #144
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #145
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #146
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #147
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #148
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #149
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #150
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #151
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #152
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #153
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #154
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #155
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #156
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #157
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #158
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #159
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #160
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #161
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #162
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #163
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #164
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #165
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #166
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #167
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #168
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #169
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #170
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #171
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #172
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #173
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #174
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #175
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #176
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #177
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #178
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #179
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #180
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #181
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #182
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #183
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #184
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #185
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #186
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #187
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #188
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #189
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #190
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #191
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #192
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #193
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #194
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #195
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #196
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #197
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #198
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #199
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #200
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #201
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #202
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #203
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #204
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #205
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #206
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #207
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #208
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #209
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #210
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #211
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #212
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #213
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #214
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #215
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #216
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #217
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #218
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #219
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #220
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #221
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #222
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #223
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #224
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #225
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #226
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #227
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #228
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #229
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #230
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #231
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #232
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #233
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #234
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #235
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #236
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #237
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #238
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #239
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #240
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #241
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #242
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #243
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #244
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #245
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #246
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #247
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #248
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #249
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #250
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #251
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #252
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #253
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #254
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #255
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #256
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #257
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress


        rtl

eraseSpriteBat2 entry

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


        rtl

eraseSpriteBat1Fog entry

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
        beq eraseSpriteBat1Fog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog0b
eraseSpriteBat1Fog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog0b anop
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
        beq eraseSpriteBat1Fog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog1b
eraseSpriteBat1Fog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog1b anop
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
        beq eraseSpriteBat1Fog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog2b
eraseSpriteBat1Fog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog2b anop
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
        beq eraseSpriteBat1Fog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog3b
eraseSpriteBat1Fog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog3b anop
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
        beq eraseSpriteBat1Fog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog4b
eraseSpriteBat1Fog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog4b anop
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
        beq eraseSpriteBat1Fog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog5b
eraseSpriteBat1Fog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog5b anop
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
        beq eraseSpriteBat1Fog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog6b
eraseSpriteBat1Fog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog6b anop
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
        beq eraseSpriteBat1Fog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog7b
eraseSpriteBat1Fog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog7b anop
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
        beq eraseSpriteBat1Fog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog8b
eraseSpriteBat1Fog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog8b anop
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
        beq eraseSpriteBat1Fog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog9b
eraseSpriteBat1Fog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog9b anop
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
        beq eraseSpriteBat1Fog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog10b
eraseSpriteBat1Fog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog10b anop
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
        beq eraseSpriteBat1Fog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog11b
eraseSpriteBat1Fog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog11b anop
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
        beq eraseSpriteBat1Fog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog12b
eraseSpriteBat1Fog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog12b anop
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
        beq eraseSpriteBat1Fog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog13b
eraseSpriteBat1Fog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog13b anop
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
        beq eraseSpriteBat1Fog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog14b
eraseSpriteBat1Fog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog14b anop
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
        beq eraseSpriteBat1Fog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog15b
eraseSpriteBat1Fog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog15b anop
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
        beq eraseSpriteBat1Fog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog16b
eraseSpriteBat1Fog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog16b anop
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
        beq eraseSpriteBat1Fog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog17b
eraseSpriteBat1Fog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog17b anop
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
        beq eraseSpriteBat1Fog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog18b
eraseSpriteBat1Fog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog18b anop
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
        beq eraseSpriteBat1Fog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog19b
eraseSpriteBat1Fog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog19b anop
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
        beq eraseSpriteBat1Fog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog20b
eraseSpriteBat1Fog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog20b anop
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
        beq eraseSpriteBat1Fog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog21b
eraseSpriteBat1Fog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog21b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog22b
eraseSpriteBat1Fog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog22b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog23b
eraseSpriteBat1Fog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog23b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog24b
eraseSpriteBat1Fog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog24b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog25b
eraseSpriteBat1Fog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog25b anop
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
        beq eraseSpriteBat1Fog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog26b
eraseSpriteBat1Fog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog26b anop
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
        beq eraseSpriteBat1Fog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog27b
eraseSpriteBat1Fog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog27b anop
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
        beq eraseSpriteBat1Fog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog28b
eraseSpriteBat1Fog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog28b anop
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
        beq eraseSpriteBat1Fog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog29b
eraseSpriteBat1Fog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog29b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog30b
eraseSpriteBat1Fog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog30b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog31b
eraseSpriteBat1Fog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog31b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog32b
eraseSpriteBat1Fog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog32b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog33b
eraseSpriteBat1Fog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog33b anop
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
        beq eraseSpriteBat1Fog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog34b
eraseSpriteBat1Fog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog34b anop
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
        beq eraseSpriteBat1Fog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog35b
eraseSpriteBat1Fog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog35b anop
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
        beq eraseSpriteBat1Fog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog36b
eraseSpriteBat1Fog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog36b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog37b
eraseSpriteBat1Fog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog37b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog38b
eraseSpriteBat1Fog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog38b anop
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
        beq eraseSpriteBat1Fog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog39b
eraseSpriteBat1Fog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog39b anop
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
        beq eraseSpriteBat1Fog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog40b
eraseSpriteBat1Fog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog40b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog41b
eraseSpriteBat1Fog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog41b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog42b
eraseSpriteBat1Fog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog42b anop
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
        beq eraseSpriteBat1Fog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog43b
eraseSpriteBat1Fog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog43b anop
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
        beq eraseSpriteBat1Fog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog44b
eraseSpriteBat1Fog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog44b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog45b
eraseSpriteBat1Fog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog45b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog46b
eraseSpriteBat1Fog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog46b anop
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
        beq eraseSpriteBat1Fog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog47b
eraseSpriteBat1Fog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog47b anop
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
        beq eraseSpriteBat1Fog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog48b
eraseSpriteBat1Fog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog48b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog49b
eraseSpriteBat1Fog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog49b anop
        long m

        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat1Fog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog50b
eraseSpriteBat1Fog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog50b anop
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
        beq eraseSpriteBat1Fog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog51b
eraseSpriteBat1Fog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog51b anop
        long m

        lda >spriteY
        clc
        adc #12
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #13
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #14
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #15
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #16
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #17
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #18
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #19
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #20
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #21
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #22
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #23
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #24
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #25
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #26
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #27
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #28
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #29
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #31
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #32
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #33
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #34
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #35
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #36
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #37
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #38
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #39
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #40
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #41
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #42
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #43
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #44
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #45
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #46
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #47
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #48
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #49
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #50
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #51
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #52
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #53
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #54
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #55
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #56
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #57
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #58
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #59
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #60
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #61
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #62
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #63
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #64
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #65
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #66
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #67
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #68
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #69
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #70
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #71
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #72
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #73
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #74
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #75
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #76
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #77
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #78
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #79
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #80
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #81
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #82
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #83
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #84
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #85
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #86
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #87
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #88
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #89
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #90
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #91
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #92
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #93
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #94
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #95
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #96
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #97
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #98
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #99
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #100
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #101
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #102
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #103
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #104
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #105
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #106
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #107
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #108
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #109
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #110
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #111
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #112
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #113
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #114
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #115
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #116
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #117
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #118
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #119
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #120
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #121
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #122
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #123
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #124
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #125
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #126
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #127
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #128
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #129
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #130
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #131
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #132
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #133
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #134
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #135
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #136
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #137
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #138
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #139
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #140
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #141
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #142
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #143
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #144
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #145
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #146
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #147
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #148
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #149
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #150
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #151
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #152
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #153
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #154
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #155
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #156
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #157
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #158
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #159
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #160
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #161
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #162
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #163
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #164
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #165
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #166
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #167
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #168
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #169
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #170
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #171
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #172
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #173
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #174
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #175
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #176
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #177
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #178
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #179
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #180
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #181
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #182
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #183
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #184
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #185
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #186
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #187
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #188
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #189
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #190
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #191
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #192
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #193
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #194
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #195
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #196
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #197
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #198
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #199
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #200
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #201
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #202
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #203
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #204
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #205
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #206
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #207
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #208
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #209
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #210
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #211
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #212
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #213
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #214
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #215
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #216
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #217
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #218
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #219
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #220
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #221
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #222
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #223
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #224
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #225
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #226
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #227
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #228
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #229
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #230
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #231
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #232
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #233
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #234
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #235
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #236
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #237
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #238
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #239
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #240
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #241
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #242
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #243
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #244
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #245
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #246
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #247
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #248
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #249
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #250
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #251
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #252
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #253
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #254
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #255
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #256
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

        lda >spriteY
        clc
        adc #257
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress


        rtl

eraseSpriteBat2Fog entry

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
        beq eraseSpriteBat2Fog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog52b
eraseSpriteBat2Fog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog52b anop
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
        beq eraseSpriteBat2Fog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog53b
eraseSpriteBat2Fog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog53b anop
        long m


        rtl


        end
