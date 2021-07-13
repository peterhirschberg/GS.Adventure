;
;  spriteDragonErase.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteDragonErase start spriteDragonEraseSeg
        using globalData
        using spriteData


eraseSpriteDragon1 entry

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
        adc #1
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #2
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #3
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #5
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
        adc #5
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
        adc #5
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
        adc #5
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
        adc #17
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #20
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
        adc #21
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
        adc #22
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
        adc #23
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
        adc #24
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
        adc #25
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
        adc #26
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
        adc #27
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
        adc #28
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
        adc #29
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
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #4
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
        adc #4
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
        adc #35
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
        adc #36
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
        adc #7
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
        adc #7
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
        adc #39
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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


        rtl

eraseSpriteDragon2 entry

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
        adc #1
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
        adc #1
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
        adc #3
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #4
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #5
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #6
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #5
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
        adc #5
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
        adc #21
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #30
        asl a
        tax
        lda >screenRowOffsets,x
        sta >rowAddress

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
        adc #4
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
        adc #4
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
        adc #0
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
        adc #0
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
        adc #2
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
        adc #2
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


        rtl

eraseSpriteDragon3 entry

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
        adc #10
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
        adc #0
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
        adc #0
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


        rtl

eraseSpriteDragon1Fog entry

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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog0b
eraseSpriteDragon1Fog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog0b anop
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
        beq eraseSpriteDragon1Fog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog1b
eraseSpriteDragon1Fog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog1b anop
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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog2b
eraseSpriteDragon1Fog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog2b anop
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
        beq eraseSpriteDragon1Fog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog3b
eraseSpriteDragon1Fog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog3b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog4b
eraseSpriteDragon1Fog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog4b anop
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
        beq eraseSpriteDragon1Fog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog5b
eraseSpriteDragon1Fog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog5b anop
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
        beq eraseSpriteDragon1Fog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog6b
eraseSpriteDragon1Fog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog6b anop
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
        beq eraseSpriteDragon1Fog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog7b
eraseSpriteDragon1Fog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog7b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog8b
eraseSpriteDragon1Fog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog8b anop
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
        beq eraseSpriteDragon1Fog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog9b
eraseSpriteDragon1Fog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog9b anop
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
        beq eraseSpriteDragon1Fog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog10b
eraseSpriteDragon1Fog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog10b anop
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
        beq eraseSpriteDragon1Fog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog11b
eraseSpriteDragon1Fog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog11b anop
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
        beq eraseSpriteDragon1Fog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog12b
eraseSpriteDragon1Fog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog12b anop
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
        beq eraseSpriteDragon1Fog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog13b
eraseSpriteDragon1Fog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog13b anop
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
        beq eraseSpriteDragon1Fog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog14b
eraseSpriteDragon1Fog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog14b anop
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
        beq eraseSpriteDragon1Fog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog15b
eraseSpriteDragon1Fog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog15b anop
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
        beq eraseSpriteDragon1Fog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog16b
eraseSpriteDragon1Fog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog16b anop
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
        beq eraseSpriteDragon1Fog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog17b
eraseSpriteDragon1Fog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog17b anop
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
        beq eraseSpriteDragon1Fog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog18b
eraseSpriteDragon1Fog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog18b anop
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
        beq eraseSpriteDragon1Fog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog19b
eraseSpriteDragon1Fog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog19b anop
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
        beq eraseSpriteDragon1Fog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog20b
eraseSpriteDragon1Fog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog20b anop
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
        beq eraseSpriteDragon1Fog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog21b
eraseSpriteDragon1Fog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog21b anop
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
        beq eraseSpriteDragon1Fog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog22b
eraseSpriteDragon1Fog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog22b anop
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
        beq eraseSpriteDragon1Fog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog23b
eraseSpriteDragon1Fog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog23b anop
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
        beq eraseSpriteDragon1Fog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog24b
eraseSpriteDragon1Fog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog24b anop
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
        beq eraseSpriteDragon1Fog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog25b
eraseSpriteDragon1Fog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog25b anop
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
        beq eraseSpriteDragon1Fog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog26b
eraseSpriteDragon1Fog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog26b anop
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
        beq eraseSpriteDragon1Fog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog27b
eraseSpriteDragon1Fog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog27b anop
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
        beq eraseSpriteDragon1Fog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog28b
eraseSpriteDragon1Fog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog28b anop
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
        beq eraseSpriteDragon1Fog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog29b
eraseSpriteDragon1Fog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog29b anop
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
        beq eraseSpriteDragon1Fog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog30b
eraseSpriteDragon1Fog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog30b anop
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
        beq eraseSpriteDragon1Fog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog31b
eraseSpriteDragon1Fog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog31b anop
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
        beq eraseSpriteDragon1Fog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog32b
eraseSpriteDragon1Fog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog32b anop
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
        beq eraseSpriteDragon1Fog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog33b
eraseSpriteDragon1Fog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog33b anop
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
        beq eraseSpriteDragon1Fog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog34b
eraseSpriteDragon1Fog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog34b anop
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
        beq eraseSpriteDragon1Fog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog35b
eraseSpriteDragon1Fog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog35b anop
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
        beq eraseSpriteDragon1Fog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog36b
eraseSpriteDragon1Fog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog36b anop
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
        beq eraseSpriteDragon1Fog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog37b
eraseSpriteDragon1Fog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog37b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog38b
eraseSpriteDragon1Fog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog38b anop
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
        beq eraseSpriteDragon1Fog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog39b
eraseSpriteDragon1Fog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog39b anop
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
        beq eraseSpriteDragon1Fog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog40b
eraseSpriteDragon1Fog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog40b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog41b
eraseSpriteDragon1Fog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog41b anop
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
        beq eraseSpriteDragon1Fog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog42b
eraseSpriteDragon1Fog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog42b anop
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
        beq eraseSpriteDragon1Fog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog43b
eraseSpriteDragon1Fog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog43b anop
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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog44b
eraseSpriteDragon1Fog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog44b anop
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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog45b
eraseSpriteDragon1Fog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog45b anop
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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog46b
eraseSpriteDragon1Fog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog46b anop
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
        adc #5
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog47b
eraseSpriteDragon1Fog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog47b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog48b
eraseSpriteDragon1Fog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog48b anop
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
        beq eraseSpriteDragon1Fog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog49b
eraseSpriteDragon1Fog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog49b anop
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
        beq eraseSpriteDragon1Fog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog50b
