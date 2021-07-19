;
;  spriteMisc.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteMisc start spriteMiscSeg
        using globalData
        using spriteData


drawSpriteSword entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$33

        sta 2
        long m

drawSpriteSwordSkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$33

        sta 2
        long m

drawSpriteSwordSkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$33

        sta 1
        long m

drawSpriteSwordSkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$33

        sta 1
        long m

drawSpriteSwordSkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw4

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
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteSwordSkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw5

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
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteSwordSkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw6

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$33

        sta 1
        long m

drawSpriteSwordSkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw7

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$33

        sta 1
        long m

drawSpriteSwordSkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw8

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$33

        sta 2
        long m

drawSpriteSwordSkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteSwordSkipRowDraw9

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$33

        sta 2
        long m

drawSpriteSwordSkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteDot entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteDotSkipRowDraw10

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$11

        sta 0
        long m

drawSpriteDotSkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDotSkipRowDraw11

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$11

        sta 0
        long m

drawSpriteDotSkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteChallise entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw12

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChalliseSkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw13

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChalliseSkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw14

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChalliseSkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw15

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChalliseSkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw16

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$ff

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteChalliseSkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw17

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteChalliseSkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw18

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw19

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw20

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw21

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw22

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$ff

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteChalliseSkipRowDraw22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw23

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$ff

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteChalliseSkipRowDraw23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw24

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChalliseSkipRowDraw24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw25

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChalliseSkipRowDraw25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw26

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChalliseSkipRowDraw26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw27

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChalliseSkipRowDraw27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw28

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChalliseSkipRowDraw29

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChalliseSkipRowDraw29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteMagnet entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw30

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$00

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteMagnetSkipRowDraw30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw31

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$00

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteMagnetSkipRowDraw31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw32

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteMagnetSkipRowDraw32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw33

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteMagnetSkipRowDraw33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw34

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 2
        sta 5
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw35

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 2
        sta 5
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw36

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw37

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw38

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw39

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw40

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw41

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw42

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw43

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw44

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteMagnetSkipRowDraw45

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$00

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteMagnetSkipRowDraw45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteSword entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump46
        bra eraseSpriteSwordSkipRowEraseDontSkipRow46

eraseSpriteSwordSkipRowEraseShortJump46 anop
        brl eraseSpriteSwordSkipRowErase46
eraseSpriteSwordSkipRowEraseDontSkipRow46 anop
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump47
        bra eraseSpriteSwordSkipRowEraseDontSkipRow47

eraseSpriteSwordSkipRowEraseShortJump47 anop
        brl eraseSpriteSwordSkipRowErase47
eraseSpriteSwordSkipRowEraseDontSkipRow47 anop
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump48
        bra eraseSpriteSwordSkipRowEraseDontSkipRow48

eraseSpriteSwordSkipRowEraseShortJump48 anop
        brl eraseSpriteSwordSkipRowErase48
eraseSpriteSwordSkipRowEraseDontSkipRow48 anop
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
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump49
        bra eraseSpriteSwordSkipRowEraseDontSkipRow49

eraseSpriteSwordSkipRowEraseShortJump49 anop
        brl eraseSpriteSwordSkipRowErase49
eraseSpriteSwordSkipRowEraseDontSkipRow49 anop
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
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase49 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump50
        bra eraseSpriteSwordSkipRowEraseDontSkipRow50

eraseSpriteSwordSkipRowEraseShortJump50 anop
        brl eraseSpriteSwordSkipRowErase50
eraseSpriteSwordSkipRowEraseDontSkipRow50 anop
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


eraseSpriteSwordSkipRowErase50 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump51
        bra eraseSpriteSwordSkipRowEraseDontSkipRow51

eraseSpriteSwordSkipRowEraseShortJump51 anop
        brl eraseSpriteSwordSkipRowErase51
eraseSpriteSwordSkipRowEraseDontSkipRow51 anop
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


eraseSpriteSwordSkipRowErase51 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump52
        bra eraseSpriteSwordSkipRowEraseDontSkipRow52

eraseSpriteSwordSkipRowEraseShortJump52 anop
        brl eraseSpriteSwordSkipRowErase52
eraseSpriteSwordSkipRowEraseDontSkipRow52 anop
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
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase52 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump53
        bra eraseSpriteSwordSkipRowEraseDontSkipRow53

eraseSpriteSwordSkipRowEraseShortJump53 anop
        brl eraseSpriteSwordSkipRowErase53
eraseSpriteSwordSkipRowEraseDontSkipRow53 anop
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
        adc #1
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase53 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump54
        bra eraseSpriteSwordSkipRowEraseDontSkipRow54

eraseSpriteSwordSkipRowEraseShortJump54 anop
        brl eraseSpriteSwordSkipRowErase54
eraseSpriteSwordSkipRowEraseDontSkipRow54 anop
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase54 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordSkipRowEraseShortJump55
        bra eraseSpriteSwordSkipRowEraseDontSkipRow55

eraseSpriteSwordSkipRowEraseShortJump55 anop
        brl eraseSpriteSwordSkipRowErase55
eraseSpriteSwordSkipRowEraseDontSkipRow55 anop
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
        adc #2
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteSwordSkipRowErase55 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteDot entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteDotSkipRowEraseShortJump56
        bra eraseSpriteDotSkipRowEraseDontSkipRow56

eraseSpriteDotSkipRowEraseShortJump56 anop
        brl eraseSpriteDotSkipRowErase56
eraseSpriteDotSkipRowEraseDontSkipRow56 anop
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


eraseSpriteDotSkipRowErase56 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteDotSkipRowEraseShortJump57
        bra eraseSpriteDotSkipRowEraseDontSkipRow57

eraseSpriteDotSkipRowEraseShortJump57 anop
        brl eraseSpriteDotSkipRowErase57
eraseSpriteDotSkipRowEraseDontSkipRow57 anop
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


eraseSpriteDotSkipRowErase57 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteChallise entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump58
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow58

eraseSpriteChalliseSkipRowEraseShortJump58 anop
        brl eraseSpriteChalliseSkipRowErase58
eraseSpriteChalliseSkipRowEraseDontSkipRow58 anop
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


eraseSpriteChalliseSkipRowErase58 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump59
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow59

eraseSpriteChalliseSkipRowEraseShortJump59 anop
        brl eraseSpriteChalliseSkipRowErase59
eraseSpriteChalliseSkipRowEraseDontSkipRow59 anop
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


eraseSpriteChalliseSkipRowErase59 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump60
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow60

eraseSpriteChalliseSkipRowEraseShortJump60 anop
        brl eraseSpriteChalliseSkipRowErase60
eraseSpriteChalliseSkipRowEraseDontSkipRow60 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteChalliseSkipRowErase60 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump61
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow61

eraseSpriteChalliseSkipRowEraseShortJump61 anop
        brl eraseSpriteChalliseSkipRowErase61
eraseSpriteChalliseSkipRowEraseDontSkipRow61 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteChalliseSkipRowErase61 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump62
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow62

eraseSpriteChalliseSkipRowEraseShortJump62 anop
        brl eraseSpriteChalliseSkipRowErase62
eraseSpriteChalliseSkipRowEraseDontSkipRow62 anop
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


eraseSpriteChalliseSkipRowErase62 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump63
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow63

eraseSpriteChalliseSkipRowEraseShortJump63 anop
        brl eraseSpriteChalliseSkipRowErase63
eraseSpriteChalliseSkipRowEraseDontSkipRow63 anop
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


eraseSpriteChalliseSkipRowErase63 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump64
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow64

eraseSpriteChalliseSkipRowEraseShortJump64 anop
        brl eraseSpriteChalliseSkipRowErase64
eraseSpriteChalliseSkipRowEraseDontSkipRow64 anop
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


eraseSpriteChalliseSkipRowErase64 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump65
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow65

eraseSpriteChalliseSkipRowEraseShortJump65 anop
        brl eraseSpriteChalliseSkipRowErase65
eraseSpriteChalliseSkipRowEraseDontSkipRow65 anop
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


eraseSpriteChalliseSkipRowErase65 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump66
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow66

eraseSpriteChalliseSkipRowEraseShortJump66 anop
        brl eraseSpriteChalliseSkipRowErase66
