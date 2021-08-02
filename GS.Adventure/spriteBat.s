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

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat1SkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat1SkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat1SkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat1SkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw4

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

drawSpriteBat1SkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw5

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

drawSpriteBat1SkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw6

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

drawSpriteBat1SkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw7

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

drawSpriteBat1SkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw8

        lda >drawAddress
        clc
        adc #1280
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

drawSpriteBat1SkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw9

        lda >drawAddress
        clc
        adc #1440
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

drawSpriteBat1SkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw10

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

drawSpriteBat1SkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw11

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

drawSpriteBat1SkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw12

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

drawSpriteBat1SkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat1SkipRowDraw13

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

drawSpriteBat1SkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteBat2 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw14

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$00

        sta 7
        long m

drawSpriteBat2SkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw15

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$00

        sta 7
        long m

drawSpriteBat2SkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw16

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$00

        sta 0
        long m

drawSpriteBat2SkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw17

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$00

        sta 0
        long m

drawSpriteBat2SkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw18

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$00

        sta 7
        long m

drawSpriteBat2SkipRowDraw18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw19

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$00

        sta 7
        long m

drawSpriteBat2SkipRowDraw19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw20

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$00

        sta 0
        long m

drawSpriteBat2SkipRowDraw20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw21

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$00

        sta 0
        long m

drawSpriteBat2SkipRowDraw21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw22

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$00

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteBat2SkipRowDraw22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw23

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$00

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteBat2SkipRowDraw23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw24

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

drawSpriteBat2SkipRowDraw24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw25

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$00

        sta 1
        sta 3
        sta 4
        sta 6
        long m

drawSpriteBat2SkipRowDraw25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw26

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

drawSpriteBat2SkipRowDraw26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw27

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$00

        sta 1
        sta 2
        sta 5
        sta 6
        long m

drawSpriteBat2SkipRowDraw27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw28

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

drawSpriteBat2SkipRowDraw28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw29

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

drawSpriteBat2SkipRowDraw29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw30

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw31

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw32

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw33

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw34

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBat2SkipRowDraw35

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda #$00

        sta 0
        sta 7
        long m

drawSpriteBat2SkipRowDraw35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteBat entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump36
        bra eraseSpriteBat1SkipRowEraseDontSkipRow36

eraseSpriteBat1SkipRowEraseShortJump36 anop
        brl eraseSpriteBat1SkipRowErase36
eraseSpriteBat1SkipRowEraseDontSkipRow36 anop
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


eraseSpriteBat1SkipRowErase36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump37
        bra eraseSpriteBat1SkipRowEraseDontSkipRow37

eraseSpriteBat1SkipRowEraseShortJump37 anop
        brl eraseSpriteBat1SkipRowErase37
eraseSpriteBat1SkipRowEraseDontSkipRow37 anop
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


eraseSpriteBat1SkipRowErase37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump38
        bra eraseSpriteBat1SkipRowEraseDontSkipRow38

eraseSpriteBat1SkipRowEraseShortJump38 anop
        brl eraseSpriteBat1SkipRowErase38
eraseSpriteBat1SkipRowEraseDontSkipRow38 anop
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


eraseSpriteBat1SkipRowErase38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump39
        bra eraseSpriteBat1SkipRowEraseDontSkipRow39

eraseSpriteBat1SkipRowEraseShortJump39 anop
        brl eraseSpriteBat1SkipRowErase39
eraseSpriteBat1SkipRowEraseDontSkipRow39 anop
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


eraseSpriteBat1SkipRowErase39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump40
        bra eraseSpriteBat1SkipRowEraseDontSkipRow40

eraseSpriteBat1SkipRowEraseShortJump40 anop
        brl eraseSpriteBat1SkipRowErase40
eraseSpriteBat1SkipRowEraseDontSkipRow40 anop
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


eraseSpriteBat1SkipRowErase40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump41
        bra eraseSpriteBat1SkipRowEraseDontSkipRow41