eraseSpriteDragon1Fog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog50b anop
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
        beq eraseSpriteDragon1Fog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog51b
eraseSpriteDragon1Fog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog51b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog52b
eraseSpriteDragon1Fog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog52b anop
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
        beq eraseSpriteDragon1Fog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog53b
eraseSpriteDragon1Fog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog53b anop
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
        beq eraseSpriteDragon1Fog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog54b
eraseSpriteDragon1Fog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog54b anop
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
        beq eraseSpriteDragon1Fog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog55b
eraseSpriteDragon1Fog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog55b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog56b
eraseSpriteDragon1Fog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog56b anop
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
        beq eraseSpriteDragon1Fog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog57b
eraseSpriteDragon1Fog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog57b anop
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
        beq eraseSpriteDragon1Fog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog58b
eraseSpriteDragon1Fog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog58b anop
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
        beq eraseSpriteDragon1Fog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog59b
eraseSpriteDragon1Fog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog59b anop
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
        beq eraseSpriteDragon1Fog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog60b
eraseSpriteDragon1Fog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog60b anop
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
        beq eraseSpriteDragon1Fog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog61b
eraseSpriteDragon1Fog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog61b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog62b
eraseSpriteDragon1Fog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog62b anop
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
        beq eraseSpriteDragon1Fog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog63b
eraseSpriteDragon1Fog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog63b anop
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
        beq eraseSpriteDragon1Fog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog64b
eraseSpriteDragon1Fog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog64b anop
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
        beq eraseSpriteDragon1Fog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog65b
eraseSpriteDragon1Fog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog65b anop
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
        beq eraseSpriteDragon1Fog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog66b
eraseSpriteDragon1Fog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog66b anop
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
        beq eraseSpriteDragon1Fog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog67b
eraseSpriteDragon1Fog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog67b anop
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
        beq eraseSpriteDragon1Fog68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog68b
eraseSpriteDragon1Fog68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog68b anop
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
        beq eraseSpriteDragon1Fog69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog69b
eraseSpriteDragon1Fog69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog69b anop
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
        beq eraseSpriteDragon1Fog70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog70b
eraseSpriteDragon1Fog70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog70b anop
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
        beq eraseSpriteDragon1Fog71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog71b
eraseSpriteDragon1Fog71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog71b anop
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
        beq eraseSpriteDragon1Fog72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog72b
eraseSpriteDragon1Fog72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog72b anop
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
        beq eraseSpriteDragon1Fog73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog73b
eraseSpriteDragon1Fog73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog73b anop
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
        beq eraseSpriteDragon1Fog74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog74b
eraseSpriteDragon1Fog74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog74b anop
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
        beq eraseSpriteDragon1Fog75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog75b
eraseSpriteDragon1Fog75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog75b anop
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
        beq eraseSpriteDragon1Fog76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog76b
eraseSpriteDragon1Fog76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog76b anop
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
        beq eraseSpriteDragon1Fog77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog77b
eraseSpriteDragon1Fog77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog77b anop
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
        beq eraseSpriteDragon1Fog78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog78b
eraseSpriteDragon1Fog78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog78b anop
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
        beq eraseSpriteDragon1Fog79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog79b
eraseSpriteDragon1Fog79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog79b anop
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
        beq eraseSpriteDragon1Fog80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog80b
eraseSpriteDragon1Fog80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog80b anop
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
        beq eraseSpriteDragon1Fog81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog81b
eraseSpriteDragon1Fog81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog81b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog82b
eraseSpriteDragon1Fog82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog82b anop
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
        beq eraseSpriteDragon1Fog83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog83b
eraseSpriteDragon1Fog83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog83b anop
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
        beq eraseSpriteDragon1Fog84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog84b
eraseSpriteDragon1Fog84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog84b anop
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
        beq eraseSpriteDragon1Fog85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog85b
eraseSpriteDragon1Fog85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog85b anop
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
        beq eraseSpriteDragon1Fog86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog86b
eraseSpriteDragon1Fog86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog86b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog87b
eraseSpriteDragon1Fog87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog87b anop
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
        beq eraseSpriteDragon1Fog88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog88b
eraseSpriteDragon1Fog88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog88b anop
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
        beq eraseSpriteDragon1Fog89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog89b
eraseSpriteDragon1Fog89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog89b anop
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
        beq eraseSpriteDragon1Fog90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog90b
eraseSpriteDragon1Fog90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog90b anop
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
        beq eraseSpriteDragon1Fog91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog91b
eraseSpriteDragon1Fog91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog91b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog92b
eraseSpriteDragon1Fog92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog92b anop
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
        beq eraseSpriteDragon1Fog93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog93b
eraseSpriteDragon1Fog93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog93b anop
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
        beq eraseSpriteDragon1Fog94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog94b
eraseSpriteDragon1Fog94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog94b anop
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
        beq eraseSpriteDragon1Fog95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog95b
eraseSpriteDragon1Fog95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog95b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog96b
eraseSpriteDragon1Fog96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog96b anop
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
        beq eraseSpriteDragon1Fog97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog97b
eraseSpriteDragon1Fog97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog97b anop
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
        beq eraseSpriteDragon1Fog98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog98b
eraseSpriteDragon1Fog98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog98b anop
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
        beq eraseSpriteDragon1Fog99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog99b
eraseSpriteDragon1Fog99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog99b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog100b
eraseSpriteDragon1Fog100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog100b anop
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
        beq eraseSpriteDragon1Fog101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog101b
eraseSpriteDragon1Fog101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog101b anop
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
        beq eraseSpriteDragon1Fog102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog102b
eraseSpriteDragon1Fog102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog102b anop
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
        beq eraseSpriteDragon1Fog103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog103b
eraseSpriteDragon1Fog103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog103b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog104b
eraseSpriteDragon1Fog104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog104b anop
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
        beq eraseSpriteDragon1Fog105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog105b
eraseSpriteDragon1Fog105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog105b anop
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
        beq eraseSpriteDragon1Fog106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog106b
eraseSpriteDragon1Fog106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog106b anop
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
        beq eraseSpriteDragon1Fog107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog107b
eraseSpriteDragon1Fog107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog107b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog108a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog108b
eraseSpriteDragon1Fog108a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog108b anop
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
        beq eraseSpriteDragon1Fog109a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog109b
eraseSpriteDragon1Fog109a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog109b anop
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
        beq eraseSpriteDragon1Fog110a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog110b