eraseSpriteChalliseSkipRowEraseDontSkipRow66 anop
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


eraseSpriteChalliseSkipRowErase66 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump67
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow67

eraseSpriteChalliseSkipRowEraseShortJump67 anop
        brl eraseSpriteChalliseSkipRowErase67
eraseSpriteChalliseSkipRowEraseDontSkipRow67 anop
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


eraseSpriteChalliseSkipRowErase67 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump68
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow68

eraseSpriteChalliseSkipRowEraseShortJump68 anop
        brl eraseSpriteChalliseSkipRowErase68
eraseSpriteChalliseSkipRowEraseDontSkipRow68 anop
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


eraseSpriteChalliseSkipRowErase68 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump69
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow69

eraseSpriteChalliseSkipRowEraseShortJump69 anop
        brl eraseSpriteChalliseSkipRowErase69
eraseSpriteChalliseSkipRowEraseDontSkipRow69 anop
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


eraseSpriteChalliseSkipRowErase69 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump70
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow70

eraseSpriteChalliseSkipRowEraseShortJump70 anop
        brl eraseSpriteChalliseSkipRowErase70
eraseSpriteChalliseSkipRowEraseDontSkipRow70 anop
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


eraseSpriteChalliseSkipRowErase70 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump71
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow71

eraseSpriteChalliseSkipRowEraseShortJump71 anop
        brl eraseSpriteChalliseSkipRowErase71
eraseSpriteChalliseSkipRowEraseDontSkipRow71 anop
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


eraseSpriteChalliseSkipRowErase71 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump72
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow72

eraseSpriteChalliseSkipRowEraseShortJump72 anop
        brl eraseSpriteChalliseSkipRowErase72
eraseSpriteChalliseSkipRowEraseDontSkipRow72 anop
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


eraseSpriteChalliseSkipRowErase72 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump73
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow73

eraseSpriteChalliseSkipRowEraseShortJump73 anop
        brl eraseSpriteChalliseSkipRowErase73
eraseSpriteChalliseSkipRowEraseDontSkipRow73 anop
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


eraseSpriteChalliseSkipRowErase73 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump74
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow74

eraseSpriteChalliseSkipRowEraseShortJump74 anop
        brl eraseSpriteChalliseSkipRowErase74
eraseSpriteChalliseSkipRowEraseDontSkipRow74 anop
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


eraseSpriteChalliseSkipRowErase74 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseSkipRowEraseShortJump75
        bra eraseSpriteChalliseSkipRowEraseDontSkipRow75

eraseSpriteChalliseSkipRowEraseShortJump75 anop
        brl eraseSpriteChalliseSkipRowErase75
eraseSpriteChalliseSkipRowEraseDontSkipRow75 anop
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


eraseSpriteChalliseSkipRowErase75 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteMagnet entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump76
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow76

eraseSpriteMagnetSkipRowEraseShortJump76 anop
        brl eraseSpriteMagnetSkipRowErase76
eraseSpriteMagnetSkipRowEraseDontSkipRow76 anop
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


eraseSpriteMagnetSkipRowErase76 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump77
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow77

eraseSpriteMagnetSkipRowEraseShortJump77 anop
        brl eraseSpriteMagnetSkipRowErase77
eraseSpriteMagnetSkipRowEraseDontSkipRow77 anop
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


eraseSpriteMagnetSkipRowErase77 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump78
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow78

eraseSpriteMagnetSkipRowEraseShortJump78 anop
        brl eraseSpriteMagnetSkipRowErase78
eraseSpriteMagnetSkipRowEraseDontSkipRow78 anop
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


eraseSpriteMagnetSkipRowErase78 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump79
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow79

eraseSpriteMagnetSkipRowEraseShortJump79 anop
        brl eraseSpriteMagnetSkipRowErase79
eraseSpriteMagnetSkipRowEraseDontSkipRow79 anop
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


eraseSpriteMagnetSkipRowErase79 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump80
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow80

eraseSpriteMagnetSkipRowEraseShortJump80 anop
        brl eraseSpriteMagnetSkipRowErase80
eraseSpriteMagnetSkipRowEraseDontSkipRow80 anop
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


eraseSpriteMagnetSkipRowErase80 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump81
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow81

eraseSpriteMagnetSkipRowEraseShortJump81 anop
        brl eraseSpriteMagnetSkipRowErase81
eraseSpriteMagnetSkipRowEraseDontSkipRow81 anop
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


eraseSpriteMagnetSkipRowErase81 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump82
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow82

eraseSpriteMagnetSkipRowEraseShortJump82 anop
        brl eraseSpriteMagnetSkipRowErase82
eraseSpriteMagnetSkipRowEraseDontSkipRow82 anop
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


eraseSpriteMagnetSkipRowErase82 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump83
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow83

eraseSpriteMagnetSkipRowEraseShortJump83 anop
        brl eraseSpriteMagnetSkipRowErase83
eraseSpriteMagnetSkipRowEraseDontSkipRow83 anop
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


eraseSpriteMagnetSkipRowErase83 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump84
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow84

eraseSpriteMagnetSkipRowEraseShortJump84 anop
        brl eraseSpriteMagnetSkipRowErase84
eraseSpriteMagnetSkipRowEraseDontSkipRow84 anop
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


eraseSpriteMagnetSkipRowErase84 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump85
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow85

eraseSpriteMagnetSkipRowEraseShortJump85 anop
        brl eraseSpriteMagnetSkipRowErase85
eraseSpriteMagnetSkipRowEraseDontSkipRow85 anop
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


eraseSpriteMagnetSkipRowErase85 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump86
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow86

eraseSpriteMagnetSkipRowEraseShortJump86 anop
        brl eraseSpriteMagnetSkipRowErase86
eraseSpriteMagnetSkipRowEraseDontSkipRow86 anop
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


eraseSpriteMagnetSkipRowErase86 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump87
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow87

eraseSpriteMagnetSkipRowEraseShortJump87 anop
        brl eraseSpriteMagnetSkipRowErase87
eraseSpriteMagnetSkipRowEraseDontSkipRow87 anop
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


eraseSpriteMagnetSkipRowErase87 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump88
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow88

eraseSpriteMagnetSkipRowEraseShortJump88 anop
        brl eraseSpriteMagnetSkipRowErase88
eraseSpriteMagnetSkipRowEraseDontSkipRow88 anop
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


eraseSpriteMagnetSkipRowErase88 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump89
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow89

eraseSpriteMagnetSkipRowEraseShortJump89 anop
        brl eraseSpriteMagnetSkipRowErase89
eraseSpriteMagnetSkipRowEraseDontSkipRow89 anop
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


eraseSpriteMagnetSkipRowErase89 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump90
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow90

eraseSpriteMagnetSkipRowEraseShortJump90 anop
        brl eraseSpriteMagnetSkipRowErase90
eraseSpriteMagnetSkipRowEraseDontSkipRow90 anop
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


eraseSpriteMagnetSkipRowErase90 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetSkipRowEraseShortJump91
        bra eraseSpriteMagnetSkipRowEraseDontSkipRow91

eraseSpriteMagnetSkipRowEraseShortJump91 anop
        brl eraseSpriteMagnetSkipRowErase91
eraseSpriteMagnetSkipRowEraseDontSkipRow91 anop
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


eraseSpriteMagnetSkipRowErase91 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteSwordFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump92
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow92

eraseSpriteSwordFogSkipRowEraseShortJump92 anop
        brl eraseSpriteSwordFogSkipRowErase92
eraseSpriteSwordFogSkipRowEraseDontSkipRow92 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog0b
eraseSpriteSwordFog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog0b anop
        long m


eraseSpriteSwordFogSkipRowErase92 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump93
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow93

eraseSpriteSwordFogSkipRowEraseShortJump93 anop
        brl eraseSpriteSwordFogSkipRowErase93
eraseSpriteSwordFogSkipRowEraseDontSkipRow93 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog1b
eraseSpriteSwordFog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog1b anop
        long m


eraseSpriteSwordFogSkipRowErase93 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump94
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow94

eraseSpriteSwordFogSkipRowEraseShortJump94 anop
        brl eraseSpriteSwordFogSkipRowErase94
