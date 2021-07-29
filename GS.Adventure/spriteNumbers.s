;
;  spriteNumbers.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/29/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


spriteNumbers start
        using globalData
        using spriteData

    
drawSpriteNum1 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

drawSpriteNum1SkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        long m

drawSpriteNum1SkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw4

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw5

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw6

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw7

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw8

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw9

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw10

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw11

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum1SkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw12

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum1SkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum1SkipRowDraw13

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum1SkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteNum2 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw14

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum2SkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw15

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum2SkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw16

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum2SkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw17

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum2SkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw18

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum2SkipRowDraw18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw19

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum2SkipRowDraw19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw20

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$bb

        sta 6
        long m

drawSpriteNum2SkipRowDraw20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw21

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$bb

        sta 6
        long m

drawSpriteNum2SkipRowDraw21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw22

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum2SkipRowDraw22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw23

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$bb

        sta 5
        long m

drawSpriteNum2SkipRowDraw23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw24

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$bb

        sta 4
        long m

drawSpriteNum2SkipRowDraw24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw25

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 4
        long m

drawSpriteNum2SkipRowDraw25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw26

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteNum2SkipRowDraw26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum2SkipRowDraw27

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteNum2SkipRowDraw27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteNum3 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw28

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw29

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw30

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum3SkipRowDraw30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw31

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum3SkipRowDraw31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw32

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum3SkipRowDraw32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw33

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum3SkipRowDraw33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw34

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$bb

        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw35

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$bb

        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw36

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum3SkipRowDraw36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw37

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$bb

        sta 7
        long m

drawSpriteNum3SkipRowDraw37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw38

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum3SkipRowDraw38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw39

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$bb

        sta 3
        sta 7
        long m

drawSpriteNum3SkipRowDraw39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw40

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteNum3SkipRowDraw41

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$bb

        sta 4
        sta 5
        sta 6
        long m

drawSpriteNum3SkipRowDraw41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteNum1 entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump42
        bra eraseSpriteNum1SkipRowEraseDontSkipRow42

eraseSpriteNum1SkipRowEraseShortJump42 anop
        brl eraseSpriteNum1SkipRowErase42
eraseSpriteNum1SkipRowEraseDontSkipRow42 anop
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


eraseSpriteNum1SkipRowErase42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump43
        bra eraseSpriteNum1SkipRowEraseDontSkipRow43

eraseSpriteNum1SkipRowEraseShortJump43 anop
        brl eraseSpriteNum1SkipRowErase43
eraseSpriteNum1SkipRowEraseDontSkipRow43 anop
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


eraseSpriteNum1SkipRowErase43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump44
        bra eraseSpriteNum1SkipRowEraseDontSkipRow44

eraseSpriteNum1SkipRowEraseShortJump44 anop
        brl eraseSpriteNum1SkipRowErase44
eraseSpriteNum1SkipRowEraseDontSkipRow44 anop
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


eraseSpriteNum1SkipRowErase44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump45
        bra eraseSpriteNum1SkipRowEraseDontSkipRow45

eraseSpriteNum1SkipRowEraseShortJump45 anop
        brl eraseSpriteNum1SkipRowErase45
eraseSpriteNum1SkipRowEraseDontSkipRow45 anop
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


eraseSpriteNum1SkipRowErase45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump46
        bra eraseSpriteNum1SkipRowEraseDontSkipRow46

eraseSpriteNum1SkipRowEraseShortJump46 anop
        brl eraseSpriteNum1SkipRowErase46
eraseSpriteNum1SkipRowEraseDontSkipRow46 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump47
        bra eraseSpriteNum1SkipRowEraseDontSkipRow47

eraseSpriteNum1SkipRowEraseShortJump47 anop
        brl eraseSpriteNum1SkipRowErase47
eraseSpriteNum1SkipRowEraseDontSkipRow47 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump48
        bra eraseSpriteNum1SkipRowEraseDontSkipRow48

eraseSpriteNum1SkipRowEraseShortJump48 anop
        brl eraseSpriteNum1SkipRowErase48
eraseSpriteNum1SkipRowEraseDontSkipRow48 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump49
        bra eraseSpriteNum1SkipRowEraseDontSkipRow49

eraseSpriteNum1SkipRowEraseShortJump49 anop
        brl eraseSpriteNum1SkipRowErase49
eraseSpriteNum1SkipRowEraseDontSkipRow49 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase49 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump50
        bra eraseSpriteNum1SkipRowEraseDontSkipRow50

eraseSpriteNum1SkipRowEraseShortJump50 anop
        brl eraseSpriteNum1SkipRowErase50
eraseSpriteNum1SkipRowEraseDontSkipRow50 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase50 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump51
        bra eraseSpriteNum1SkipRowEraseDontSkipRow51

eraseSpriteNum1SkipRowEraseShortJump51 anop
        brl eraseSpriteNum1SkipRowErase51
eraseSpriteNum1SkipRowEraseDontSkipRow51 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum1SkipRowErase51 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump52
        bra eraseSpriteNum1SkipRowEraseDontSkipRow52