eraseSpriteBat1SkipRowEraseShortJump41 anop
        brl eraseSpriteBat1SkipRowErase41
eraseSpriteBat1SkipRowEraseDontSkipRow41 anop
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


eraseSpriteBat1SkipRowErase41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump42
        bra eraseSpriteBat1SkipRowEraseDontSkipRow42

eraseSpriteBat1SkipRowEraseShortJump42 anop
        brl eraseSpriteBat1SkipRowErase42
eraseSpriteBat1SkipRowEraseDontSkipRow42 anop
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


eraseSpriteBat1SkipRowErase42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump43
        bra eraseSpriteBat1SkipRowEraseDontSkipRow43

eraseSpriteBat1SkipRowEraseShortJump43 anop
        brl eraseSpriteBat1SkipRowErase43
eraseSpriteBat1SkipRowEraseDontSkipRow43 anop
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


eraseSpriteBat1SkipRowErase43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump44
        bra eraseSpriteBat1SkipRowEraseDontSkipRow44

eraseSpriteBat1SkipRowEraseShortJump44 anop
        brl eraseSpriteBat1SkipRowErase44
eraseSpriteBat1SkipRowEraseDontSkipRow44 anop
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


eraseSpriteBat1SkipRowErase44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump45
        bra eraseSpriteBat1SkipRowEraseDontSkipRow45

eraseSpriteBat1SkipRowEraseShortJump45 anop
        brl eraseSpriteBat1SkipRowErase45
eraseSpriteBat1SkipRowEraseDontSkipRow45 anop
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


eraseSpriteBat1SkipRowErase45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump46
        bra eraseSpriteBat1SkipRowEraseDontSkipRow46

eraseSpriteBat1SkipRowEraseShortJump46 anop
        brl eraseSpriteBat1SkipRowErase46
eraseSpriteBat1SkipRowEraseDontSkipRow46 anop
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


eraseSpriteBat1SkipRowErase46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump47
        bra eraseSpriteBat1SkipRowEraseDontSkipRow47

eraseSpriteBat1SkipRowEraseShortJump47 anop
        brl eraseSpriteBat1SkipRowErase47
eraseSpriteBat1SkipRowEraseDontSkipRow47 anop
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


eraseSpriteBat1SkipRowErase47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump48
        bra eraseSpriteBat1SkipRowEraseDontSkipRow48

eraseSpriteBat1SkipRowEraseShortJump48 anop
        brl eraseSpriteBat1SkipRowErase48
eraseSpriteBat1SkipRowEraseDontSkipRow48 anop
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


eraseSpriteBat1SkipRowErase48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1SkipRowEraseShortJump49
        bra eraseSpriteBat1SkipRowEraseDontSkipRow49

eraseSpriteBat1SkipRowEraseShortJump49 anop
        brl eraseSpriteBat1SkipRowErase49
eraseSpriteBat1SkipRowEraseDontSkipRow49 anop
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


eraseSpriteBat1SkipRowErase49 anop

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump0
        bra eraseSpriteBat2SkipRowEraseDontSkipRow0

eraseSpriteBat2SkipRowEraseShortJump0 anop
        brl eraseSpriteBat2SkipRowErase0
eraseSpriteBat2SkipRowEraseDontSkipRow0 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump1
        bra eraseSpriteBat2SkipRowEraseDontSkipRow1

eraseSpriteBat2SkipRowEraseShortJump1 anop
        brl eraseSpriteBat2SkipRowErase1
eraseSpriteBat2SkipRowEraseDontSkipRow1 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump2
        bra eraseSpriteBat2SkipRowEraseDontSkipRow2

eraseSpriteBat2SkipRowEraseShortJump2 anop
        brl eraseSpriteBat2SkipRowErase2
eraseSpriteBat2SkipRowEraseDontSkipRow2 anop
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


eraseSpriteBat2SkipRowErase2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump3
        bra eraseSpriteBat2SkipRowEraseDontSkipRow3