eraseSpriteSwordFogSkipRowEraseDontSkipRow94 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog2b
eraseSpriteSwordFog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog2b anop
        long m


eraseSpriteSwordFogSkipRowErase94 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump95
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow95

eraseSpriteSwordFogSkipRowEraseShortJump95 anop
        brl eraseSpriteSwordFogSkipRowErase95
eraseSpriteSwordFogSkipRowEraseDontSkipRow95 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog3b
eraseSpriteSwordFog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog3b anop
        long m


eraseSpriteSwordFogSkipRowErase95 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump96
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow96

eraseSpriteSwordFogSkipRowEraseShortJump96 anop
        brl eraseSpriteSwordFogSkipRowErase96
eraseSpriteSwordFogSkipRowEraseDontSkipRow96 anop
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
        beq eraseSpriteSwordFog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog4b
eraseSpriteSwordFog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog4b anop
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
        beq eraseSpriteSwordFog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog5b
eraseSpriteSwordFog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog5b anop
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
        beq eraseSpriteSwordFog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog6b
eraseSpriteSwordFog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog6b anop
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
        beq eraseSpriteSwordFog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog7b
eraseSpriteSwordFog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog7b anop
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
        beq eraseSpriteSwordFog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog8b
eraseSpriteSwordFog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog8b anop
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
        beq eraseSpriteSwordFog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog9b
eraseSpriteSwordFog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog9b anop
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
        beq eraseSpriteSwordFog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog10b
eraseSpriteSwordFog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog10b anop
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
        beq eraseSpriteSwordFog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog11b
eraseSpriteSwordFog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog11b anop
        long m


eraseSpriteSwordFogSkipRowErase96 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump97
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow97

eraseSpriteSwordFogSkipRowEraseShortJump97 anop
        brl eraseSpriteSwordFogSkipRowErase97
eraseSpriteSwordFogSkipRowEraseDontSkipRow97 anop
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
        beq eraseSpriteSwordFog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog12b
eraseSpriteSwordFog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog12b anop
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
        beq eraseSpriteSwordFog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog13b
eraseSpriteSwordFog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog13b anop
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
        beq eraseSpriteSwordFog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog14b
eraseSpriteSwordFog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog14b anop
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
        beq eraseSpriteSwordFog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog15b
eraseSpriteSwordFog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog15b anop
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
        beq eraseSpriteSwordFog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog16b
eraseSpriteSwordFog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog16b anop
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
        beq eraseSpriteSwordFog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog17b
eraseSpriteSwordFog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog17b anop
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
        beq eraseSpriteSwordFog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog18b
eraseSpriteSwordFog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog18b anop
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
        beq eraseSpriteSwordFog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog19b
eraseSpriteSwordFog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog19b anop
        long m


eraseSpriteSwordFogSkipRowErase97 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump98
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow98

eraseSpriteSwordFogSkipRowEraseShortJump98 anop
        brl eraseSpriteSwordFogSkipRowErase98
eraseSpriteSwordFogSkipRowEraseDontSkipRow98 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog20b
eraseSpriteSwordFog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog20b anop
        long m


eraseSpriteSwordFogSkipRowErase98 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump99
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow99

eraseSpriteSwordFogSkipRowEraseShortJump99 anop
        brl eraseSpriteSwordFogSkipRowErase99
eraseSpriteSwordFogSkipRowEraseDontSkipRow99 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog21b
eraseSpriteSwordFog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog21b anop
        long m


eraseSpriteSwordFogSkipRowErase99 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump100
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow100

eraseSpriteSwordFogSkipRowEraseShortJump100 anop
        brl eraseSpriteSwordFogSkipRowErase100
eraseSpriteSwordFogSkipRowEraseDontSkipRow100 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog22b
eraseSpriteSwordFog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog22b anop
        long m


eraseSpriteSwordFogSkipRowErase100 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteSwordFogSkipRowEraseShortJump101
        bra eraseSpriteSwordFogSkipRowEraseDontSkipRow101

eraseSpriteSwordFogSkipRowEraseShortJump101 anop
        brl eraseSpriteSwordFogSkipRowErase101
eraseSpriteSwordFogSkipRowEraseDontSkipRow101 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteSwordFog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteSwordFog23b
eraseSpriteSwordFog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteSwordFog23b anop
        long m


eraseSpriteSwordFogSkipRowErase101 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteDotFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteDotFogSkipRowEraseShortJump102
        bra eraseSpriteDotFogSkipRowEraseDontSkipRow102

eraseSpriteDotFogSkipRowEraseShortJump102 anop
        brl eraseSpriteDotFogSkipRowErase102
eraseSpriteDotFogSkipRowEraseDontSkipRow102 anop
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
        beq eraseSpriteDotFog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDotFog24b
eraseSpriteDotFog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDotFog24b anop
        long m


eraseSpriteDotFogSkipRowErase102 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteDotFogSkipRowEraseShortJump103
        bra eraseSpriteDotFogSkipRowEraseDontSkipRow103

eraseSpriteDotFogSkipRowEraseShortJump103 anop
        brl eraseSpriteDotFogSkipRowErase103
eraseSpriteDotFogSkipRowEraseDontSkipRow103 anop
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
        beq eraseSpriteDotFog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteDotFog25b
eraseSpriteDotFog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteDotFog25b anop
        long m


eraseSpriteDotFogSkipRowErase103 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteChalliseFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump104
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow104

eraseSpriteChalliseFogSkipRowEraseShortJump104 anop
        brl eraseSpriteChalliseFogSkipRowErase104
eraseSpriteChalliseFogSkipRowEraseDontSkipRow104 anop
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
        beq eraseSpriteChalliseFog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog26b
eraseSpriteChalliseFog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog26b anop
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
        beq eraseSpriteChalliseFog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog27b
eraseSpriteChalliseFog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog27b anop
        long m


eraseSpriteChalliseFogSkipRowErase104 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump105
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow105

eraseSpriteChalliseFogSkipRowEraseShortJump105 anop
        brl eraseSpriteChalliseFogSkipRowErase105
eraseSpriteChalliseFogSkipRowEraseDontSkipRow105 anop
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
        beq eraseSpriteChalliseFog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog28b
eraseSpriteChalliseFog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog28b anop
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
        beq eraseSpriteChalliseFog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog29b
eraseSpriteChalliseFog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog29b anop
        long m


eraseSpriteChalliseFogSkipRowErase105 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump106
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow106

eraseSpriteChalliseFogSkipRowEraseShortJump106 anop
        brl eraseSpriteChalliseFogSkipRowErase106
eraseSpriteChalliseFogSkipRowEraseDontSkipRow106 anop
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
        beq eraseSpriteChalliseFog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog30b
eraseSpriteChalliseFog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog30b anop
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
        beq eraseSpriteChalliseFog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog31b
eraseSpriteChalliseFog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog31b anop
        long m


eraseSpriteChalliseFogSkipRowErase106 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump107
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow107

eraseSpriteChalliseFogSkipRowEraseShortJump107 anop
        brl eraseSpriteChalliseFogSkipRowErase107
eraseSpriteChalliseFogSkipRowEraseDontSkipRow107 anop
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
        beq eraseSpriteChalliseFog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog32b
eraseSpriteChalliseFog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog32b anop
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
        beq eraseSpriteChalliseFog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog33b
eraseSpriteChalliseFog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog33b anop
        long m


eraseSpriteChalliseFogSkipRowErase107 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump108
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow108

eraseSpriteChalliseFogSkipRowEraseShortJump108 anop
        brl eraseSpriteChalliseFogSkipRowErase108
eraseSpriteChalliseFogSkipRowEraseDontSkipRow108 anop
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
        beq eraseSpriteChalliseFog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog34b
eraseSpriteChalliseFog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog34b anop
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
        beq eraseSpriteChalliseFog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog35b
eraseSpriteChalliseFog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog35b anop
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
        beq eraseSpriteChalliseFog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog36b
eraseSpriteChalliseFog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog36b anop
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
        beq eraseSpriteChalliseFog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog37b
eraseSpriteChalliseFog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog37b anop
        long m


eraseSpriteChalliseFogSkipRowErase108 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump109
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow109

eraseSpriteChalliseFogSkipRowEraseShortJump109 anop
        brl eraseSpriteChalliseFogSkipRowErase109