eraseSpriteDragon1Fog110a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog110b anop
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
        beq eraseSpriteDragon1Fog111a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog111b
eraseSpriteDragon1Fog111a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog111b anop
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
        beq eraseSpriteDragon1Fog112a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog112b
eraseSpriteDragon1Fog112a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog112b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog113a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog113b
eraseSpriteDragon1Fog113a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog113b anop
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
        beq eraseSpriteDragon1Fog114a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog114b
eraseSpriteDragon1Fog114a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog114b anop
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
        beq eraseSpriteDragon1Fog115a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog115b
eraseSpriteDragon1Fog115a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog115b anop
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
        beq eraseSpriteDragon1Fog116a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog116b
eraseSpriteDragon1Fog116a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog116b anop
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
        beq eraseSpriteDragon1Fog117a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog117b
eraseSpriteDragon1Fog117a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog117b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog118a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog118b
eraseSpriteDragon1Fog118a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog118b anop
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
        beq eraseSpriteDragon1Fog119a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog119b
eraseSpriteDragon1Fog119a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog119b anop
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
        beq eraseSpriteDragon1Fog120a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog120b
eraseSpriteDragon1Fog120a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog120b anop
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
        beq eraseSpriteDragon1Fog121a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog121b
eraseSpriteDragon1Fog121a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog121b anop
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
        beq eraseSpriteDragon1Fog122a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog122b
eraseSpriteDragon1Fog122a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog122b anop
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
        beq eraseSpriteDragon1Fog123a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog123b
eraseSpriteDragon1Fog123a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog123b anop
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
        beq eraseSpriteDragon1Fog124a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog124b
eraseSpriteDragon1Fog124a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog124b anop
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
        beq eraseSpriteDragon1Fog125a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog125b
eraseSpriteDragon1Fog125a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog125b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog126a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog126b
eraseSpriteDragon1Fog126a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog126b anop
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
        beq eraseSpriteDragon1Fog127a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog127b
eraseSpriteDragon1Fog127a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog127b anop
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
        beq eraseSpriteDragon1Fog128a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog128b
eraseSpriteDragon1Fog128a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog128b anop
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
        beq eraseSpriteDragon1Fog129a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog129b
eraseSpriteDragon1Fog129a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog129b anop
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
        beq eraseSpriteDragon1Fog130a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog130b
eraseSpriteDragon1Fog130a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog130b anop
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
        beq eraseSpriteDragon1Fog131a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog131b
eraseSpriteDragon1Fog131a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog131b anop
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
        beq eraseSpriteDragon1Fog132a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog132b
eraseSpriteDragon1Fog132a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog132b anop
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
        beq eraseSpriteDragon1Fog133a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog133b
eraseSpriteDragon1Fog133a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog133b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog134a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog134b
eraseSpriteDragon1Fog134a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog134b anop
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
        beq eraseSpriteDragon1Fog135a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog135b
eraseSpriteDragon1Fog135a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog135b anop
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
        beq eraseSpriteDragon1Fog136a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog136b
eraseSpriteDragon1Fog136a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog136b anop
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
        beq eraseSpriteDragon1Fog137a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog137b
eraseSpriteDragon1Fog137a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog137b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog138a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog138b
eraseSpriteDragon1Fog138a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog138b anop
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
        beq eraseSpriteDragon1Fog139a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog139b
eraseSpriteDragon1Fog139a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog139b anop
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
        beq eraseSpriteDragon1Fog140a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog140b
eraseSpriteDragon1Fog140a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog140b anop
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
        beq eraseSpriteDragon1Fog141a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog141b
eraseSpriteDragon1Fog141a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog141b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog142a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog142b
eraseSpriteDragon1Fog142a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog142b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog143a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog143b
eraseSpriteDragon1Fog143a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog143b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog144a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog144b
eraseSpriteDragon1Fog144a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog144b anop
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
        beq eraseSpriteDragon1Fog145a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog145b
eraseSpriteDragon1Fog145a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog145b anop
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
        beq eraseSpriteDragon1Fog146a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog146b
eraseSpriteDragon1Fog146a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog146b anop
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
        beq eraseSpriteDragon1Fog147a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog147b
eraseSpriteDragon1Fog147a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog147b anop
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
        beq eraseSpriteDragon1Fog148a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog148b
eraseSpriteDragon1Fog148a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog148b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog149a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog149b
eraseSpriteDragon1Fog149a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog149b anop
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
        beq eraseSpriteDragon1Fog150a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog150b
eraseSpriteDragon1Fog150a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog150b anop
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
        beq eraseSpriteDragon1Fog151a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog151b
eraseSpriteDragon1Fog151a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog151b anop
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
        beq eraseSpriteDragon1Fog152a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog152b
eraseSpriteDragon1Fog152a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog152b anop
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
        beq eraseSpriteDragon1Fog153a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog153b
eraseSpriteDragon1Fog153a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog153b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog154a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog154b
eraseSpriteDragon1Fog154a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog154b anop
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
        beq eraseSpriteDragon1Fog155a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog155b
eraseSpriteDragon1Fog155a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog155b anop
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
        beq eraseSpriteDragon1Fog156a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog156b
eraseSpriteDragon1Fog156a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog156b anop
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
        beq eraseSpriteDragon1Fog157a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog157b
eraseSpriteDragon1Fog157a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog157b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog158a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog158b
eraseSpriteDragon1Fog158a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog158b anop
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
        beq eraseSpriteDragon1Fog159a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog159b
eraseSpriteDragon1Fog159a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog159b anop
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
        beq eraseSpriteDragon1Fog160a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog160b
eraseSpriteDragon1Fog160a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog160b anop
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
        beq eraseSpriteDragon1Fog161a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog161b
eraseSpriteDragon1Fog161a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog161b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog162a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog162b
eraseSpriteDragon1Fog162a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog162b anop
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
        beq eraseSpriteDragon1Fog163a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog163b
eraseSpriteDragon1Fog163a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog163b anop
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
        beq eraseSpriteDragon1Fog164a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog164b
eraseSpriteDragon1Fog164a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog164b anop
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
        beq eraseSpriteDragon1Fog165a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog165b
eraseSpriteDragon1Fog165a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog165b anop
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
        beq eraseSpriteDragon1Fog166a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog166b
eraseSpriteDragon1Fog166a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog166b anop
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
        beq eraseSpriteDragon1Fog167a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog167b