eraseSpriteBat2SkipRowEraseShortJump3 anop
        brl eraseSpriteBat2SkipRowErase3
eraseSpriteBat2SkipRowEraseDontSkipRow3 anop
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


eraseSpriteBat2SkipRowErase3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump4
        bra eraseSpriteBat2SkipRowEraseDontSkipRow4

eraseSpriteBat2SkipRowEraseShortJump4 anop
        brl eraseSpriteBat2SkipRowErase4
eraseSpriteBat2SkipRowEraseDontSkipRow4 anop
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


eraseSpriteBat2SkipRowErase4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump5
        bra eraseSpriteBat2SkipRowEraseDontSkipRow5

eraseSpriteBat2SkipRowEraseShortJump5 anop
        brl eraseSpriteBat2SkipRowErase5
eraseSpriteBat2SkipRowEraseDontSkipRow5 anop
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


eraseSpriteBat2SkipRowErase5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump6
        bra eraseSpriteBat2SkipRowEraseDontSkipRow6

eraseSpriteBat2SkipRowEraseShortJump6 anop
        brl eraseSpriteBat2SkipRowErase6
eraseSpriteBat2SkipRowEraseDontSkipRow6 anop
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


eraseSpriteBat2SkipRowErase6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump7
        bra eraseSpriteBat2SkipRowEraseDontSkipRow7

eraseSpriteBat2SkipRowEraseShortJump7 anop
        brl eraseSpriteBat2SkipRowErase7
eraseSpriteBat2SkipRowEraseDontSkipRow7 anop
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


eraseSpriteBat2SkipRowErase7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump8
        bra eraseSpriteBat2SkipRowEraseDontSkipRow8

eraseSpriteBat2SkipRowEraseShortJump8 anop
        brl eraseSpriteBat2SkipRowErase8
eraseSpriteBat2SkipRowEraseDontSkipRow8 anop
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


eraseSpriteBat2SkipRowErase8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump9
        bra eraseSpriteBat2SkipRowEraseDontSkipRow9

eraseSpriteBat2SkipRowEraseShortJump9 anop
        brl eraseSpriteBat2SkipRowErase9
eraseSpriteBat2SkipRowEraseDontSkipRow9 anop
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


eraseSpriteBat2SkipRowErase9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump10
        bra eraseSpriteBat2SkipRowEraseDontSkipRow10

eraseSpriteBat2SkipRowEraseShortJump10 anop
        brl eraseSpriteBat2SkipRowErase10
eraseSpriteBat2SkipRowEraseDontSkipRow10 anop
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


eraseSpriteBat2SkipRowErase10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump11
        bra eraseSpriteBat2SkipRowEraseDontSkipRow11

eraseSpriteBat2SkipRowEraseShortJump11 anop
        brl eraseSpriteBat2SkipRowErase11
eraseSpriteBat2SkipRowEraseDontSkipRow11 anop
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


eraseSpriteBat2SkipRowErase11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump12
        bra eraseSpriteBat2SkipRowEraseDontSkipRow12

eraseSpriteBat2SkipRowEraseShortJump12 anop
        brl eraseSpriteBat2SkipRowErase12
eraseSpriteBat2SkipRowEraseDontSkipRow12 anop
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


eraseSpriteBat2SkipRowErase12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump13
        bra eraseSpriteBat2SkipRowEraseDontSkipRow13

eraseSpriteBat2SkipRowEraseShortJump13 anop
        brl eraseSpriteBat2SkipRowErase13
eraseSpriteBat2SkipRowEraseDontSkipRow13 anop
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


eraseSpriteBat2SkipRowErase13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump14
        bra eraseSpriteBat2SkipRowEraseDontSkipRow14

eraseSpriteBat2SkipRowEraseShortJump14 anop
        brl eraseSpriteBat2SkipRowErase14
eraseSpriteBat2SkipRowEraseDontSkipRow14 anop
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