eraseSpriteChalliseFogSkipRowEraseDontSkipRow109 anop
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
        beq eraseSpriteChalliseFog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog38b
eraseSpriteChalliseFog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog38b anop
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
        beq eraseSpriteChalliseFog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog39b
eraseSpriteChalliseFog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog39b anop
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
        beq eraseSpriteChalliseFog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog40b
eraseSpriteChalliseFog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog40b anop
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
        beq eraseSpriteChalliseFog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog41b
eraseSpriteChalliseFog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog41b anop
        long m


eraseSpriteChalliseFogSkipRowErase109 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump110
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow110

eraseSpriteChalliseFogSkipRowEraseShortJump110 anop
        brl eraseSpriteChalliseFogSkipRowErase110
eraseSpriteChalliseFogSkipRowEraseDontSkipRow110 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog42b
eraseSpriteChalliseFog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog42b anop
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
        beq eraseSpriteChalliseFog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog43b
eraseSpriteChalliseFog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog43b anop
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
        beq eraseSpriteChalliseFog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog44b
eraseSpriteChalliseFog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog44b anop
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
        beq eraseSpriteChalliseFog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog45b
eraseSpriteChalliseFog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog45b anop
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
        beq eraseSpriteChalliseFog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog46b
eraseSpriteChalliseFog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog46b anop
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
        beq eraseSpriteChalliseFog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog47b
eraseSpriteChalliseFog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog47b anop
        long m


eraseSpriteChalliseFogSkipRowErase110 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump111
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow111

eraseSpriteChalliseFogSkipRowEraseShortJump111 anop
        brl eraseSpriteChalliseFogSkipRowErase111
eraseSpriteChalliseFogSkipRowEraseDontSkipRow111 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog48b
eraseSpriteChalliseFog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog48b anop
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
        beq eraseSpriteChalliseFog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog49b
eraseSpriteChalliseFog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog49b anop
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
        beq eraseSpriteChalliseFog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog50b
eraseSpriteChalliseFog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog50b anop
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
        beq eraseSpriteChalliseFog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog51b
eraseSpriteChalliseFog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog51b anop
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
        beq eraseSpriteChalliseFog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog52b
eraseSpriteChalliseFog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog52b anop
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
        beq eraseSpriteChalliseFog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog53b
eraseSpriteChalliseFog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog53b anop
        long m


eraseSpriteChalliseFogSkipRowErase111 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump112
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow112

eraseSpriteChalliseFogSkipRowEraseShortJump112 anop
        brl eraseSpriteChalliseFogSkipRowErase112
eraseSpriteChalliseFogSkipRowEraseDontSkipRow112 anop
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
        beq eraseSpriteChalliseFog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog54b
eraseSpriteChalliseFog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog54b anop
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
        beq eraseSpriteChalliseFog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog55b
eraseSpriteChalliseFog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog55b anop
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
        beq eraseSpriteChalliseFog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog56b
eraseSpriteChalliseFog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog56b anop
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
        beq eraseSpriteChalliseFog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog57b
eraseSpriteChalliseFog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog57b anop
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
        beq eraseSpriteChalliseFog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog58b
eraseSpriteChalliseFog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog58b anop
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
        beq eraseSpriteChalliseFog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog59b
eraseSpriteChalliseFog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog59b anop
        long m


eraseSpriteChalliseFogSkipRowErase112 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump113
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow113

eraseSpriteChalliseFogSkipRowEraseShortJump113 anop
        brl eraseSpriteChalliseFogSkipRowErase113
eraseSpriteChalliseFogSkipRowEraseDontSkipRow113 anop
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
        beq eraseSpriteChalliseFog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog60b
eraseSpriteChalliseFog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog60b anop
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
        beq eraseSpriteChalliseFog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog61b
eraseSpriteChalliseFog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog61b anop
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
        beq eraseSpriteChalliseFog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog62b
eraseSpriteChalliseFog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog62b anop
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
        beq eraseSpriteChalliseFog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog63b
eraseSpriteChalliseFog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog63b anop
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
        beq eraseSpriteChalliseFog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog64b
eraseSpriteChalliseFog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog64b anop
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
        beq eraseSpriteChalliseFog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog65b
eraseSpriteChalliseFog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog65b anop
        long m


eraseSpriteChalliseFogSkipRowErase113 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump114
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow114

eraseSpriteChalliseFogSkipRowEraseShortJump114 anop
        brl eraseSpriteChalliseFogSkipRowErase114
eraseSpriteChalliseFogSkipRowEraseDontSkipRow114 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog66b
eraseSpriteChalliseFog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog66b anop
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
        beq eraseSpriteChalliseFog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog67b
eraseSpriteChalliseFog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog67b anop
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
        beq eraseSpriteChalliseFog68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog68b
eraseSpriteChalliseFog68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog68b anop
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
        beq eraseSpriteChalliseFog69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog69b
eraseSpriteChalliseFog69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog69b anop
        long m


eraseSpriteChalliseFogSkipRowErase114 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump115
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow115

eraseSpriteChalliseFogSkipRowEraseShortJump115 anop
        brl eraseSpriteChalliseFogSkipRowErase115
eraseSpriteChalliseFogSkipRowEraseDontSkipRow115 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog70b
eraseSpriteChalliseFog70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog70b anop
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
        beq eraseSpriteChalliseFog71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog71b
eraseSpriteChalliseFog71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog71b anop
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
        beq eraseSpriteChalliseFog72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog72b
eraseSpriteChalliseFog72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog72b anop
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
        beq eraseSpriteChalliseFog73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog73b
eraseSpriteChalliseFog73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog73b anop
        long m


eraseSpriteChalliseFogSkipRowErase115 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump116
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow116

eraseSpriteChalliseFogSkipRowEraseShortJump116 anop
        brl eraseSpriteChalliseFogSkipRowErase116
eraseSpriteChalliseFogSkipRowEraseDontSkipRow116 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog74b
eraseSpriteChalliseFog74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog74b anop
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
        beq eraseSpriteChalliseFog75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog75b
eraseSpriteChalliseFog75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog75b anop
        long m


eraseSpriteChalliseFogSkipRowErase116 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump117
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow117

eraseSpriteChalliseFogSkipRowEraseShortJump117 anop
        brl eraseSpriteChalliseFogSkipRowErase117
eraseSpriteChalliseFogSkipRowEraseDontSkipRow117 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChalliseFog76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog76b
eraseSpriteChalliseFog76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog76b anop
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
        beq eraseSpriteChalliseFog77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog77b
eraseSpriteChalliseFog77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog77b anop
        long m


eraseSpriteChalliseFogSkipRowErase117 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump118
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow118

eraseSpriteChalliseFogSkipRowEraseShortJump118 anop
        brl eraseSpriteChalliseFogSkipRowErase118
eraseSpriteChalliseFogSkipRowEraseDontSkipRow118 anop
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
        beq eraseSpriteChalliseFog78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog78b
eraseSpriteChalliseFog78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog78b anop
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
        beq eraseSpriteChalliseFog79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog79b
eraseSpriteChalliseFog79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog79b anop
        long m


eraseSpriteChalliseFogSkipRowErase118 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump119
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow119

eraseSpriteChalliseFogSkipRowEraseShortJump119 anop
        brl eraseSpriteChalliseFogSkipRowErase119
eraseSpriteChalliseFogSkipRowEraseDontSkipRow119 anop
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
        beq eraseSpriteChalliseFog80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog80b
eraseSpriteChalliseFog80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog80b anop
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
        beq eraseSpriteChalliseFog81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog81b
eraseSpriteChalliseFog81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog81b anop
        long m


eraseSpriteChalliseFogSkipRowErase119 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump120
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow120

eraseSpriteChalliseFogSkipRowEraseShortJump120 anop
        brl eraseSpriteChalliseFogSkipRowErase120
eraseSpriteChalliseFogSkipRowEraseDontSkipRow120 anop
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
        beq eraseSpriteChalliseFog82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog82b
eraseSpriteChalliseFog82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog82b anop
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
        beq eraseSpriteChalliseFog83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog83b
eraseSpriteChalliseFog83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog83b anop
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
        beq eraseSpriteChalliseFog84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog84b