eraseSpriteDragon1Fog167a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog167b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon1Fog168a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog168b
eraseSpriteDragon1Fog168a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog168b anop
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
        beq eraseSpriteDragon1Fog169a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog169b
eraseSpriteDragon1Fog169a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog169b anop
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
        beq eraseSpriteDragon1Fog170a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog170b
eraseSpriteDragon1Fog170a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog170b anop
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
        beq eraseSpriteDragon1Fog171a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog171b
eraseSpriteDragon1Fog171a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog171b anop
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
        beq eraseSpriteDragon1Fog172a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog172b
eraseSpriteDragon1Fog172a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog172b anop
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
        beq eraseSpriteDragon1Fog173a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon1Fog173b
eraseSpriteDragon1Fog173a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon1Fog173b anop
        long m


        rtl

eraseSpriteDragon2Fog entry

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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog174a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog174b
eraseSpriteDragon2Fog174a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog174b anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog175a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog175b
eraseSpriteDragon2Fog175a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog175b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog176a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog176b
eraseSpriteDragon2Fog176a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog176b anop
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
        beq eraseSpriteDragon2Fog177a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog177b
eraseSpriteDragon2Fog177a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog177b anop
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
        beq eraseSpriteDragon2Fog178a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog178b
eraseSpriteDragon2Fog178a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog178b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog179a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog179b
eraseSpriteDragon2Fog179a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog179b anop
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
        beq eraseSpriteDragon2Fog180a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog180b
eraseSpriteDragon2Fog180a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog180b anop
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
        beq eraseSpriteDragon2Fog181a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog181b
eraseSpriteDragon2Fog181a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog181b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog182a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog182b
eraseSpriteDragon2Fog182a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog182b anop
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
        beq eraseSpriteDragon2Fog183a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog183b
eraseSpriteDragon2Fog183a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog183b anop
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
        beq eraseSpriteDragon2Fog184a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog184b
eraseSpriteDragon2Fog184a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog184b anop
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
        beq eraseSpriteDragon2Fog185a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog185b
eraseSpriteDragon2Fog185a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog185b anop
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
        beq eraseSpriteDragon2Fog186a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog186b
eraseSpriteDragon2Fog186a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog186b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog187a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog187b
eraseSpriteDragon2Fog187a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog187b anop
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
        beq eraseSpriteDragon2Fog188a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog188b
eraseSpriteDragon2Fog188a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog188b anop
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
        beq eraseSpriteDragon2Fog189a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog189b
eraseSpriteDragon2Fog189a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog189b anop
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
        beq eraseSpriteDragon2Fog190a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog190b
eraseSpriteDragon2Fog190a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog190b anop
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
        beq eraseSpriteDragon2Fog191a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog191b
eraseSpriteDragon2Fog191a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog191b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog192a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog192b
eraseSpriteDragon2Fog192a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog192b anop
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
        beq eraseSpriteDragon2Fog193a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog193b
eraseSpriteDragon2Fog193a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog193b anop
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
        beq eraseSpriteDragon2Fog194a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog194b
eraseSpriteDragon2Fog194a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog194b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog195a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog195b
eraseSpriteDragon2Fog195a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog195b anop
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
        beq eraseSpriteDragon2Fog196a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog196b
eraseSpriteDragon2Fog196a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog196b anop
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
        beq eraseSpriteDragon2Fog197a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog197b
eraseSpriteDragon2Fog197a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog197b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog198a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog198b
eraseSpriteDragon2Fog198a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog198b anop
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
        beq eraseSpriteDragon2Fog199a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog199b
eraseSpriteDragon2Fog199a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog199b anop
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
        beq eraseSpriteDragon2Fog200a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog200b
eraseSpriteDragon2Fog200a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog200b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog201a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog201b
eraseSpriteDragon2Fog201a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog201b anop
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
        beq eraseSpriteDragon2Fog202a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog202b
eraseSpriteDragon2Fog202a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog202b anop
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
        beq eraseSpriteDragon2Fog203a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog203b
eraseSpriteDragon2Fog203a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog203b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog204a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog204b
eraseSpriteDragon2Fog204a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog204b anop
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
        beq eraseSpriteDragon2Fog205a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog205b
eraseSpriteDragon2Fog205a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog205b anop
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
        beq eraseSpriteDragon2Fog206a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog206b
eraseSpriteDragon2Fog206a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog206b anop
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
        beq eraseSpriteDragon2Fog207a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog207b
eraseSpriteDragon2Fog207a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog207b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog208a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog208b
eraseSpriteDragon2Fog208a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog208b anop
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
        beq eraseSpriteDragon2Fog209a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog209b
eraseSpriteDragon2Fog209a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog209b anop
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
        beq eraseSpriteDragon2Fog210a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog210b
eraseSpriteDragon2Fog210a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog210b anop
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
        beq eraseSpriteDragon2Fog211a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog211b
eraseSpriteDragon2Fog211a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog211b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog212a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog212b
eraseSpriteDragon2Fog212a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog212b anop
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
        beq eraseSpriteDragon2Fog213a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog213b
eraseSpriteDragon2Fog213a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog213b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog214a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog214b
eraseSpriteDragon2Fog214a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog214b anop
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
        beq eraseSpriteDragon2Fog215a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog215b
eraseSpriteDragon2Fog215a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog215b anop
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
        beq eraseSpriteDragon2Fog216a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog216b
eraseSpriteDragon2Fog216a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog216b anop
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
        beq eraseSpriteDragon2Fog217a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog217b
eraseSpriteDragon2Fog217a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog217b anop
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
        beq eraseSpriteDragon2Fog218a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog218b
eraseSpriteDragon2Fog218a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog218b anop
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
        beq eraseSpriteDragon2Fog219a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog219b
eraseSpriteDragon2Fog219a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog219b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog220a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog220b
eraseSpriteDragon2Fog220a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog220b anop
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
        beq eraseSpriteDragon2Fog221a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog221b
eraseSpriteDragon2Fog221a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog221b anop
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
        beq eraseSpriteDragon2Fog222a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog222b
eraseSpriteDragon2Fog222a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog222b anop
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
        beq eraseSpriteDragon2Fog223a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog223b
eraseSpriteDragon2Fog223a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog223b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog224a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog224b
eraseSpriteDragon2Fog224a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog224b anop
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
        beq eraseSpriteDragon2Fog225a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog225b
eraseSpriteDragon2Fog225a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog225b anop
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
        beq eraseSpriteDragon2Fog226a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog226b
