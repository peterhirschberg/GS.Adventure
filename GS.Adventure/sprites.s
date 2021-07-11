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
    
    
spriteYellowKey entry

        spriteGetDrawAddress
        _spriteHeader

        lda >drawAddress
        clc
        adc #0
        tcd

        lda 5
        ora #$33
        sta 5
        lda 6
        ora #$33
        sta 6
        lda 7
        ora #$33
        sta 7

        lda >drawAddress
        clc
        adc #160
        tcd

        lda 5
        ora #$33
        sta 5
        lda 6
        ora #$33
        sta 6
        lda 7
        ora #$33
        sta 7

        lda >drawAddress
        clc
        adc #320
        tcd

        lda 0
        ora #$33
        sta 0
        lda 1
        ora #$33
        sta 1
        lda 2
        ora #$33
        sta 2
        lda 3
        ora #$33
        sta 3
        lda 4
        ora #$33
        sta 4
        lda 5
        ora #$33
        sta 5
        lda 7
        ora #$33
        sta 7

        lda >drawAddress
        clc
        adc #480
        tcd

        lda 0
        ora #$33
        sta 0
        lda 1
        ora #$33
        sta 1
        lda 2
        ora #$33
        sta 2
        lda 3
        ora #$33
        sta 3
        lda 4
        ora #$33
        sta 4
        lda 5
        ora #$33
        sta 5
        lda 7
        ora #$33
        sta 7

        lda >drawAddress
        clc
        adc #640
        tcd

        lda 0
        ora #$33
        sta 0
        lda 2
        ora #$33
        sta 2
        lda 5
        ora #$33
        sta 5
        lda 6
        ora #$33
        sta 6
        lda 7
        ora #$33
        sta 7

        lda >drawAddress
        clc
        adc #800
        tcd

        lda 0
        ora #$33
        sta 0
        lda 2
        ora #$33
        sta 2
        lda 5
        ora #$33
        sta 5
        lda 6
        ora #$33
        sta 6
        lda 7
        ora #$33
        sta 7

        _spriteFooter
        rts


spriteRedDragon entry

        spriteGetDrawAddress
        _spriteHeader

        lda >drawAddress
        clc
        adc #0
        tcd

        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #160
        tcd

        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #320
        tcd

        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #480
        tcd

        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #640
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #800
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #960
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #1120
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #1280
        tcd

        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #1440
        tcd

        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #1600
        tcd

        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #1760
        tcd

        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #1920
        tcd

        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #2080
        tcd

        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #2240
        tcd

        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #2400
        tcd

        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6

        lda >drawAddress
        clc
        adc #2560
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #2720
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #2880
        tcd

        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3040
        tcd

        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3200
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3360
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3520
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3680
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #3840
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4000
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4160
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4320
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4480
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4640
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #4800
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #4960
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5

        lda >drawAddress
        clc
        adc #5120
        tcd

        lda 4
        ora #$55
        sta 4

        lda >drawAddress
        clc
        adc #5280
        tcd

        lda 4
        ora #$55
        sta 4

        lda >drawAddress
        clc
        adc #5440
        tcd

        lda 0
        ora #$55
        sta 0
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #5600
        tcd

        lda 0
        ora #$55
        sta 0
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #5760
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #5920
        tcd

        lda 0
        ora #$55
        sta 0
        lda 1
        ora #$55
        sta 1
        lda 2
        ora #$55
        sta 2
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #6080
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        lda >drawAddress
        clc
        adc #6240
        tcd

        lda 2
        ora #$55
        sta 2
        lda 3
        ora #$55
        sta 3
        lda 4
        ora #$55
        sta 4
        lda 5
        ora #$55
        sta 5
        lda 6
        ora #$55
        sta 6
        lda 7
        ora #$55
        sta 7

        _spriteFooter
        rts
        
        

        
drawAddress dc i4'0'

backupStack dc i4'0'
    
        end


spriteData data
    
spriteX dc i2'0'
spriteY dc i2'0'
    
        end