eraseSpriteChalliseFog84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog84b anop
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
        beq eraseSpriteChalliseFog85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog85b
eraseSpriteChalliseFog85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog85b anop
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
        beq eraseSpriteChalliseFog86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog86b
eraseSpriteChalliseFog86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog86b anop
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
        beq eraseSpriteChalliseFog87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog87b
eraseSpriteChalliseFog87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog87b anop
        long m


eraseSpriteChalliseFogSkipRowErase120 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChalliseFogSkipRowEraseShortJump121
        bra eraseSpriteChalliseFogSkipRowEraseDontSkipRow121

eraseSpriteChalliseFogSkipRowEraseShortJump121 anop
        brl eraseSpriteChalliseFogSkipRowErase121
eraseSpriteChalliseFogSkipRowEraseDontSkipRow121 anop
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
        beq eraseSpriteChalliseFog88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog88b
eraseSpriteChalliseFog88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog88b anop
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
        beq eraseSpriteChalliseFog89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog89b
eraseSpriteChalliseFog89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog89b anop
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
        beq eraseSpriteChalliseFog90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog90b
eraseSpriteChalliseFog90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog90b anop
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
        beq eraseSpriteChalliseFog91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog91b
eraseSpriteChalliseFog91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog91b anop
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
        beq eraseSpriteChalliseFog92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog92b
eraseSpriteChalliseFog92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog92b anop
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
        beq eraseSpriteChalliseFog93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChalliseFog93b
eraseSpriteChalliseFog93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChalliseFog93b anop
        long m


eraseSpriteChalliseFogSkipRowErase121 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteMagnetFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump122
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow122

eraseSpriteMagnetFogSkipRowEraseShortJump122 anop
        brl eraseSpriteMagnetFogSkipRowErase122
eraseSpriteMagnetFogSkipRowEraseDontSkipRow122 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog94b
eraseSpriteMagnetFog94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog94b anop
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
        beq eraseSpriteMagnetFog95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog95b
eraseSpriteMagnetFog95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog95b anop
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
        beq eraseSpriteMagnetFog96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog96b
eraseSpriteMagnetFog96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog96b anop
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
        beq eraseSpriteMagnetFog97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog97b
eraseSpriteMagnetFog97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog97b anop
        long m


eraseSpriteMagnetFogSkipRowErase122 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump123
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow123

eraseSpriteMagnetFogSkipRowEraseShortJump123 anop
        brl eraseSpriteMagnetFogSkipRowErase123
eraseSpriteMagnetFogSkipRowEraseDontSkipRow123 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog98b
eraseSpriteMagnetFog98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog98b anop
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
        beq eraseSpriteMagnetFog99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog99b
eraseSpriteMagnetFog99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog99b anop
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
        beq eraseSpriteMagnetFog100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog100b
eraseSpriteMagnetFog100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog100b anop
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
        beq eraseSpriteMagnetFog101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog101b
eraseSpriteMagnetFog101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog101b anop
        long m


eraseSpriteMagnetFogSkipRowErase123 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump124
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow124

eraseSpriteMagnetFogSkipRowEraseShortJump124 anop
        brl eraseSpriteMagnetFogSkipRowErase124
eraseSpriteMagnetFogSkipRowEraseDontSkipRow124 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog102b
eraseSpriteMagnetFog102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog102b anop
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
        beq eraseSpriteMagnetFog103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog103b
eraseSpriteMagnetFog103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog103b anop
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
        beq eraseSpriteMagnetFog104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog104b
eraseSpriteMagnetFog104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog104b anop
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
        beq eraseSpriteMagnetFog105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog105b
eraseSpriteMagnetFog105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog105b anop
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
        beq eraseSpriteMagnetFog106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog106b
eraseSpriteMagnetFog106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog106b anop
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
        beq eraseSpriteMagnetFog107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog107b
eraseSpriteMagnetFog107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog107b anop
        long m


eraseSpriteMagnetFogSkipRowErase124 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump125
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow125

eraseSpriteMagnetFogSkipRowEraseShortJump125 anop
        brl eraseSpriteMagnetFogSkipRowErase125
eraseSpriteMagnetFogSkipRowEraseDontSkipRow125 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog108a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog108b
eraseSpriteMagnetFog108a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog108b anop
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
        beq eraseSpriteMagnetFog109a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog109b
eraseSpriteMagnetFog109a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog109b anop
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
        beq eraseSpriteMagnetFog110a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog110b
eraseSpriteMagnetFog110a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog110b anop
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
        beq eraseSpriteMagnetFog111a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog111b
eraseSpriteMagnetFog111a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog111b anop
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
        beq eraseSpriteMagnetFog112a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog112b
eraseSpriteMagnetFog112a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog112b anop
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
        beq eraseSpriteMagnetFog113a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog113b
eraseSpriteMagnetFog113a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog113b anop
        long m


eraseSpriteMagnetFogSkipRowErase125 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump126
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow126

eraseSpriteMagnetFogSkipRowEraseShortJump126 anop
        brl eraseSpriteMagnetFogSkipRowErase126
eraseSpriteMagnetFogSkipRowEraseDontSkipRow126 anop
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
        beq eraseSpriteMagnetFog114a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog114b
eraseSpriteMagnetFog114a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog114b anop
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
        beq eraseSpriteMagnetFog115a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog115b
eraseSpriteMagnetFog115a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog115b anop
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
        beq eraseSpriteMagnetFog116a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog116b
eraseSpriteMagnetFog116a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog116b anop
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
        beq eraseSpriteMagnetFog117a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog117b
eraseSpriteMagnetFog117a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog117b anop
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
        beq eraseSpriteMagnetFog118a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog118b
eraseSpriteMagnetFog118a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog118b anop
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
        beq eraseSpriteMagnetFog119a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog119b
eraseSpriteMagnetFog119a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog119b anop
        long m


eraseSpriteMagnetFogSkipRowErase126 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump127
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow127

eraseSpriteMagnetFogSkipRowEraseShortJump127 anop
        brl eraseSpriteMagnetFogSkipRowErase127
eraseSpriteMagnetFogSkipRowEraseDontSkipRow127 anop
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
        beq eraseSpriteMagnetFog120a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog120b
eraseSpriteMagnetFog120a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog120b anop
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
        beq eraseSpriteMagnetFog121a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog121b
eraseSpriteMagnetFog121a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog121b anop
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
        beq eraseSpriteMagnetFog122a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog122b
eraseSpriteMagnetFog122a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog122b anop
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
        beq eraseSpriteMagnetFog123a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog123b
eraseSpriteMagnetFog123a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog123b anop
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
        beq eraseSpriteMagnetFog124a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog124b
eraseSpriteMagnetFog124a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog124b anop
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
        beq eraseSpriteMagnetFog125a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog125b
eraseSpriteMagnetFog125a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog125b anop
        long m


eraseSpriteMagnetFogSkipRowErase127 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump128
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow128

eraseSpriteMagnetFogSkipRowEraseShortJump128 anop
        brl eraseSpriteMagnetFogSkipRowErase128
eraseSpriteMagnetFogSkipRowEraseDontSkipRow128 anop
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
        beq eraseSpriteMagnetFog126a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog126b
eraseSpriteMagnetFog126a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog126b anop
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
        beq eraseSpriteMagnetFog127a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog127b
eraseSpriteMagnetFog127a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog127b anop
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
        beq eraseSpriteMagnetFog128a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog128b
eraseSpriteMagnetFog128a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog128b anop
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
        beq eraseSpriteMagnetFog129a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog129b
eraseSpriteMagnetFog129a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog129b anop
        long m


eraseSpriteMagnetFogSkipRowErase128 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump129
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow129

eraseSpriteMagnetFogSkipRowEraseShortJump129 anop
        brl eraseSpriteMagnetFogSkipRowErase129
eraseSpriteMagnetFogSkipRowEraseDontSkipRow129 anop
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
        beq eraseSpriteMagnetFog130a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog130b
eraseSpriteMagnetFog130a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog130b anop
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
        beq eraseSpriteMagnetFog131a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog131b
eraseSpriteMagnetFog131a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog131b anop
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
        beq eraseSpriteMagnetFog132a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog132b
eraseSpriteMagnetFog132a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog132b anop
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
        beq eraseSpriteMagnetFog133a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog133b