eraseSpriteDragon2Fog226a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog226b anop
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
        beq eraseSpriteDragon2Fog227a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog227b
eraseSpriteDragon2Fog227a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog227b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog228a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog228b
eraseSpriteDragon2Fog228a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog228b anop
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
        beq eraseSpriteDragon2Fog229a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog229b
eraseSpriteDragon2Fog229a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog229b anop
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
        beq eraseSpriteDragon2Fog230a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog230b
eraseSpriteDragon2Fog230a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog230b anop
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
        beq eraseSpriteDragon2Fog231a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog231b
eraseSpriteDragon2Fog231a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog231b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog232a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog232b
eraseSpriteDragon2Fog232a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog232b anop
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
        beq eraseSpriteDragon2Fog233a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog233b
eraseSpriteDragon2Fog233a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog233b anop
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
        beq eraseSpriteDragon2Fog234a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog234b
eraseSpriteDragon2Fog234a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog234b anop
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
        beq eraseSpriteDragon2Fog235a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog235b
eraseSpriteDragon2Fog235a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog235b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog236a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog236b
eraseSpriteDragon2Fog236a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog236b anop
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
        beq eraseSpriteDragon2Fog237a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog237b
eraseSpriteDragon2Fog237a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog237b anop
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
        beq eraseSpriteDragon2Fog238a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog238b
eraseSpriteDragon2Fog238a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog238b anop
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
        beq eraseSpriteDragon2Fog239a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog239b
eraseSpriteDragon2Fog239a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog239b anop
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
        beq eraseSpriteDragon2Fog240a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog240b
eraseSpriteDragon2Fog240a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog240b anop
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
        beq eraseSpriteDragon2Fog241a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog241b
eraseSpriteDragon2Fog241a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog241b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog242a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog242b
eraseSpriteDragon2Fog242a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog242b anop
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
        beq eraseSpriteDragon2Fog243a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog243b
eraseSpriteDragon2Fog243a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog243b anop
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
        beq eraseSpriteDragon2Fog244a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog244b
eraseSpriteDragon2Fog244a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog244b anop
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
        beq eraseSpriteDragon2Fog245a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog245b
eraseSpriteDragon2Fog245a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog245b anop
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
        beq eraseSpriteDragon2Fog246a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog246b
eraseSpriteDragon2Fog246a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog246b anop
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
        beq eraseSpriteDragon2Fog247a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog247b
eraseSpriteDragon2Fog247a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog247b anop
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
        beq eraseSpriteDragon2Fog248a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog248b
eraseSpriteDragon2Fog248a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog248b anop
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
        beq eraseSpriteDragon2Fog249a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog249b
eraseSpriteDragon2Fog249a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog249b anop
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
        beq eraseSpriteDragon2Fog250a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog250b
eraseSpriteDragon2Fog250a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog250b anop
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
        beq eraseSpriteDragon2Fog251a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog251b
eraseSpriteDragon2Fog251a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog251b anop
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
        beq eraseSpriteDragon2Fog252a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog252b
eraseSpriteDragon2Fog252a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog252b anop
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
        beq eraseSpriteDragon2Fog253a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog253b
eraseSpriteDragon2Fog253a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog253b anop
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
        beq eraseSpriteDragon2Fog254a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog254b
eraseSpriteDragon2Fog254a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog254b anop
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
        beq eraseSpriteDragon2Fog255a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog255b
eraseSpriteDragon2Fog255a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog255b anop
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
        beq eraseSpriteDragon2Fog256a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog256b
eraseSpriteDragon2Fog256a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog256b anop
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
        beq eraseSpriteDragon2Fog257a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog257b
eraseSpriteDragon2Fog257a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog257b anop
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
        beq eraseSpriteDragon2Fog258a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog258b
eraseSpriteDragon2Fog258a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog258b anop
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
        beq eraseSpriteDragon2Fog259a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog259b
eraseSpriteDragon2Fog259a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog259b anop
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
        beq eraseSpriteDragon2Fog260a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog260b
eraseSpriteDragon2Fog260a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog260b anop
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
        beq eraseSpriteDragon2Fog261a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog261b
eraseSpriteDragon2Fog261a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog261b anop
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
        beq eraseSpriteDragon2Fog262a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog262b
eraseSpriteDragon2Fog262a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog262b anop
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
        beq eraseSpriteDragon2Fog263a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog263b
eraseSpriteDragon2Fog263a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog263b anop
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
        beq eraseSpriteDragon2Fog264a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog264b
eraseSpriteDragon2Fog264a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog264b anop
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
        beq eraseSpriteDragon2Fog265a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog265b
eraseSpriteDragon2Fog265a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog265b anop
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
        beq eraseSpriteDragon2Fog266a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog266b
eraseSpriteDragon2Fog266a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog266b anop
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
        beq eraseSpriteDragon2Fog267a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog267b
eraseSpriteDragon2Fog267a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog267b anop
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
        beq eraseSpriteDragon2Fog268a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog268b
eraseSpriteDragon2Fog268a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog268b anop
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
        beq eraseSpriteDragon2Fog269a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog269b
eraseSpriteDragon2Fog269a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog269b anop
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
        beq eraseSpriteDragon2Fog270a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog270b
eraseSpriteDragon2Fog270a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog270b anop
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
        beq eraseSpriteDragon2Fog271a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog271b
eraseSpriteDragon2Fog271a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog271b anop
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
        beq eraseSpriteDragon2Fog272a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog272b
eraseSpriteDragon2Fog272a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog272b anop
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
        beq eraseSpriteDragon2Fog273a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog273b
eraseSpriteDragon2Fog273a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog273b anop
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
        beq eraseSpriteDragon2Fog274a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog274b
eraseSpriteDragon2Fog274a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog274b anop
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
        beq eraseSpriteDragon2Fog275a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog275b
eraseSpriteDragon2Fog275a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog275b anop
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
        beq eraseSpriteDragon2Fog276a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog276b
eraseSpriteDragon2Fog276a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog276b anop
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
        beq eraseSpriteDragon2Fog277a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog277b
eraseSpriteDragon2Fog277a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog277b anop
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
        beq eraseSpriteDragon2Fog278a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog278b
eraseSpriteDragon2Fog278a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog278b anop
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
        beq eraseSpriteDragon2Fog279a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog279b
eraseSpriteDragon2Fog279a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog279b anop
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
        beq eraseSpriteDragon2Fog280a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog280b