eraseSpriteBat2SkipRowErase14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump15
        bra eraseSpriteBat2SkipRowEraseDontSkipRow15

eraseSpriteBat2SkipRowEraseShortJump15 anop
        brl eraseSpriteBat2SkipRowErase15
eraseSpriteBat2SkipRowEraseDontSkipRow15 anop
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


eraseSpriteBat2SkipRowErase15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump16
        bra eraseSpriteBat2SkipRowEraseDontSkipRow16

eraseSpriteBat2SkipRowEraseShortJump16 anop
        brl eraseSpriteBat2SkipRowErase16
eraseSpriteBat2SkipRowEraseDontSkipRow16 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump17
        bra eraseSpriteBat2SkipRowEraseDontSkipRow17

eraseSpriteBat2SkipRowEraseShortJump17 anop
        brl eraseSpriteBat2SkipRowErase17
eraseSpriteBat2SkipRowEraseDontSkipRow17 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump18
        bra eraseSpriteBat2SkipRowEraseDontSkipRow18

eraseSpriteBat2SkipRowEraseShortJump18 anop
        brl eraseSpriteBat2SkipRowErase18
eraseSpriteBat2SkipRowEraseDontSkipRow18 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump19
        bra eraseSpriteBat2SkipRowEraseDontSkipRow19

eraseSpriteBat2SkipRowEraseShortJump19 anop
        brl eraseSpriteBat2SkipRowErase19
eraseSpriteBat2SkipRowEraseDontSkipRow19 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump20
        bra eraseSpriteBat2SkipRowEraseDontSkipRow20

eraseSpriteBat2SkipRowEraseShortJump20 anop
        brl eraseSpriteBat2SkipRowErase20
eraseSpriteBat2SkipRowEraseDontSkipRow20 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2SkipRowEraseShortJump21
        bra eraseSpriteBat2SkipRowEraseDontSkipRow21

eraseSpriteBat2SkipRowEraseShortJump21 anop
        brl eraseSpriteBat2SkipRowErase21
eraseSpriteBat2SkipRowEraseDontSkipRow21 anop
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
        adc #7
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBat2SkipRowErase21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteBatFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump72
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow72

eraseSpriteBat1FogSkipRowEraseShortJump72 anop
        brl eraseSpriteBat1FogSkipRowErase72
eraseSpriteBat1FogSkipRowEraseDontSkipRow72 anop
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


eraseSpriteBat1FogSkipRowErase72 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump73
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow73

eraseSpriteBat1FogSkipRowEraseShortJump73 anop
        brl eraseSpriteBat1FogSkipRowErase73
eraseSpriteBat1FogSkipRowEraseDontSkipRow73 anop
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


eraseSpriteBat1FogSkipRowErase73 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump74
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow74

eraseSpriteBat1FogSkipRowEraseShortJump74 anop
        brl eraseSpriteBat1FogSkipRowErase74
eraseSpriteBat1FogSkipRowEraseDontSkipRow74 anop
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
        adc #7
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


eraseSpriteBat1FogSkipRowErase74 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump75
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow75

eraseSpriteBat1FogSkipRowEraseShortJump75 anop
        brl eraseSpriteBat1FogSkipRowErase75
eraseSpriteBat1FogSkipRowEraseDontSkipRow75 anop
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


eraseSpriteBat1FogSkipRowErase75 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump76
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow76

eraseSpriteBat1FogSkipRowEraseShortJump76 anop
        brl eraseSpriteBat1FogSkipRowErase76
eraseSpriteBat1FogSkipRowEraseDontSkipRow76 anop
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


eraseSpriteBat1FogSkipRowErase76 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump77
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow77

eraseSpriteBat1FogSkipRowEraseShortJump77 anop
        brl eraseSpriteBat1FogSkipRowErase77
eraseSpriteBat1FogSkipRowEraseDontSkipRow77 anop
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