eraseSpriteMagnetFog133a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog133b anop
        long m


eraseSpriteMagnetFogSkipRowErase129 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump130
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow130

eraseSpriteMagnetFogSkipRowEraseShortJump130 anop
        brl eraseSpriteMagnetFogSkipRowErase130
eraseSpriteMagnetFogSkipRowEraseDontSkipRow130 anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog134a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog134b
eraseSpriteMagnetFog134a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog134b anop
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
        beq eraseSpriteMagnetFog135a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog135b
eraseSpriteMagnetFog135a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog135b anop
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
        beq eraseSpriteMagnetFog136a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog136b
eraseSpriteMagnetFog136a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog136b anop
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
        beq eraseSpriteMagnetFog137a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog137b
eraseSpriteMagnetFog137a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog137b anop
        long m


eraseSpriteMagnetFogSkipRowErase130 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump131
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow131

eraseSpriteMagnetFogSkipRowEraseShortJump131 anop
        brl eraseSpriteMagnetFogSkipRowErase131
eraseSpriteMagnetFogSkipRowEraseDontSkipRow131 anop
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
        adc #0
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteMagnetFog138a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog138b
eraseSpriteMagnetFog138a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog138b anop
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
        beq eraseSpriteMagnetFog139a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog139b
eraseSpriteMagnetFog139a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog139b anop
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
        beq eraseSpriteMagnetFog140a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog140b
eraseSpriteMagnetFog140a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog140b anop
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
        beq eraseSpriteMagnetFog141a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog141b
eraseSpriteMagnetFog141a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog141b anop
        long m


eraseSpriteMagnetFogSkipRowErase131 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump132
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow132

eraseSpriteMagnetFogSkipRowEraseShortJump132 anop
        brl eraseSpriteMagnetFogSkipRowErase132
eraseSpriteMagnetFogSkipRowEraseDontSkipRow132 anop
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
        beq eraseSpriteMagnetFog142a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog142b
eraseSpriteMagnetFog142a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog142b anop
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
        beq eraseSpriteMagnetFog143a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog143b
eraseSpriteMagnetFog143a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog143b anop
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
        beq eraseSpriteMagnetFog144a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog144b
eraseSpriteMagnetFog144a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog144b anop
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
        beq eraseSpriteMagnetFog145a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog145b
eraseSpriteMagnetFog145a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog145b anop
        long m


eraseSpriteMagnetFogSkipRowErase132 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump133
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow133

eraseSpriteMagnetFogSkipRowEraseShortJump133 anop
        brl eraseSpriteMagnetFogSkipRowErase133
eraseSpriteMagnetFogSkipRowEraseDontSkipRow133 anop
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
        beq eraseSpriteMagnetFog146a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog146b
eraseSpriteMagnetFog146a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog146b anop
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
        beq eraseSpriteMagnetFog147a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog147b
eraseSpriteMagnetFog147a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog147b anop
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
        beq eraseSpriteMagnetFog148a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog148b
eraseSpriteMagnetFog148a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog148b anop
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
        beq eraseSpriteMagnetFog149a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog149b
eraseSpriteMagnetFog149a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog149b anop
        long m


eraseSpriteMagnetFogSkipRowErase133 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump134
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow134

eraseSpriteMagnetFogSkipRowEraseShortJump134 anop
        brl eraseSpriteMagnetFogSkipRowErase134
eraseSpriteMagnetFogSkipRowEraseDontSkipRow134 anop
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
        beq eraseSpriteMagnetFog150a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog150b
eraseSpriteMagnetFog150a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog150b anop
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
        beq eraseSpriteMagnetFog151a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog151b
eraseSpriteMagnetFog151a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog151b anop
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
        beq eraseSpriteMagnetFog152a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog152b
eraseSpriteMagnetFog152a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog152b anop
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
        beq eraseSpriteMagnetFog153a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog153b
eraseSpriteMagnetFog153a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog153b anop
        long m


eraseSpriteMagnetFogSkipRowErase134 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump135
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow135

eraseSpriteMagnetFogSkipRowEraseShortJump135 anop
        brl eraseSpriteMagnetFogSkipRowErase135
eraseSpriteMagnetFogSkipRowEraseDontSkipRow135 anop
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
        beq eraseSpriteMagnetFog154a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog154b
eraseSpriteMagnetFog154a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog154b anop
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
        beq eraseSpriteMagnetFog155a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog155b
eraseSpriteMagnetFog155a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog155b anop
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
        beq eraseSpriteMagnetFog156a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog156b
eraseSpriteMagnetFog156a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog156b anop
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
        beq eraseSpriteMagnetFog157a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog157b
eraseSpriteMagnetFog157a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog157b anop
        long m


eraseSpriteMagnetFogSkipRowErase135 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump136
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow136

eraseSpriteMagnetFogSkipRowEraseShortJump136 anop
        brl eraseSpriteMagnetFogSkipRowErase136
eraseSpriteMagnetFogSkipRowEraseDontSkipRow136 anop
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
        beq eraseSpriteMagnetFog158a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog158b
eraseSpriteMagnetFog158a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog158b anop
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
        beq eraseSpriteMagnetFog159a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog159b
eraseSpriteMagnetFog159a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog159b anop
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
        beq eraseSpriteMagnetFog160a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog160b
eraseSpriteMagnetFog160a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog160b anop
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
        beq eraseSpriteMagnetFog161a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog161b
eraseSpriteMagnetFog161a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog161b anop
        long m


eraseSpriteMagnetFogSkipRowErase136 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteMagnetFogSkipRowEraseShortJump137
        bra eraseSpriteMagnetFogSkipRowEraseDontSkipRow137

eraseSpriteMagnetFogSkipRowEraseShortJump137 anop
        brl eraseSpriteMagnetFogSkipRowErase137
eraseSpriteMagnetFogSkipRowEraseDontSkipRow137 anop
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
        beq eraseSpriteMagnetFog162a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog162b
eraseSpriteMagnetFog162a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog162b anop
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
        beq eraseSpriteMagnetFog163a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog163b
eraseSpriteMagnetFog163a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog163b anop
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
        beq eraseSpriteMagnetFog164a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog164b
eraseSpriteMagnetFog164a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog164b anop
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
        beq eraseSpriteMagnetFog165a
        sta >SCREEN_ADDR,x
        bra eraseSpriteMagnetFog165b
eraseSpriteMagnetFog165a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteMagnetFog165b anop
        long m


eraseSpriteMagnetFogSkipRowErase137 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        rtl


drawSpriteChalise entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChaliseSkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChaliseSkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChaliseSkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$ff

        sta 0
        sta 7
        long m

drawSpriteChaliseSkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw4

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$ff

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteChaliseSkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw5

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteChaliseSkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw6

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw7

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw8

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw9

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw10

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$ff

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteChaliseSkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw11

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$ff

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteChaliseSkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw12

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChaliseSkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw13

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChaliseSkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw14

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChaliseSkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw15

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff

        sta 3
        sta 4
        long m

drawSpriteChaliseSkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw16

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteChaliseSkipRowDraw17

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$ff

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteChaliseSkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteChalise entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump18
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow18

eraseSpriteChaliseSkipRowEraseShortJump18 anop
        brl eraseSpriteChaliseSkipRowErase18
eraseSpriteChaliseSkipRowEraseDontSkipRow18 anop
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


eraseSpriteChaliseSkipRowErase18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump19
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow19

eraseSpriteChaliseSkipRowEraseShortJump19 anop
        brl eraseSpriteChaliseSkipRowErase19
eraseSpriteChaliseSkipRowEraseDontSkipRow19 anop
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


eraseSpriteChaliseSkipRowErase19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump20
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow20

eraseSpriteChaliseSkipRowEraseShortJump20 anop
        brl eraseSpriteChaliseSkipRowErase20
eraseSpriteChaliseSkipRowEraseDontSkipRow20 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteChaliseSkipRowErase20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump21
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow21

eraseSpriteChaliseSkipRowEraseShortJump21 anop
        brl eraseSpriteChaliseSkipRowErase21
eraseSpriteChaliseSkipRowEraseDontSkipRow21 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteChaliseSkipRowErase21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump22
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow22

eraseSpriteChaliseSkipRowEraseShortJump22 anop
        brl eraseSpriteChaliseSkipRowErase22