eraseSpriteDragon2Fog280a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog280b anop
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
        beq eraseSpriteDragon2Fog281a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog281b
eraseSpriteDragon2Fog281a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog281b anop
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
        beq eraseSpriteDragon2Fog282a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog282b
eraseSpriteDragon2Fog282a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog282b anop
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
        beq eraseSpriteDragon2Fog283a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog283b
eraseSpriteDragon2Fog283a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog283b anop
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
        beq eraseSpriteDragon2Fog284a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog284b
eraseSpriteDragon2Fog284a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog284b anop
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
        beq eraseSpriteDragon2Fog285a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog285b
eraseSpriteDragon2Fog285a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog285b anop
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
        beq eraseSpriteDragon2Fog286a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog286b
eraseSpriteDragon2Fog286a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog286b anop
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
        beq eraseSpriteDragon2Fog287a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog287b
eraseSpriteDragon2Fog287a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog287b anop
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
        beq eraseSpriteDragon2Fog288a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog288b
eraseSpriteDragon2Fog288a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog288b anop
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
        beq eraseSpriteDragon2Fog289a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog289b
eraseSpriteDragon2Fog289a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog289b anop
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
        beq eraseSpriteDragon2Fog290a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog290b
eraseSpriteDragon2Fog290a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog290b anop
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
        beq eraseSpriteDragon2Fog291a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog291b
eraseSpriteDragon2Fog291a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog291b anop
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
        beq eraseSpriteDragon2Fog292a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog292b
eraseSpriteDragon2Fog292a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog292b anop
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
        beq eraseSpriteDragon2Fog293a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog293b
eraseSpriteDragon2Fog293a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog293b anop
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
        beq eraseSpriteDragon2Fog294a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog294b
eraseSpriteDragon2Fog294a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog294b anop
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
        beq eraseSpriteDragon2Fog295a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog295b
eraseSpriteDragon2Fog295a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog295b anop
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
        beq eraseSpriteDragon2Fog296a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog296b
eraseSpriteDragon2Fog296a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog296b anop
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
        beq eraseSpriteDragon2Fog297a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog297b
eraseSpriteDragon2Fog297a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog297b anop
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
        beq eraseSpriteDragon2Fog298a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog298b
eraseSpriteDragon2Fog298a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog298b anop
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
        beq eraseSpriteDragon2Fog299a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog299b
eraseSpriteDragon2Fog299a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog299b anop
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
        beq eraseSpriteDragon2Fog300a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog300b
eraseSpriteDragon2Fog300a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog300b anop
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
        beq eraseSpriteDragon2Fog301a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog301b
eraseSpriteDragon2Fog301a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog301b anop
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
        beq eraseSpriteDragon2Fog302a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog302b
eraseSpriteDragon2Fog302a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog302b anop
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
        beq eraseSpriteDragon2Fog303a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog303b
eraseSpriteDragon2Fog303a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog303b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog304a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog304b
eraseSpriteDragon2Fog304a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog304b anop
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
        beq eraseSpriteDragon2Fog305a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog305b
eraseSpriteDragon2Fog305a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog305b anop
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
        beq eraseSpriteDragon2Fog306a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog306b
eraseSpriteDragon2Fog306a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog306b anop
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
        beq eraseSpriteDragon2Fog307a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog307b
eraseSpriteDragon2Fog307a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog307b anop
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
        beq eraseSpriteDragon2Fog308a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog308b
eraseSpriteDragon2Fog308a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog308b anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog309a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog309b
eraseSpriteDragon2Fog309a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog309b anop
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
        beq eraseSpriteDragon2Fog310a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog310b
eraseSpriteDragon2Fog310a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog310b anop
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
        beq eraseSpriteDragon2Fog311a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog311b
eraseSpriteDragon2Fog311a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog311b anop
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
        beq eraseSpriteDragon2Fog312a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog312b
eraseSpriteDragon2Fog312a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog312b anop
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
        beq eraseSpriteDragon2Fog313a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog313b
eraseSpriteDragon2Fog313a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog313b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog314a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog314b
eraseSpriteDragon2Fog314a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog314b anop
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
        beq eraseSpriteDragon2Fog315a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog315b
eraseSpriteDragon2Fog315a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog315b anop
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
        beq eraseSpriteDragon2Fog316a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog316b
eraseSpriteDragon2Fog316a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog316b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog317a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog317b
eraseSpriteDragon2Fog317a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog317b anop
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
        beq eraseSpriteDragon2Fog318a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog318b
eraseSpriteDragon2Fog318a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog318b anop
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
        beq eraseSpriteDragon2Fog319a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog319b
eraseSpriteDragon2Fog319a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog319b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog320a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog320b
eraseSpriteDragon2Fog320a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog320b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog321a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog321b
eraseSpriteDragon2Fog321a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog321b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog322a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog322b
eraseSpriteDragon2Fog322a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog322b anop
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
        beq eraseSpriteDragon2Fog323a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog323b
eraseSpriteDragon2Fog323a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog323b anop
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
        beq eraseSpriteDragon2Fog324a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog324b
eraseSpriteDragon2Fog324a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog324b anop
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
        beq eraseSpriteDragon2Fog325a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog325b
eraseSpriteDragon2Fog325a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog325b anop
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
        beq eraseSpriteDragon2Fog326a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog326b
eraseSpriteDragon2Fog326a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog326b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog327a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog327b
eraseSpriteDragon2Fog327a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog327b anop
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
        beq eraseSpriteDragon2Fog328a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog328b
eraseSpriteDragon2Fog328a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog328b anop
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
        beq eraseSpriteDragon2Fog329a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog329b
eraseSpriteDragon2Fog329a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog329b anop
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
        beq eraseSpriteDragon2Fog330a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog330b
eraseSpriteDragon2Fog330a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog330b anop
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
        beq eraseSpriteDragon2Fog331a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog331b
eraseSpriteDragon2Fog331a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog331b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog332a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog332b
eraseSpriteDragon2Fog332a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog332b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon2Fog333a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog333b
eraseSpriteDragon2Fog333a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog333b anop
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
        beq eraseSpriteDragon2Fog334a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog334b
eraseSpriteDragon2Fog334a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog334b anop
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
        beq eraseSpriteDragon2Fog335a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog335b
eraseSpriteDragon2Fog335a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog335b anop
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
        beq eraseSpriteDragon2Fog336a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog336b
eraseSpriteDragon2Fog336a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog336b anop
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
        beq eraseSpriteDragon2Fog337a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog337b
