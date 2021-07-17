;
;  spriteKey.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteKey start spriteKeySeg
        using globalData
        using spriteData


drawSpriteKey entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda >spriteColor

        sta 5
        sta 6
        sta 7
        long m

drawSpriteKeySkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda >spriteColor

        sta 5
        sta 6
        sta 7
        long m

drawSpriteKeySkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 7
        long m

drawSpriteKeySkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 7
        long m

drawSpriteKeySkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw4

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 2
        sta 5
        sta 6
        sta 7
        long m

drawSpriteKeySkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteKeySkipRowDraw5

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 2
        sta 5
        sta 6
        sta 7
        long m

drawSpriteKeySkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteKey entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump6
        bra eraseSpriteKeySkipRowEraseDontSkipRow6

eraseSpriteKeySkipRowEraseShortJump6 anop
        brl eraseSpriteKeySkipRowErase6
eraseSpriteKeySkipRowEraseDontSkipRow6 anop
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


eraseSpriteKeySkipRowErase6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump7
        bra eraseSpriteKeySkipRowEraseDontSkipRow7

eraseSpriteKeySkipRowEraseShortJump7 anop
        brl eraseSpriteKeySkipRowErase7
eraseSpriteKeySkipRowEraseDontSkipRow7 anop
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


eraseSpriteKeySkipRowErase7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump8
        bra eraseSpriteKeySkipRowEraseDontSkipRow8

eraseSpriteKeySkipRowEraseShortJump8 anop
        brl eraseSpriteKeySkipRowErase8
eraseSpriteKeySkipRowEraseDontSkipRow8 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteKeySkipRowErase8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump9
        bra eraseSpriteKeySkipRowEraseDontSkipRow9

eraseSpriteKeySkipRowEraseShortJump9 anop
        brl eraseSpriteKeySkipRowErase9
eraseSpriteKeySkipRowEraseDontSkipRow9 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteKeySkipRowErase9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump10
        bra eraseSpriteKeySkipRowEraseDontSkipRow10

eraseSpriteKeySkipRowEraseShortJump10 anop
        brl eraseSpriteKeySkipRowErase10
eraseSpriteKeySkipRowEraseDontSkipRow10 anop
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


eraseSpriteKeySkipRowErase10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeySkipRowEraseShortJump11
        bra eraseSpriteKeySkipRowEraseDontSkipRow11

eraseSpriteKeySkipRowEraseShortJump11 anop
        brl eraseSpriteKeySkipRowErase11
eraseSpriteKeySkipRowEraseDontSkipRow11 anop
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


eraseSpriteKeySkipRowErase11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteKeyFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump12
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow12

eraseSpriteKeyFogSkipRowEraseShortJump12 anop
        brl eraseSpriteKeyFogSkipRowErase12
eraseSpriteKeyFogSkipRowEraseDontSkipRow12 anop
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
        beq eraseSpriteKeyFog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog0b
eraseSpriteKeyFog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog0b anop
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
        beq eraseSpriteKeyFog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog1b
eraseSpriteKeyFog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog1b anop
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
        beq eraseSpriteKeyFog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog2b
eraseSpriteKeyFog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog2b anop
        long m


eraseSpriteKeyFogSkipRowErase12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump13
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow13

eraseSpriteKeyFogSkipRowEraseShortJump13 anop
        brl eraseSpriteKeyFogSkipRowErase13
eraseSpriteKeyFogSkipRowEraseDontSkipRow13 anop
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
        beq eraseSpriteKeyFog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog3b
eraseSpriteKeyFog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog3b anop
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
        beq eraseSpriteKeyFog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog4b
eraseSpriteKeyFog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog4b anop
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
        beq eraseSpriteKeyFog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog5b
eraseSpriteKeyFog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog5b anop
        long m


eraseSpriteKeyFogSkipRowErase13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump14
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow14

eraseSpriteKeyFogSkipRowEraseShortJump14 anop
        brl eraseSpriteKeyFogSkipRowErase14
eraseSpriteKeyFogSkipRowEraseDontSkipRow14 anop
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
        beq eraseSpriteKeyFog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog6b
eraseSpriteKeyFog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog6b anop
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
        beq eraseSpriteKeyFog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog7b
eraseSpriteKeyFog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog7b anop
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
        beq eraseSpriteKeyFog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog8b
eraseSpriteKeyFog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog8b anop
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
        beq eraseSpriteKeyFog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog9b
eraseSpriteKeyFog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog9b anop
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
        beq eraseSpriteKeyFog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog10b
eraseSpriteKeyFog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog10b anop
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
        beq eraseSpriteKeyFog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog11b
eraseSpriteKeyFog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog11b anop
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
        beq eraseSpriteKeyFog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog12b
eraseSpriteKeyFog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog12b anop
        long m


eraseSpriteKeyFogSkipRowErase14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump15
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow15

eraseSpriteKeyFogSkipRowEraseShortJump15 anop
        brl eraseSpriteKeyFogSkipRowErase15
eraseSpriteKeyFogSkipRowEraseDontSkipRow15 anop
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
        beq eraseSpriteKeyFog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog13b
eraseSpriteKeyFog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog13b anop
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
        beq eraseSpriteKeyFog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog14b
eraseSpriteKeyFog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog14b anop
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
        beq eraseSpriteKeyFog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog15b
eraseSpriteKeyFog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog15b anop
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
        beq eraseSpriteKeyFog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog16b
eraseSpriteKeyFog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog16b anop
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
        beq eraseSpriteKeyFog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog17b
eraseSpriteKeyFog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog17b anop
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
        beq eraseSpriteKeyFog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog18b
eraseSpriteKeyFog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog18b anop
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
        beq eraseSpriteKeyFog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog19b
eraseSpriteKeyFog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog19b anop
        long m


eraseSpriteKeyFogSkipRowErase15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump16
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow16

eraseSpriteKeyFogSkipRowEraseShortJump16 anop
        brl eraseSpriteKeyFogSkipRowErase16
eraseSpriteKeyFogSkipRowEraseDontSkipRow16 anop
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
        beq eraseSpriteKeyFog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog20b
eraseSpriteKeyFog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog20b anop
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
        beq eraseSpriteKeyFog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog21b
eraseSpriteKeyFog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog21b anop
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
        beq eraseSpriteKeyFog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog22b
eraseSpriteKeyFog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog22b anop
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
        beq eraseSpriteKeyFog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog23b
eraseSpriteKeyFog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog23b anop
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
        beq eraseSpriteKeyFog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog24b
eraseSpriteKeyFog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog24b anop
        long m


eraseSpriteKeyFogSkipRowErase16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteKeyFogSkipRowEraseShortJump17
        bra eraseSpriteKeyFogSkipRowEraseDontSkipRow17

eraseSpriteKeyFogSkipRowEraseShortJump17 anop
        brl eraseSpriteKeyFogSkipRowErase17
eraseSpriteKeyFogSkipRowEraseDontSkipRow17 anop
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
        beq eraseSpriteKeyFog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog25b
eraseSpriteKeyFog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog25b anop
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
        beq eraseSpriteKeyFog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog26b
eraseSpriteKeyFog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog26b anop
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
        beq eraseSpriteKeyFog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog27b
eraseSpriteKeyFog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog27b anop
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
        beq eraseSpriteKeyFog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog28b
eraseSpriteKeyFog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog28b anop
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
        beq eraseSpriteKeyFog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteKeyFog29b
eraseSpriteKeyFog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteKeyFog29b anop
        long m


eraseSpriteKeyFogSkipRowErase17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl


        end