eraseSpriteBat1FogSkipRowErase77 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump78
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow78

eraseSpriteBat1FogSkipRowEraseShortJump78 anop
        brl eraseSpriteBat1FogSkipRowErase78
eraseSpriteBat1FogSkipRowEraseDontSkipRow78 anop
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


eraseSpriteBat1FogSkipRowErase78 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump79
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow79

eraseSpriteBat1FogSkipRowEraseShortJump79 anop
        brl eraseSpriteBat1FogSkipRowErase79
eraseSpriteBat1FogSkipRowEraseDontSkipRow79 anop
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
        adc #6
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
        adc #7
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


eraseSpriteBat1FogSkipRowErase79 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump80
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow80

eraseSpriteBat1FogSkipRowEraseShortJump80 anop
        brl eraseSpriteBat1FogSkipRowErase80
eraseSpriteBat1FogSkipRowEraseDontSkipRow80 anop
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
        adc #1
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
        adc #2
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
        adc #3
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
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
        adc #5
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
        adc #6
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
        adc #7
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


eraseSpriteBat1FogSkipRowErase80 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump81
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow81

eraseSpriteBat1FogSkipRowEraseShortJump81 anop
        brl eraseSpriteBat1FogSkipRowErase81
eraseSpriteBat1FogSkipRowEraseDontSkipRow81 anop
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
        adc #1
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
        adc #2
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
        adc #3
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #4
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
        adc #5
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
        adc #6
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
        adc #7
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


eraseSpriteBat1FogSkipRowErase81 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump82
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow82

eraseSpriteBat1FogSkipRowEraseShortJump82 anop
        brl eraseSpriteBat1FogSkipRowErase82
eraseSpriteBat1FogSkipRowEraseDontSkipRow82 anop
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


eraseSpriteBat1FogSkipRowErase82 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump83
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow83

eraseSpriteBat1FogSkipRowEraseShortJump83 anop
        brl eraseSpriteBat1FogSkipRowErase83
eraseSpriteBat1FogSkipRowEraseDontSkipRow83 anop
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
        adc #3
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
        adc #4
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


eraseSpriteBat1FogSkipRowErase83 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump84
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow84

eraseSpriteBat1FogSkipRowEraseShortJump84 anop
        brl eraseSpriteBat1FogSkipRowErase84
eraseSpriteBat1FogSkipRowEraseDontSkipRow84 anop
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


eraseSpriteBat1FogSkipRowErase84 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat1FogSkipRowEraseShortJump85
        bra eraseSpriteBat1FogSkipRowEraseDontSkipRow85

eraseSpriteBat1FogSkipRowEraseShortJump85 anop
        brl eraseSpriteBat1FogSkipRowErase85
eraseSpriteBat1FogSkipRowEraseDontSkipRow85 anop
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
        beq eraseSpriteBat1Fog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog52b
eraseSpriteBat1Fog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog52b anop
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
        beq eraseSpriteBat1Fog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog53b
eraseSpriteBat1Fog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog53b anop
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
        beq eraseSpriteBat1Fog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog54b
eraseSpriteBat1Fog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog54b anop
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
        beq eraseSpriteBat1Fog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat1Fog55b
eraseSpriteBat1Fog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat1Fog55b anop
        long m


eraseSpriteBat1FogSkipRowErase85 anop

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump86
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow86

eraseSpriteBat2FogSkipRowEraseShortJump86 anop
        brl eraseSpriteBat2FogSkipRowErase86
eraseSpriteBat2FogSkipRowEraseDontSkipRow86 anop
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
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat2Fog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog56b
eraseSpriteBat2Fog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog56b anop
        long m


eraseSpriteBat2FogSkipRowErase86 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump87
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow87

eraseSpriteBat2FogSkipRowEraseShortJump87 anop
        brl eraseSpriteBat2FogSkipRowErase87
eraseSpriteBat2FogSkipRowEraseDontSkipRow87 anop
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
        adc #7
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat2Fog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog57b
eraseSpriteBat2Fog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog57b anop
        long m