eraseSpriteDragon2Fog337a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog337b anop
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
        beq eraseSpriteDragon2Fog338a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog338b
eraseSpriteDragon2Fog338a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog338b anop
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
        beq eraseSpriteDragon2Fog339a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon2Fog339b
eraseSpriteDragon2Fog339a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon2Fog339b anop
        long m

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


        rtl

eraseSpriteDragon3Fog entry

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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog340a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog340b
eraseSpriteDragon3Fog340a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog340b anop
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
        beq eraseSpriteDragon3Fog341a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog341b
eraseSpriteDragon3Fog341a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog341b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog342a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog342b
eraseSpriteDragon3Fog342a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog342b anop
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
        beq eraseSpriteDragon3Fog343a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog343b
eraseSpriteDragon3Fog343a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog343b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog344a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog344b
eraseSpriteDragon3Fog344a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog344b anop
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
        beq eraseSpriteDragon3Fog345a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog345b
eraseSpriteDragon3Fog345a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog345b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog346a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog346b
eraseSpriteDragon3Fog346a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog346b anop
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
        beq eraseSpriteDragon3Fog347a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog347b
eraseSpriteDragon3Fog347a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog347b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog348a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog348b
eraseSpriteDragon3Fog348a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog348b anop
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
        beq eraseSpriteDragon3Fog349a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog349b
eraseSpriteDragon3Fog349a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog349b anop
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
        beq eraseSpriteDragon3Fog350a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog350b
eraseSpriteDragon3Fog350a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog350b anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog351a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog351b
eraseSpriteDragon3Fog351a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog351b anop
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
        beq eraseSpriteDragon3Fog352a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog352b
eraseSpriteDragon3Fog352a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog352b anop
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
        beq eraseSpriteDragon3Fog353a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog353b
eraseSpriteDragon3Fog353a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog353b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog354a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog354b
eraseSpriteDragon3Fog354a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog354b anop
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
        beq eraseSpriteDragon3Fog355a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog355b
eraseSpriteDragon3Fog355a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog355b anop
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
        beq eraseSpriteDragon3Fog356a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog356b
eraseSpriteDragon3Fog356a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog356b anop
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
        beq eraseSpriteDragon3Fog357a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog357b
eraseSpriteDragon3Fog357a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog357b anop
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
        adc #3
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog358a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog358b
eraseSpriteDragon3Fog358a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog358b anop
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
        beq eraseSpriteDragon3Fog359a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog359b
eraseSpriteDragon3Fog359a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog359b anop
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
        beq eraseSpriteDragon3Fog360a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog360b
eraseSpriteDragon3Fog360a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog360b anop
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
        beq eraseSpriteDragon3Fog361a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog361b
eraseSpriteDragon3Fog361a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog361b anop
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
        beq eraseSpriteDragon3Fog362a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog362b
eraseSpriteDragon3Fog362a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog362b anop
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
        beq eraseSpriteDragon3Fog363a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog363b
eraseSpriteDragon3Fog363a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog363b anop
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
        beq eraseSpriteDragon3Fog364a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog364b
eraseSpriteDragon3Fog364a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog364b anop
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
        beq eraseSpriteDragon3Fog365a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog365b
eraseSpriteDragon3Fog365a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog365b anop
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
        beq eraseSpriteDragon3Fog366a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog366b
eraseSpriteDragon3Fog366a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog366b anop
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
        beq eraseSpriteDragon3Fog367a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog367b
eraseSpriteDragon3Fog367a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog367b anop
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
        beq eraseSpriteDragon3Fog368a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog368b
eraseSpriteDragon3Fog368a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog368b anop
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
        beq eraseSpriteDragon3Fog369a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog369b
eraseSpriteDragon3Fog369a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog369b anop
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
        beq eraseSpriteDragon3Fog370a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog370b
eraseSpriteDragon3Fog370a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog370b anop
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
        beq eraseSpriteDragon3Fog371a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog371b
eraseSpriteDragon3Fog371a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog371b anop
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
        beq eraseSpriteDragon3Fog372a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog372b
eraseSpriteDragon3Fog372a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog372b anop
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
        beq eraseSpriteDragon3Fog373a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog373b
eraseSpriteDragon3Fog373a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog373b anop
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
        beq eraseSpriteDragon3Fog374a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog374b
eraseSpriteDragon3Fog374a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog374b anop
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
        beq eraseSpriteDragon3Fog375a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog375b
eraseSpriteDragon3Fog375a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog375b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog376a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog376b
eraseSpriteDragon3Fog376a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog376b anop
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
        beq eraseSpriteDragon3Fog377a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog377b
eraseSpriteDragon3Fog377a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog377b anop
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
        beq eraseSpriteDragon3Fog378a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog378b
eraseSpriteDragon3Fog378a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog378b anop
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
        beq eraseSpriteDragon3Fog379a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog379b
eraseSpriteDragon3Fog379a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog379b anop
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
        beq eraseSpriteDragon3Fog380a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog380b
eraseSpriteDragon3Fog380a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog380b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog381a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog381b
eraseSpriteDragon3Fog381a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog381b anop
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
        beq eraseSpriteDragon3Fog382a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog382b
eraseSpriteDragon3Fog382a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog382b anop
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
        beq eraseSpriteDragon3Fog383a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog383b
eraseSpriteDragon3Fog383a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog383b anop
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
        beq eraseSpriteDragon3Fog384a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog384b
eraseSpriteDragon3Fog384a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog384b anop
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
        beq eraseSpriteDragon3Fog385a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog385b
eraseSpriteDragon3Fog385a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog385b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog386a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog386b
eraseSpriteDragon3Fog386a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog386b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog387a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog387b
eraseSpriteDragon3Fog387a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog387b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog388a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog388b
eraseSpriteDragon3Fog388a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog388b anop
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
        beq eraseSpriteDragon3Fog389a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog389b
eraseSpriteDragon3Fog389a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog389b anop
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
        beq eraseSpriteDragon3Fog390a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog390b
eraseSpriteDragon3Fog390a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog390b anop
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
        beq eraseSpriteDragon3Fog391a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog391b
eraseSpriteDragon3Fog391a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog391b anop
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
        beq eraseSpriteDragon3Fog392a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog392b
eraseSpriteDragon3Fog392a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog392b anop
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
        beq eraseSpriteDragon3Fog393a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog393b