eraseSpriteChaliseSkipRowEraseDontSkipRow22 anop
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


eraseSpriteChaliseSkipRowErase22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump23
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow23

eraseSpriteChaliseSkipRowEraseShortJump23 anop
        brl eraseSpriteChaliseSkipRowErase23
eraseSpriteChaliseSkipRowEraseDontSkipRow23 anop
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


eraseSpriteChaliseSkipRowErase23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump24
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow24

eraseSpriteChaliseSkipRowEraseShortJump24 anop
        brl eraseSpriteChaliseSkipRowErase24
eraseSpriteChaliseSkipRowEraseDontSkipRow24 anop
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


eraseSpriteChaliseSkipRowErase24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump25
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow25

eraseSpriteChaliseSkipRowEraseShortJump25 anop
        brl eraseSpriteChaliseSkipRowErase25
eraseSpriteChaliseSkipRowEraseDontSkipRow25 anop
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


eraseSpriteChaliseSkipRowErase25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump26
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow26

eraseSpriteChaliseSkipRowEraseShortJump26 anop
        brl eraseSpriteChaliseSkipRowErase26
eraseSpriteChaliseSkipRowEraseDontSkipRow26 anop
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


eraseSpriteChaliseSkipRowErase26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump27
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow27

eraseSpriteChaliseSkipRowEraseShortJump27 anop
        brl eraseSpriteChaliseSkipRowErase27
eraseSpriteChaliseSkipRowEraseDontSkipRow27 anop
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


eraseSpriteChaliseSkipRowErase27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump28
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow28

eraseSpriteChaliseSkipRowEraseShortJump28 anop
        brl eraseSpriteChaliseSkipRowErase28
eraseSpriteChaliseSkipRowEraseDontSkipRow28 anop
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


eraseSpriteChaliseSkipRowErase28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump29
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow29

eraseSpriteChaliseSkipRowEraseShortJump29 anop
        brl eraseSpriteChaliseSkipRowErase29
eraseSpriteChaliseSkipRowEraseDontSkipRow29 anop
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


eraseSpriteChaliseSkipRowErase29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump30
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow30

eraseSpriteChaliseSkipRowEraseShortJump30 anop
        brl eraseSpriteChaliseSkipRowErase30
eraseSpriteChaliseSkipRowEraseDontSkipRow30 anop
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


eraseSpriteChaliseSkipRowErase30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump31
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow31

eraseSpriteChaliseSkipRowEraseShortJump31 anop
        brl eraseSpriteChaliseSkipRowErase31
eraseSpriteChaliseSkipRowEraseDontSkipRow31 anop
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


eraseSpriteChaliseSkipRowErase31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump32
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow32

eraseSpriteChaliseSkipRowEraseShortJump32 anop
        brl eraseSpriteChaliseSkipRowErase32
eraseSpriteChaliseSkipRowEraseDontSkipRow32 anop
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


eraseSpriteChaliseSkipRowErase32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump33
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow33

eraseSpriteChaliseSkipRowEraseShortJump33 anop
        brl eraseSpriteChaliseSkipRowErase33
eraseSpriteChaliseSkipRowEraseDontSkipRow33 anop
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


eraseSpriteChaliseSkipRowErase33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump34
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow34

eraseSpriteChaliseSkipRowEraseShortJump34 anop
        brl eraseSpriteChaliseSkipRowErase34
eraseSpriteChaliseSkipRowEraseDontSkipRow34 anop
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


eraseSpriteChaliseSkipRowErase34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseSkipRowEraseShortJump35
        bra eraseSpriteChaliseSkipRowEraseDontSkipRow35

eraseSpriteChaliseSkipRowEraseShortJump35 anop
        brl eraseSpriteChaliseSkipRowErase35
eraseSpriteChaliseSkipRowEraseDontSkipRow35 anop
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


eraseSpriteChaliseSkipRowErase35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteChaliseFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump36
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow36

eraseSpriteChaliseFogSkipRowEraseShortJump36 anop
        brl eraseSpriteChaliseFogSkipRowErase36
eraseSpriteChaliseFogSkipRowEraseDontSkipRow36 anop
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
        beq eraseSpriteChaliseFog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog0b
eraseSpriteChaliseFog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog0b anop
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
        beq eraseSpriteChaliseFog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog1b
eraseSpriteChaliseFog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog1b anop
        long m


eraseSpriteChaliseFogSkipRowErase36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump37
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow37

eraseSpriteChaliseFogSkipRowEraseShortJump37 anop
        brl eraseSpriteChaliseFogSkipRowErase37
eraseSpriteChaliseFogSkipRowEraseDontSkipRow37 anop
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
        beq eraseSpriteChaliseFog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog2b
eraseSpriteChaliseFog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog2b anop
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
        beq eraseSpriteChaliseFog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog3b
eraseSpriteChaliseFog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog3b anop
        long m


eraseSpriteChaliseFogSkipRowErase37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump38
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow38

eraseSpriteChaliseFogSkipRowEraseShortJump38 anop
        brl eraseSpriteChaliseFogSkipRowErase38
eraseSpriteChaliseFogSkipRowEraseDontSkipRow38 anop
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
        beq eraseSpriteChaliseFog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog4b
eraseSpriteChaliseFog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog4b anop
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
        beq eraseSpriteChaliseFog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog5b
eraseSpriteChaliseFog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog5b anop
        long m


eraseSpriteChaliseFogSkipRowErase38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump39
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow39

eraseSpriteChaliseFogSkipRowEraseShortJump39 anop
        brl eraseSpriteChaliseFogSkipRowErase39
eraseSpriteChaliseFogSkipRowEraseDontSkipRow39 anop
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
        beq eraseSpriteChaliseFog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog6b
eraseSpriteChaliseFog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog6b anop
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
        beq eraseSpriteChaliseFog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog7b
eraseSpriteChaliseFog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog7b anop
        long m


eraseSpriteChaliseFogSkipRowErase39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump40
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow40

eraseSpriteChaliseFogSkipRowEraseShortJump40 anop
        brl eraseSpriteChaliseFogSkipRowErase40
eraseSpriteChaliseFogSkipRowEraseDontSkipRow40 anop
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
        beq eraseSpriteChaliseFog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog8b
eraseSpriteChaliseFog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog8b anop
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
        beq eraseSpriteChaliseFog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog9b
eraseSpriteChaliseFog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog9b anop
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
        beq eraseSpriteChaliseFog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog10b
eraseSpriteChaliseFog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog10b anop
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
        beq eraseSpriteChaliseFog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog11b
eraseSpriteChaliseFog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog11b anop
        long m


eraseSpriteChaliseFogSkipRowErase40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump41
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow41

eraseSpriteChaliseFogSkipRowEraseShortJump41 anop
        brl eraseSpriteChaliseFogSkipRowErase41
eraseSpriteChaliseFogSkipRowEraseDontSkipRow41 anop
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
        beq eraseSpriteChaliseFog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog12b
eraseSpriteChaliseFog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog12b anop
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
        beq eraseSpriteChaliseFog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog13b
eraseSpriteChaliseFog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog13b anop
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
        beq eraseSpriteChaliseFog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog14b
eraseSpriteChaliseFog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog14b anop
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
        beq eraseSpriteChaliseFog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog15b
eraseSpriteChaliseFog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog15b anop
        long m


eraseSpriteChaliseFogSkipRowErase41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump42
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow42

eraseSpriteChaliseFogSkipRowEraseShortJump42 anop
        brl eraseSpriteChaliseFogSkipRowErase42
eraseSpriteChaliseFogSkipRowEraseDontSkipRow42 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog16b
eraseSpriteChaliseFog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog16b anop
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
        beq eraseSpriteChaliseFog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog17b
eraseSpriteChaliseFog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog17b anop
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
        beq eraseSpriteChaliseFog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog18b
eraseSpriteChaliseFog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog18b anop
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
        beq eraseSpriteChaliseFog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog19b
eraseSpriteChaliseFog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog19b anop
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
        beq eraseSpriteChaliseFog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog20b
eraseSpriteChaliseFog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog20b anop
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
        beq eraseSpriteChaliseFog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog21b
eraseSpriteChaliseFog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog21b anop
        long m