eraseSpriteBat2FogSkipRowErase87 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump88
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow88

eraseSpriteBat2FogSkipRowEraseShortJump88 anop
        brl eraseSpriteBat2FogSkipRowErase88
eraseSpriteBat2FogSkipRowEraseDontSkipRow88 anop
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
        beq eraseSpriteBat2Fog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog58b
eraseSpriteBat2Fog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog58b anop
        long m


eraseSpriteBat2FogSkipRowErase88 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump89
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow89

eraseSpriteBat2FogSkipRowEraseShortJump89 anop
        brl eraseSpriteBat2FogSkipRowErase89
eraseSpriteBat2FogSkipRowEraseDontSkipRow89 anop
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
        beq eraseSpriteBat2Fog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog59b
eraseSpriteBat2Fog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog59b anop
        long m


eraseSpriteBat2FogSkipRowErase89 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump90
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow90

eraseSpriteBat2FogSkipRowEraseShortJump90 anop
        brl eraseSpriteBat2FogSkipRowErase90
eraseSpriteBat2FogSkipRowEraseDontSkipRow90 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat2Fog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog60b
eraseSpriteBat2Fog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog60b anop
        long m


eraseSpriteBat2FogSkipRowErase90 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump91
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow91

eraseSpriteBat2FogSkipRowEraseShortJump91 anop
        brl eraseSpriteBat2FogSkipRowErase91
eraseSpriteBat2FogSkipRowEraseDontSkipRow91 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBat2Fog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog61b
eraseSpriteBat2Fog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog61b anop
        long m


eraseSpriteBat2FogSkipRowErase91 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump92
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow92

eraseSpriteBat2FogSkipRowEraseShortJump92 anop
        brl eraseSpriteBat2FogSkipRowErase92
eraseSpriteBat2FogSkipRowEraseDontSkipRow92 anop
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
        beq eraseSpriteBat2Fog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog62b
eraseSpriteBat2Fog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog62b anop
        long m


eraseSpriteBat2FogSkipRowErase92 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump93
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow93

eraseSpriteBat2FogSkipRowEraseShortJump93 anop
        brl eraseSpriteBat2FogSkipRowErase93
eraseSpriteBat2FogSkipRowEraseDontSkipRow93 anop
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
        beq eraseSpriteBat2Fog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog63b
eraseSpriteBat2Fog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog63b anop
        long m


eraseSpriteBat2FogSkipRowErase93 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump94
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow94

eraseSpriteBat2FogSkipRowEraseShortJump94 anop
        brl eraseSpriteBat2FogSkipRowErase94
eraseSpriteBat2FogSkipRowEraseDontSkipRow94 anop
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
        beq eraseSpriteBat2Fog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog64b
eraseSpriteBat2Fog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog64b anop
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
        beq eraseSpriteBat2Fog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog65b
eraseSpriteBat2Fog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog65b anop
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
        beq eraseSpriteBat2Fog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog66b
eraseSpriteBat2Fog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog66b anop
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
        beq eraseSpriteBat2Fog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog67b
eraseSpriteBat2Fog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog67b anop
        long m


eraseSpriteBat2FogSkipRowErase94 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump95
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow95

eraseSpriteBat2FogSkipRowEraseShortJump95 anop
        brl eraseSpriteBat2FogSkipRowErase95
eraseSpriteBat2FogSkipRowEraseDontSkipRow95 anop
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
        beq eraseSpriteBat2Fog68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog68b
eraseSpriteBat2Fog68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog68b anop
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
        beq eraseSpriteBat2Fog69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog69b
eraseSpriteBat2Fog69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog69b anop
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
        beq eraseSpriteBat2Fog70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog70b
eraseSpriteBat2Fog70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog70b anop
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
        beq eraseSpriteBat2Fog71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog71b
eraseSpriteBat2Fog71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog71b anop
        long m