eraseSpriteDragon3Fog393a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog393b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog394a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog394b
eraseSpriteDragon3Fog394a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog394b anop
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
        beq eraseSpriteDragon3Fog395a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog395b
eraseSpriteDragon3Fog395a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog395b anop
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
        beq eraseSpriteDragon3Fog396a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog396b
eraseSpriteDragon3Fog396a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog396b anop
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
        beq eraseSpriteDragon3Fog397a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog397b
eraseSpriteDragon3Fog397a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog397b anop
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
        beq eraseSpriteDragon3Fog398a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog398b
eraseSpriteDragon3Fog398a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog398b anop
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
        beq eraseSpriteDragon3Fog399a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog399b
eraseSpriteDragon3Fog399a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog399b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog400a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog400b
eraseSpriteDragon3Fog400a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog400b anop
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
        beq eraseSpriteDragon3Fog401a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog401b
eraseSpriteDragon3Fog401a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog401b anop
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
        beq eraseSpriteDragon3Fog402a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog402b
eraseSpriteDragon3Fog402a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog402b anop
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
        beq eraseSpriteDragon3Fog403a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog403b
eraseSpriteDragon3Fog403a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog403b anop
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
        beq eraseSpriteDragon3Fog404a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog404b
eraseSpriteDragon3Fog404a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog404b anop
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
        beq eraseSpriteDragon3Fog405a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog405b
eraseSpriteDragon3Fog405a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog405b anop
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
        beq eraseSpriteDragon3Fog406a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog406b
eraseSpriteDragon3Fog406a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog406b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog407a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog407b
eraseSpriteDragon3Fog407a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog407b anop
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
        beq eraseSpriteDragon3Fog408a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog408b
eraseSpriteDragon3Fog408a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog408b anop
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
        beq eraseSpriteDragon3Fog409a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog409b
eraseSpriteDragon3Fog409a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog409b anop
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
        beq eraseSpriteDragon3Fog410a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog410b
eraseSpriteDragon3Fog410a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog410b anop
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
        beq eraseSpriteDragon3Fog411a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog411b
eraseSpriteDragon3Fog411a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog411b anop
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
        beq eraseSpriteDragon3Fog412a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog412b
eraseSpriteDragon3Fog412a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog412b anop
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
        beq eraseSpriteDragon3Fog413a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog413b
eraseSpriteDragon3Fog413a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog413b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog414a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog414b
eraseSpriteDragon3Fog414a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog414b anop
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
        beq eraseSpriteDragon3Fog415a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog415b
eraseSpriteDragon3Fog415a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog415b anop
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
        beq eraseSpriteDragon3Fog416a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog416b
eraseSpriteDragon3Fog416a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog416b anop
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
        beq eraseSpriteDragon3Fog417a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog417b
eraseSpriteDragon3Fog417a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog417b anop
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
        beq eraseSpriteDragon3Fog418a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog418b
eraseSpriteDragon3Fog418a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog418b anop
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
        beq eraseSpriteDragon3Fog419a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog419b
eraseSpriteDragon3Fog419a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog419b anop
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
        beq eraseSpriteDragon3Fog420a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog420b
eraseSpriteDragon3Fog420a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog420b anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteDragon3Fog421a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog421b
eraseSpriteDragon3Fog421a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog421b anop
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
        beq eraseSpriteDragon3Fog422a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog422b
eraseSpriteDragon3Fog422a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog422b anop
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
        beq eraseSpriteDragon3Fog423a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog423b
eraseSpriteDragon3Fog423a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog423b anop
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
        beq eraseSpriteDragon3Fog424a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog424b
eraseSpriteDragon3Fog424a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog424b anop
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
        beq eraseSpriteDragon3Fog425a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog425b
eraseSpriteDragon3Fog425a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog425b anop
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
        beq eraseSpriteDragon3Fog426a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog426b
eraseSpriteDragon3Fog426a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog426b anop
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
        beq eraseSpriteDragon3Fog427a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog427b
eraseSpriteDragon3Fog427a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog427b anop
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
        beq eraseSpriteDragon3Fog428a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog428b
eraseSpriteDragon3Fog428a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog428b anop
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
        beq eraseSpriteDragon3Fog429a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog429b
eraseSpriteDragon3Fog429a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog429b anop
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
        beq eraseSpriteDragon3Fog430a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog430b
eraseSpriteDragon3Fog430a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog430b anop
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
        beq eraseSpriteDragon3Fog431a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog431b
eraseSpriteDragon3Fog431a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog431b anop
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
        beq eraseSpriteDragon3Fog432a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog432b
eraseSpriteDragon3Fog432a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog432b anop
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
        beq eraseSpriteDragon3Fog433a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog433b
eraseSpriteDragon3Fog433a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog433b anop
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
        beq eraseSpriteDragon3Fog434a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog434b
eraseSpriteDragon3Fog434a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog434b anop
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
        beq eraseSpriteDragon3Fog435a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog435b
eraseSpriteDragon3Fog435a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog435b anop
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
        beq eraseSpriteDragon3Fog436a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog436b
eraseSpriteDragon3Fog436a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog436b anop
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
        beq eraseSpriteDragon3Fog437a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog437b
eraseSpriteDragon3Fog437a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog437b anop
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
        beq eraseSpriteDragon3Fog438a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog438b
eraseSpriteDragon3Fog438a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog438b anop
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
        beq eraseSpriteDragon3Fog439a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog439b
eraseSpriteDragon3Fog439a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog439b anop
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
        beq eraseSpriteDragon3Fog440a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog440b
eraseSpriteDragon3Fog440a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog440b anop
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
        beq eraseSpriteDragon3Fog441a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog441b
eraseSpriteDragon3Fog441a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog441b anop
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
        beq eraseSpriteDragon3Fog442a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog442b
eraseSpriteDragon3Fog442a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog442b anop
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
        beq eraseSpriteDragon3Fog443a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog443b
eraseSpriteDragon3Fog443a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog443b anop
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
        beq eraseSpriteDragon3Fog444a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog444b
eraseSpriteDragon3Fog444a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog444b anop
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
        beq eraseSpriteDragon3Fog445a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog445b
eraseSpriteDragon3Fog445a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog445b anop
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
        beq eraseSpriteDragon3Fog446a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog446b
eraseSpriteDragon3Fog446a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog446b anop
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
        beq eraseSpriteDragon3Fog447a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDragon3Fog447b
eraseSpriteDragon3Fog447a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDragon3Fog447b anop
        long m


        rtl



        end