eraseSpriteNum1SkipRowEraseShortJump52 anop
        brl eraseSpriteNum1SkipRowErase52
eraseSpriteNum1SkipRowEraseDontSkipRow52 anop
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


eraseSpriteNum1SkipRowErase52 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump53
        bra eraseSpriteNum1SkipRowEraseDontSkipRow53

eraseSpriteNum1SkipRowEraseShortJump53 anop
        brl eraseSpriteNum1SkipRowErase53
eraseSpriteNum1SkipRowEraseDontSkipRow53 anop
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


eraseSpriteNum1SkipRowErase53 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump54
        bra eraseSpriteNum1SkipRowEraseDontSkipRow54

eraseSpriteNum1SkipRowEraseShortJump54 anop
        brl eraseSpriteNum1SkipRowErase54
eraseSpriteNum1SkipRowEraseDontSkipRow54 anop
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


eraseSpriteNum1SkipRowErase54 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum1SkipRowEraseShortJump55
        bra eraseSpriteNum1SkipRowEraseDontSkipRow55

eraseSpriteNum1SkipRowEraseShortJump55 anop
        brl eraseSpriteNum1SkipRowErase55
eraseSpriteNum1SkipRowEraseDontSkipRow55 anop
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


eraseSpriteNum1SkipRowErase55 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteNum2 entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump56
        bra eraseSpriteNum2SkipRowEraseDontSkipRow56

eraseSpriteNum2SkipRowEraseShortJump56 anop
        brl eraseSpriteNum2SkipRowErase56
eraseSpriteNum2SkipRowEraseDontSkipRow56 anop
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


eraseSpriteNum2SkipRowErase56 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump57
        bra eraseSpriteNum2SkipRowEraseDontSkipRow57

eraseSpriteNum2SkipRowEraseShortJump57 anop
        brl eraseSpriteNum2SkipRowErase57
eraseSpriteNum2SkipRowEraseDontSkipRow57 anop
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


eraseSpriteNum2SkipRowErase57 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump58
        bra eraseSpriteNum2SkipRowEraseDontSkipRow58

eraseSpriteNum2SkipRowEraseShortJump58 anop
        brl eraseSpriteNum2SkipRowErase58
eraseSpriteNum2SkipRowEraseDontSkipRow58 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase58 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump59
        bra eraseSpriteNum2SkipRowEraseDontSkipRow59

eraseSpriteNum2SkipRowEraseShortJump59 anop
        brl eraseSpriteNum2SkipRowErase59
eraseSpriteNum2SkipRowEraseDontSkipRow59 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase59 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump60
        bra eraseSpriteNum2SkipRowEraseDontSkipRow60

eraseSpriteNum2SkipRowEraseShortJump60 anop
        brl eraseSpriteNum2SkipRowErase60
eraseSpriteNum2SkipRowEraseDontSkipRow60 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase60 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump61
        bra eraseSpriteNum2SkipRowEraseDontSkipRow61

eraseSpriteNum2SkipRowEraseShortJump61 anop
        brl eraseSpriteNum2SkipRowErase61
eraseSpriteNum2SkipRowEraseDontSkipRow61 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase61 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump62
        bra eraseSpriteNum2SkipRowEraseDontSkipRow62

eraseSpriteNum2SkipRowEraseShortJump62 anop
        brl eraseSpriteNum2SkipRowErase62
eraseSpriteNum2SkipRowEraseDontSkipRow62 anop
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
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase62 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump63
        bra eraseSpriteNum2SkipRowEraseDontSkipRow63

eraseSpriteNum2SkipRowEraseShortJump63 anop
        brl eraseSpriteNum2SkipRowErase63
eraseSpriteNum2SkipRowEraseDontSkipRow63 anop
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
        adc #6
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase63 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump64
        bra eraseSpriteNum2SkipRowEraseDontSkipRow64

eraseSpriteNum2SkipRowEraseShortJump64 anop
        brl eraseSpriteNum2SkipRowErase64
eraseSpriteNum2SkipRowEraseDontSkipRow64 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase64 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump65
        bra eraseSpriteNum2SkipRowEraseDontSkipRow65

eraseSpriteNum2SkipRowEraseShortJump65 anop
        brl eraseSpriteNum2SkipRowErase65
eraseSpriteNum2SkipRowEraseDontSkipRow65 anop
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
        adc #5
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase65 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump66
        bra eraseSpriteNum2SkipRowEraseDontSkipRow66

eraseSpriteNum2SkipRowEraseShortJump66 anop
        brl eraseSpriteNum2SkipRowErase66
eraseSpriteNum2SkipRowEraseDontSkipRow66 anop
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
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase66 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump67
        bra eraseSpriteNum2SkipRowEraseDontSkipRow67

eraseSpriteNum2SkipRowEraseShortJump67 anop
        brl eraseSpriteNum2SkipRowErase67
eraseSpriteNum2SkipRowEraseDontSkipRow67 anop
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
        adc #4
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum2SkipRowErase67 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump68
        bra eraseSpriteNum2SkipRowEraseDontSkipRow68