eraseSpriteBat2FogSkipRowErase95 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump96
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow96

eraseSpriteBat2FogSkipRowEraseShortJump96 anop
        brl eraseSpriteBat2FogSkipRowErase96
eraseSpriteBat2FogSkipRowEraseDontSkipRow96 anop
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
        beq eraseSpriteBat2Fog72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog72b
eraseSpriteBat2Fog72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog72b anop
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
        beq eraseSpriteBat2Fog73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog73b
eraseSpriteBat2Fog73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog73b anop
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
        beq eraseSpriteBat2Fog74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog74b
eraseSpriteBat2Fog74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog74b anop
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
        beq eraseSpriteBat2Fog75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog75b
eraseSpriteBat2Fog75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog75b anop
        long m


eraseSpriteBat2FogSkipRowErase96 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump97
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow97

eraseSpriteBat2FogSkipRowEraseShortJump97 anop
        brl eraseSpriteBat2FogSkipRowErase97
eraseSpriteBat2FogSkipRowEraseDontSkipRow97 anop
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
        beq eraseSpriteBat2Fog76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog76b
eraseSpriteBat2Fog76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog76b anop
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
        beq eraseSpriteBat2Fog77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog77b
eraseSpriteBat2Fog77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog77b anop
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
        beq eraseSpriteBat2Fog78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog78b
eraseSpriteBat2Fog78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog78b anop
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
        beq eraseSpriteBat2Fog79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog79b
eraseSpriteBat2Fog79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog79b anop
        long m


eraseSpriteBat2FogSkipRowErase97 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump98
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow98

eraseSpriteBat2FogSkipRowEraseShortJump98 anop
        brl eraseSpriteBat2FogSkipRowErase98
eraseSpriteBat2FogSkipRowEraseDontSkipRow98 anop
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
        beq eraseSpriteBat2Fog80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog80b
eraseSpriteBat2Fog80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog80b anop
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
        beq eraseSpriteBat2Fog81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog81b
eraseSpriteBat2Fog81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog81b anop
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
        beq eraseSpriteBat2Fog82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog82b
eraseSpriteBat2Fog82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog82b anop
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
        beq eraseSpriteBat2Fog83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog83b
eraseSpriteBat2Fog83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog83b anop
        long m


eraseSpriteBat2FogSkipRowErase98 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump99
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow99

eraseSpriteBat2FogSkipRowEraseShortJump99 anop
        brl eraseSpriteBat2FogSkipRowErase99
eraseSpriteBat2FogSkipRowEraseDontSkipRow99 anop
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
        beq eraseSpriteBat2Fog84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog84b
eraseSpriteBat2Fog84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog84b anop
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
        beq eraseSpriteBat2Fog85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog85b
eraseSpriteBat2Fog85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog85b anop
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
        beq eraseSpriteBat2Fog86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog86b
eraseSpriteBat2Fog86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog86b anop
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
        beq eraseSpriteBat2Fog87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog87b
eraseSpriteBat2Fog87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog87b anop
        long m


eraseSpriteBat2FogSkipRowErase99 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump100
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow100

eraseSpriteBat2FogSkipRowEraseShortJump100 anop
        brl eraseSpriteBat2FogSkipRowErase100
eraseSpriteBat2FogSkipRowEraseDontSkipRow100 anop
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
        beq eraseSpriteBat2Fog88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog88b
eraseSpriteBat2Fog88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog88b anop
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
        beq eraseSpriteBat2Fog89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog89b
eraseSpriteBat2Fog89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog89b anop
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
        beq eraseSpriteBat2Fog90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog90b
eraseSpriteBat2Fog90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog90b anop
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
        beq eraseSpriteBat2Fog91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog91b
eraseSpriteBat2Fog91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog91b anop
        long m


eraseSpriteBat2FogSkipRowErase100 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump101
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow101

eraseSpriteBat2FogSkipRowEraseShortJump101 anop
        brl eraseSpriteBat2FogSkipRowErase101