eraseSpriteChaliseFogSkipRowErase42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump43
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow43

eraseSpriteChaliseFogSkipRowEraseShortJump43 anop
        brl eraseSpriteChaliseFogSkipRowErase43
eraseSpriteChaliseFogSkipRowEraseDontSkipRow43 anop
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
        adc #1
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog22b
eraseSpriteChaliseFog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog22b anop
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
        beq eraseSpriteChaliseFog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog23b
eraseSpriteChaliseFog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog23b anop
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
        beq eraseSpriteChaliseFog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog24b
eraseSpriteChaliseFog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog24b anop
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
        beq eraseSpriteChaliseFog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog25b
eraseSpriteChaliseFog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog25b anop
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
        beq eraseSpriteChaliseFog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog26b
eraseSpriteChaliseFog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog26b anop
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
        beq eraseSpriteChaliseFog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog27b
eraseSpriteChaliseFog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog27b anop
        long m


eraseSpriteChaliseFogSkipRowErase43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump44
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow44

eraseSpriteChaliseFogSkipRowEraseShortJump44 anop
        brl eraseSpriteChaliseFogSkipRowErase44
eraseSpriteChaliseFogSkipRowEraseDontSkipRow44 anop
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
        beq eraseSpriteChaliseFog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog28b
eraseSpriteChaliseFog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog28b anop
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
        beq eraseSpriteChaliseFog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog29b
eraseSpriteChaliseFog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog29b anop
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
        beq eraseSpriteChaliseFog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog30b
eraseSpriteChaliseFog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog30b anop
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
        beq eraseSpriteChaliseFog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog31b
eraseSpriteChaliseFog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog31b anop
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
        beq eraseSpriteChaliseFog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog32b
eraseSpriteChaliseFog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog32b anop
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
        beq eraseSpriteChaliseFog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog33b
eraseSpriteChaliseFog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog33b anop
        long m


eraseSpriteChaliseFogSkipRowErase44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump45
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow45

eraseSpriteChaliseFogSkipRowEraseShortJump45 anop
        brl eraseSpriteChaliseFogSkipRowErase45
eraseSpriteChaliseFogSkipRowEraseDontSkipRow45 anop
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
        beq eraseSpriteChaliseFog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog34b
eraseSpriteChaliseFog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog34b anop
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
        beq eraseSpriteChaliseFog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog35b
eraseSpriteChaliseFog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog35b anop
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
        beq eraseSpriteChaliseFog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog36b
eraseSpriteChaliseFog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog36b anop
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
        beq eraseSpriteChaliseFog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog37b
eraseSpriteChaliseFog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog37b anop
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
        beq eraseSpriteChaliseFog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog38b
eraseSpriteChaliseFog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog38b anop
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
        beq eraseSpriteChaliseFog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog39b
eraseSpriteChaliseFog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog39b anop
        long m


eraseSpriteChaliseFogSkipRowErase45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump46
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow46

eraseSpriteChaliseFogSkipRowEraseShortJump46 anop
        brl eraseSpriteChaliseFogSkipRowErase46
eraseSpriteChaliseFogSkipRowEraseDontSkipRow46 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog40b
eraseSpriteChaliseFog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog40b anop
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
        beq eraseSpriteChaliseFog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog41b
eraseSpriteChaliseFog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog41b anop
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
        beq eraseSpriteChaliseFog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog42b
eraseSpriteChaliseFog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog42b anop
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
        beq eraseSpriteChaliseFog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog43b
eraseSpriteChaliseFog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog43b anop
        long m


eraseSpriteChaliseFogSkipRowErase46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump47
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow47

eraseSpriteChaliseFogSkipRowEraseShortJump47 anop
        brl eraseSpriteChaliseFogSkipRowErase47
eraseSpriteChaliseFogSkipRowEraseDontSkipRow47 anop
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
        adc #2
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog44b
eraseSpriteChaliseFog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog44b anop
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
        beq eraseSpriteChaliseFog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog45b
eraseSpriteChaliseFog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog45b anop
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
        beq eraseSpriteChaliseFog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog46b
eraseSpriteChaliseFog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog46b anop
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
        beq eraseSpriteChaliseFog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog47b
eraseSpriteChaliseFog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog47b anop
        long m


eraseSpriteChaliseFogSkipRowErase47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump48
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow48

eraseSpriteChaliseFogSkipRowEraseShortJump48 anop
        brl eraseSpriteChaliseFogSkipRowErase48
eraseSpriteChaliseFogSkipRowEraseDontSkipRow48 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog48b
eraseSpriteChaliseFog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog48b anop
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
        beq eraseSpriteChaliseFog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog49b
eraseSpriteChaliseFog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog49b anop
        long m


eraseSpriteChaliseFogSkipRowErase48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump49
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow49

eraseSpriteChaliseFogSkipRowEraseShortJump49 anop
        brl eraseSpriteChaliseFogSkipRowErase49
eraseSpriteChaliseFogSkipRowEraseDontSkipRow49 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteChaliseFog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog50b
eraseSpriteChaliseFog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog50b anop
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
        beq eraseSpriteChaliseFog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog51b
eraseSpriteChaliseFog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog51b anop
        long m


eraseSpriteChaliseFogSkipRowErase49 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump50
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow50

eraseSpriteChaliseFogSkipRowEraseShortJump50 anop
        brl eraseSpriteChaliseFogSkipRowErase50
eraseSpriteChaliseFogSkipRowEraseDontSkipRow50 anop
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
        beq eraseSpriteChaliseFog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog52b
eraseSpriteChaliseFog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog52b anop
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
        beq eraseSpriteChaliseFog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog53b
eraseSpriteChaliseFog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog53b anop
        long m


eraseSpriteChaliseFogSkipRowErase50 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump51
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow51

eraseSpriteChaliseFogSkipRowEraseShortJump51 anop
        brl eraseSpriteChaliseFogSkipRowErase51
eraseSpriteChaliseFogSkipRowEraseDontSkipRow51 anop
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
        beq eraseSpriteChaliseFog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog54b
eraseSpriteChaliseFog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog54b anop
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
        beq eraseSpriteChaliseFog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog55b
eraseSpriteChaliseFog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog55b anop
        long m


eraseSpriteChaliseFogSkipRowErase51 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump52
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow52

eraseSpriteChaliseFogSkipRowEraseShortJump52 anop
        brl eraseSpriteChaliseFogSkipRowErase52
eraseSpriteChaliseFogSkipRowEraseDontSkipRow52 anop
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
        beq eraseSpriteChaliseFog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog56b
eraseSpriteChaliseFog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog56b anop
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
        beq eraseSpriteChaliseFog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog57b
eraseSpriteChaliseFog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog57b anop
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
        beq eraseSpriteChaliseFog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog58b
eraseSpriteChaliseFog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog58b anop
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
        beq eraseSpriteChaliseFog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog59b
eraseSpriteChaliseFog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog59b anop
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
        beq eraseSpriteChaliseFog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog60b
eraseSpriteChaliseFog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog60b anop
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
        beq eraseSpriteChaliseFog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog61b
eraseSpriteChaliseFog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog61b anop
        long m


eraseSpriteChaliseFogSkipRowErase52 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteChaliseFogSkipRowEraseShortJump53
        bra eraseSpriteChaliseFogSkipRowEraseDontSkipRow53

eraseSpriteChaliseFogSkipRowEraseShortJump53 anop
        brl eraseSpriteChaliseFogSkipRowErase53
eraseSpriteChaliseFogSkipRowEraseDontSkipRow53 anop
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
        beq eraseSpriteChaliseFog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog62b
eraseSpriteChaliseFog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog62b anop
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
        beq eraseSpriteChaliseFog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog63b
eraseSpriteChaliseFog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog63b anop
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
        beq eraseSpriteChaliseFog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog64b
eraseSpriteChaliseFog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog64b anop
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
        beq eraseSpriteChaliseFog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog65b
eraseSpriteChaliseFog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog65b anop
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
        beq eraseSpriteChaliseFog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog66b
eraseSpriteChaliseFog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog66b anop
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
        beq eraseSpriteChaliseFog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteChaliseFog67b
eraseSpriteChaliseFog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteChaliseFog67b anop
        long m


eraseSpriteChaliseFogSkipRowErase53 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl


        end