eraseSpriteNum2SkipRowEraseShortJump68 anop
        brl eraseSpriteNum2SkipRowErase68
eraseSpriteNum2SkipRowEraseDontSkipRow68 anop
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


eraseSpriteNum2SkipRowErase68 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum2SkipRowEraseShortJump69
        bra eraseSpriteNum2SkipRowEraseDontSkipRow69

eraseSpriteNum2SkipRowEraseShortJump69 anop
        brl eraseSpriteNum2SkipRowErase69
eraseSpriteNum2SkipRowEraseDontSkipRow69 anop
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


eraseSpriteNum2SkipRowErase69 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteNum3 entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump70
        bra eraseSpriteNum3SkipRowEraseDontSkipRow70

eraseSpriteNum3SkipRowEraseShortJump70 anop
        brl eraseSpriteNum3SkipRowErase70
eraseSpriteNum3SkipRowEraseDontSkipRow70 anop
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


eraseSpriteNum3SkipRowErase70 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump71
        bra eraseSpriteNum3SkipRowEraseDontSkipRow71

eraseSpriteNum3SkipRowEraseShortJump71 anop
        brl eraseSpriteNum3SkipRowErase71
eraseSpriteNum3SkipRowEraseDontSkipRow71 anop
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


eraseSpriteNum3SkipRowErase71 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump72
        bra eraseSpriteNum3SkipRowEraseDontSkipRow72

eraseSpriteNum3SkipRowEraseShortJump72 anop
        brl eraseSpriteNum3SkipRowErase72
eraseSpriteNum3SkipRowEraseDontSkipRow72 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase72 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump73
        bra eraseSpriteNum3SkipRowEraseDontSkipRow73

eraseSpriteNum3SkipRowEraseShortJump73 anop
        brl eraseSpriteNum3SkipRowErase73
eraseSpriteNum3SkipRowEraseDontSkipRow73 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase73 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump74
        bra eraseSpriteNum3SkipRowEraseDontSkipRow74

eraseSpriteNum3SkipRowEraseShortJump74 anop
        brl eraseSpriteNum3SkipRowErase74
eraseSpriteNum3SkipRowEraseDontSkipRow74 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase74 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump75
        bra eraseSpriteNum3SkipRowEraseDontSkipRow75

eraseSpriteNum3SkipRowEraseShortJump75 anop
        brl eraseSpriteNum3SkipRowErase75
eraseSpriteNum3SkipRowEraseDontSkipRow75 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase75 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump76
        bra eraseSpriteNum3SkipRowEraseDontSkipRow76

eraseSpriteNum3SkipRowEraseShortJump76 anop
        brl eraseSpriteNum3SkipRowErase76
eraseSpriteNum3SkipRowEraseDontSkipRow76 anop
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


eraseSpriteNum3SkipRowErase76 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump77
        bra eraseSpriteNum3SkipRowEraseDontSkipRow77

eraseSpriteNum3SkipRowEraseShortJump77 anop
        brl eraseSpriteNum3SkipRowErase77
eraseSpriteNum3SkipRowEraseDontSkipRow77 anop
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


eraseSpriteNum3SkipRowErase77 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump78
        bra eraseSpriteNum3SkipRowEraseDontSkipRow78

eraseSpriteNum3SkipRowEraseShortJump78 anop
        brl eraseSpriteNum3SkipRowErase78
eraseSpriteNum3SkipRowEraseDontSkipRow78 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase78 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump79
        bra eraseSpriteNum3SkipRowEraseDontSkipRow79

eraseSpriteNum3SkipRowEraseShortJump79 anop
        brl eraseSpriteNum3SkipRowErase79
eraseSpriteNum3SkipRowEraseDontSkipRow79 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase79 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump80
        bra eraseSpriteNum3SkipRowEraseDontSkipRow80

eraseSpriteNum3SkipRowEraseShortJump80 anop
        brl eraseSpriteNum3SkipRowErase80
eraseSpriteNum3SkipRowEraseDontSkipRow80 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase80 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump81
        bra eraseSpriteNum3SkipRowEraseDontSkipRow81

eraseSpriteNum3SkipRowEraseShortJump81 anop
        brl eraseSpriteNum3SkipRowErase81
eraseSpriteNum3SkipRowEraseDontSkipRow81 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteNum3SkipRowErase81 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump82
        bra eraseSpriteNum3SkipRowEraseDontSkipRow82

eraseSpriteNum3SkipRowEraseShortJump82 anop
        brl eraseSpriteNum3SkipRowErase82
eraseSpriteNum3SkipRowEraseDontSkipRow82 anop
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


eraseSpriteNum3SkipRowErase82 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteNum3SkipRowEraseShortJump83
        bra eraseSpriteNum3SkipRowEraseDontSkipRow83

eraseSpriteNum3SkipRowEraseShortJump83 anop
        brl eraseSpriteNum3SkipRowErase83
eraseSpriteNum3SkipRowEraseDontSkipRow83 anop
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


eraseSpriteNum3SkipRowErase83 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl
    
    
        end