eraseSpriteBat2FogSkipRowEraseDontSkipRow101 anop
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
        beq eraseSpriteBat2Fog92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog92b
eraseSpriteBat2Fog92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog92b anop
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
        beq eraseSpriteBat2Fog93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog93b
eraseSpriteBat2Fog93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog93b anop
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
        beq eraseSpriteBat2Fog94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog94b
eraseSpriteBat2Fog94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog94b anop
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
        beq eraseSpriteBat2Fog95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog95b
eraseSpriteBat2Fog95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog95b anop
        long m


eraseSpriteBat2FogSkipRowErase101 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump102
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow102

eraseSpriteBat2FogSkipRowEraseShortJump102 anop
        brl eraseSpriteBat2FogSkipRowErase102
eraseSpriteBat2FogSkipRowEraseDontSkipRow102 anop
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
        beq eraseSpriteBat2Fog96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog96b
eraseSpriteBat2Fog96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog96b anop
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
        beq eraseSpriteBat2Fog97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog97b
eraseSpriteBat2Fog97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog97b anop
        long m


eraseSpriteBat2FogSkipRowErase102 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump103
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow103

eraseSpriteBat2FogSkipRowEraseShortJump103 anop
        brl eraseSpriteBat2FogSkipRowErase103
eraseSpriteBat2FogSkipRowEraseDontSkipRow103 anop
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
        beq eraseSpriteBat2Fog98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog98b
eraseSpriteBat2Fog98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog98b anop
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
        beq eraseSpriteBat2Fog99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog99b
eraseSpriteBat2Fog99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog99b anop
        long m


eraseSpriteBat2FogSkipRowErase103 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump104
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow104

eraseSpriteBat2FogSkipRowEraseShortJump104 anop
        brl eraseSpriteBat2FogSkipRowErase104
eraseSpriteBat2FogSkipRowEraseDontSkipRow104 anop
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
        beq eraseSpriteBat2Fog100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog100b
eraseSpriteBat2Fog100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog100b anop
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
        beq eraseSpriteBat2Fog101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog101b
eraseSpriteBat2Fog101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog101b anop
        long m


eraseSpriteBat2FogSkipRowErase104 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump105
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow105

eraseSpriteBat2FogSkipRowEraseShortJump105 anop
        brl eraseSpriteBat2FogSkipRowErase105
eraseSpriteBat2FogSkipRowEraseDontSkipRow105 anop
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
        beq eraseSpriteBat2Fog102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog102b
eraseSpriteBat2Fog102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog102b anop
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
        beq eraseSpriteBat2Fog103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog103b
eraseSpriteBat2Fog103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog103b anop
        long m


eraseSpriteBat2FogSkipRowErase105 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump106
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow106

eraseSpriteBat2FogSkipRowEraseShortJump106 anop
        brl eraseSpriteBat2FogSkipRowErase106
eraseSpriteBat2FogSkipRowEraseDontSkipRow106 anop
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
        beq eraseSpriteBat2Fog104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog104b
eraseSpriteBat2Fog104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog104b anop
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
        beq eraseSpriteBat2Fog105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog105b
eraseSpriteBat2Fog105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog105b anop
        long m


eraseSpriteBat2FogSkipRowErase106 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBat2FogSkipRowEraseShortJump107
        bra eraseSpriteBat2FogSkipRowEraseDontSkipRow107

eraseSpriteBat2FogSkipRowEraseShortJump107 anop
        brl eraseSpriteBat2FogSkipRowErase107
eraseSpriteBat2FogSkipRowEraseDontSkipRow107 anop
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
        beq eraseSpriteBat2Fog106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog106b
eraseSpriteBat2Fog106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog106b anop
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
        beq eraseSpriteBat2Fog107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBat2Fog107b
eraseSpriteBat2Fog107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBat2Fog107b anop
        long m


eraseSpriteBat2FogSkipRowErase107 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl



        end
