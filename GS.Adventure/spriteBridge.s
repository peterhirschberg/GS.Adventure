;
;  spriteBridge.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/12/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global

spriteBridge start spriteBridgSeg
        using globalData
        using spriteData


drawSpriteBridge entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw0

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

drawSpriteBridgeSkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw1

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

drawSpriteBridgeSkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw2

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

drawSpriteBridgeSkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw3

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

drawSpriteBridgeSkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw4

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

drawSpriteBridgeSkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw5

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

drawSpriteBridgeSkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw6

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

drawSpriteBridgeSkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw7

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

drawSpriteBridgeSkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw8

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

drawSpriteBridgeSkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw9

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

drawSpriteBridgeSkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw10

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

drawSpriteBridgeSkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw11

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

drawSpriteBridgeSkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw12

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

drawSpriteBridgeSkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw13

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

drawSpriteBridgeSkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw14

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

drawSpriteBridgeSkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw15

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

drawSpriteBridgeSkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw16

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

drawSpriteBridgeSkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw17

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

drawSpriteBridgeSkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw18

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

drawSpriteBridgeSkipRowDraw18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw19

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

drawSpriteBridgeSkipRowDraw19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw20

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

drawSpriteBridgeSkipRowDraw20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw21

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

drawSpriteBridgeSkipRowDraw21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw22

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

drawSpriteBridgeSkipRowDraw22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw23

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

drawSpriteBridgeSkipRowDraw23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw24

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

drawSpriteBridgeSkipRowDraw24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw25

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

drawSpriteBridgeSkipRowDraw25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw26

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

drawSpriteBridgeSkipRowDraw26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw27

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

drawSpriteBridgeSkipRowDraw27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw28

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

drawSpriteBridgeSkipRowDraw28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw29

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

drawSpriteBridgeSkipRowDraw29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw30

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

drawSpriteBridgeSkipRowDraw30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw31

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

drawSpriteBridgeSkipRowDraw31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw32

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

drawSpriteBridgeSkipRowDraw32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw33

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

drawSpriteBridgeSkipRowDraw33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw34

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

drawSpriteBridgeSkipRowDraw34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw35

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

drawSpriteBridgeSkipRowDraw35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw36

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

drawSpriteBridgeSkipRowDraw36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw37

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

drawSpriteBridgeSkipRowDraw37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw38

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

drawSpriteBridgeSkipRowDraw38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw39

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

drawSpriteBridgeSkipRowDraw39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw40

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

drawSpriteBridgeSkipRowDraw40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw41

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

drawSpriteBridgeSkipRowDraw41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw42

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

drawSpriteBridgeSkipRowDraw42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw43

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

drawSpriteBridgeSkipRowDraw43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw44

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

drawSpriteBridgeSkipRowDraw44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw45

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

drawSpriteBridgeSkipRowDraw45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw46

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

drawSpriteBridgeSkipRowDraw46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteBridgeSkipRowDraw47

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

drawSpriteBridgeSkipRowDraw47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

eraseSpriteBridge entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump48
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow48

eraseSpriteBridgeSkipRowEraseShortJump48 anop
        brl eraseSpriteBridgeSkipRowErase48
eraseSpriteBridgeSkipRowEraseDontSkipRow48 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump49
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow49

eraseSpriteBridgeSkipRowEraseShortJump49 anop
        brl eraseSpriteBridgeSkipRowErase49
eraseSpriteBridgeSkipRowEraseDontSkipRow49 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase49 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump50
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow50

eraseSpriteBridgeSkipRowEraseShortJump50 anop
        brl eraseSpriteBridgeSkipRowErase50
eraseSpriteBridgeSkipRowEraseDontSkipRow50 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase50 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump51
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow51

eraseSpriteBridgeSkipRowEraseShortJump51 anop
        brl eraseSpriteBridgeSkipRowErase51
eraseSpriteBridgeSkipRowEraseDontSkipRow51 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase51 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump52
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow52

eraseSpriteBridgeSkipRowEraseShortJump52 anop
        brl eraseSpriteBridgeSkipRowErase52
eraseSpriteBridgeSkipRowEraseDontSkipRow52 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase52 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump53
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow53

eraseSpriteBridgeSkipRowEraseShortJump53 anop
        brl eraseSpriteBridgeSkipRowErase53
eraseSpriteBridgeSkipRowEraseDontSkipRow53 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase53 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump54
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow54

eraseSpriteBridgeSkipRowEraseShortJump54 anop
        brl eraseSpriteBridgeSkipRowErase54
eraseSpriteBridgeSkipRowEraseDontSkipRow54 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase54 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump55
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow55

eraseSpriteBridgeSkipRowEraseShortJump55 anop
        brl eraseSpriteBridgeSkipRowErase55
eraseSpriteBridgeSkipRowEraseDontSkipRow55 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase55 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump56
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow56

eraseSpriteBridgeSkipRowEraseShortJump56 anop
        brl eraseSpriteBridgeSkipRowErase56
eraseSpriteBridgeSkipRowEraseDontSkipRow56 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase56 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump57
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow57

eraseSpriteBridgeSkipRowEraseShortJump57 anop
        brl eraseSpriteBridgeSkipRowErase57
eraseSpriteBridgeSkipRowEraseDontSkipRow57 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase57 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump58
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow58

eraseSpriteBridgeSkipRowEraseShortJump58 anop
        brl eraseSpriteBridgeSkipRowErase58
eraseSpriteBridgeSkipRowEraseDontSkipRow58 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase58 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump59
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow59

eraseSpriteBridgeSkipRowEraseShortJump59 anop
        brl eraseSpriteBridgeSkipRowErase59
eraseSpriteBridgeSkipRowEraseDontSkipRow59 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase59 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump60
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow60

eraseSpriteBridgeSkipRowEraseShortJump60 anop
        brl eraseSpriteBridgeSkipRowErase60
eraseSpriteBridgeSkipRowEraseDontSkipRow60 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase60 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump61
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow61

eraseSpriteBridgeSkipRowEraseShortJump61 anop
        brl eraseSpriteBridgeSkipRowErase61
eraseSpriteBridgeSkipRowEraseDontSkipRow61 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase61 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump62
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow62

eraseSpriteBridgeSkipRowEraseShortJump62 anop
        brl eraseSpriteBridgeSkipRowErase62
eraseSpriteBridgeSkipRowEraseDontSkipRow62 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase62 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump63
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow63

eraseSpriteBridgeSkipRowEraseShortJump63 anop
        brl eraseSpriteBridgeSkipRowErase63
eraseSpriteBridgeSkipRowEraseDontSkipRow63 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase63 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump64
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow64

eraseSpriteBridgeSkipRowEraseShortJump64 anop
        brl eraseSpriteBridgeSkipRowErase64
eraseSpriteBridgeSkipRowEraseDontSkipRow64 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase64 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump65
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow65

eraseSpriteBridgeSkipRowEraseShortJump65 anop
        brl eraseSpriteBridgeSkipRowErase65
eraseSpriteBridgeSkipRowEraseDontSkipRow65 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase65 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump66
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow66

eraseSpriteBridgeSkipRowEraseShortJump66 anop
        brl eraseSpriteBridgeSkipRowErase66
eraseSpriteBridgeSkipRowEraseDontSkipRow66 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase66 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump67
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow67

eraseSpriteBridgeSkipRowEraseShortJump67 anop
        brl eraseSpriteBridgeSkipRowErase67
eraseSpriteBridgeSkipRowEraseDontSkipRow67 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase67 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump68
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow68

eraseSpriteBridgeSkipRowEraseShortJump68 anop
        brl eraseSpriteBridgeSkipRowErase68
eraseSpriteBridgeSkipRowEraseDontSkipRow68 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase68 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump69
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow69

eraseSpriteBridgeSkipRowEraseShortJump69 anop
        brl eraseSpriteBridgeSkipRowErase69
eraseSpriteBridgeSkipRowEraseDontSkipRow69 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase69 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump70
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow70

eraseSpriteBridgeSkipRowEraseShortJump70 anop
        brl eraseSpriteBridgeSkipRowErase70
eraseSpriteBridgeSkipRowEraseDontSkipRow70 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase70 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump71
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow71

eraseSpriteBridgeSkipRowEraseShortJump71 anop
        brl eraseSpriteBridgeSkipRowErase71
eraseSpriteBridgeSkipRowEraseDontSkipRow71 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase71 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump72
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow72

eraseSpriteBridgeSkipRowEraseShortJump72 anop
        brl eraseSpriteBridgeSkipRowErase72
eraseSpriteBridgeSkipRowEraseDontSkipRow72 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase72 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump73
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow73

eraseSpriteBridgeSkipRowEraseShortJump73 anop
        brl eraseSpriteBridgeSkipRowErase73
eraseSpriteBridgeSkipRowEraseDontSkipRow73 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase73 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump74
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow74

eraseSpriteBridgeSkipRowEraseShortJump74 anop
        brl eraseSpriteBridgeSkipRowErase74
eraseSpriteBridgeSkipRowEraseDontSkipRow74 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase74 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump75
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow75

eraseSpriteBridgeSkipRowEraseShortJump75 anop
        brl eraseSpriteBridgeSkipRowErase75
eraseSpriteBridgeSkipRowEraseDontSkipRow75 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase75 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump76
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow76

eraseSpriteBridgeSkipRowEraseShortJump76 anop
        brl eraseSpriteBridgeSkipRowErase76
eraseSpriteBridgeSkipRowEraseDontSkipRow76 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase76 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump77
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow77

eraseSpriteBridgeSkipRowEraseShortJump77 anop
        brl eraseSpriteBridgeSkipRowErase77
eraseSpriteBridgeSkipRowEraseDontSkipRow77 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase77 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump78
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow78

eraseSpriteBridgeSkipRowEraseShortJump78 anop
        brl eraseSpriteBridgeSkipRowErase78
eraseSpriteBridgeSkipRowEraseDontSkipRow78 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase78 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump79
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow79

eraseSpriteBridgeSkipRowEraseShortJump79 anop
        brl eraseSpriteBridgeSkipRowErase79
eraseSpriteBridgeSkipRowEraseDontSkipRow79 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase79 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump80
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow80

eraseSpriteBridgeSkipRowEraseShortJump80 anop
        brl eraseSpriteBridgeSkipRowErase80
eraseSpriteBridgeSkipRowEraseDontSkipRow80 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase80 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump81
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow81

eraseSpriteBridgeSkipRowEraseShortJump81 anop
        brl eraseSpriteBridgeSkipRowErase81
eraseSpriteBridgeSkipRowEraseDontSkipRow81 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase81 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump82
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow82

eraseSpriteBridgeSkipRowEraseShortJump82 anop
        brl eraseSpriteBridgeSkipRowErase82
eraseSpriteBridgeSkipRowEraseDontSkipRow82 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase82 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump83
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow83

eraseSpriteBridgeSkipRowEraseShortJump83 anop
        brl eraseSpriteBridgeSkipRowErase83
eraseSpriteBridgeSkipRowEraseDontSkipRow83 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase83 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump84
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow84

eraseSpriteBridgeSkipRowEraseShortJump84 anop
        brl eraseSpriteBridgeSkipRowErase84
eraseSpriteBridgeSkipRowEraseDontSkipRow84 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase84 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump85
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow85

eraseSpriteBridgeSkipRowEraseShortJump85 anop
        brl eraseSpriteBridgeSkipRowErase85
eraseSpriteBridgeSkipRowEraseDontSkipRow85 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase85 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump86
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow86

eraseSpriteBridgeSkipRowEraseShortJump86 anop
        brl eraseSpriteBridgeSkipRowErase86
eraseSpriteBridgeSkipRowEraseDontSkipRow86 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase86 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump87
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow87

eraseSpriteBridgeSkipRowEraseShortJump87 anop
        brl eraseSpriteBridgeSkipRowErase87
eraseSpriteBridgeSkipRowEraseDontSkipRow87 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase87 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump88
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow88

eraseSpriteBridgeSkipRowEraseShortJump88 anop
        brl eraseSpriteBridgeSkipRowErase88
eraseSpriteBridgeSkipRowEraseDontSkipRow88 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase88 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump89
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow89

eraseSpriteBridgeSkipRowEraseShortJump89 anop
        brl eraseSpriteBridgeSkipRowErase89
eraseSpriteBridgeSkipRowEraseDontSkipRow89 anop
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase89 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump90
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow90

eraseSpriteBridgeSkipRowEraseShortJump90 anop
        brl eraseSpriteBridgeSkipRowErase90
eraseSpriteBridgeSkipRowEraseDontSkipRow90 anop
        lda >spriteY
        clc
        adc #42
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase90 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump91
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow91

eraseSpriteBridgeSkipRowEraseShortJump91 anop
        brl eraseSpriteBridgeSkipRowErase91
eraseSpriteBridgeSkipRowEraseDontSkipRow91 anop
        lda >spriteY
        clc
        adc #43
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase91 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump92
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow92

eraseSpriteBridgeSkipRowEraseShortJump92 anop
        brl eraseSpriteBridgeSkipRowErase92
eraseSpriteBridgeSkipRowEraseDontSkipRow92 anop
        lda >spriteY
        clc
        adc #44
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase92 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump93
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow93

eraseSpriteBridgeSkipRowEraseShortJump93 anop
        brl eraseSpriteBridgeSkipRowErase93
eraseSpriteBridgeSkipRowEraseDontSkipRow93 anop
        lda >spriteY
        clc
        adc #45
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase93 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump94
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow94

eraseSpriteBridgeSkipRowEraseShortJump94 anop
        brl eraseSpriteBridgeSkipRowErase94
eraseSpriteBridgeSkipRowEraseDontSkipRow94 anop
        lda >spriteY
        clc
        adc #46
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase94 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeSkipRowEraseShortJump95
        bra eraseSpriteBridgeSkipRowEraseDontSkipRow95

eraseSpriteBridgeSkipRowEraseShortJump95 anop
        brl eraseSpriteBridgeSkipRowErase95
eraseSpriteBridgeSkipRowEraseDontSkipRow95 anop
        lda >spriteY
        clc
        adc #47
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
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
        long m


eraseSpriteBridgeSkipRowErase95 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl

eraseSpriteBridgeFog entry

        lda >spriteX
        lsr a
        sta >spriteX
        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump96
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow96

eraseSpriteBridgeFogSkipRowEraseShortJump96 anop
        brl eraseSpriteBridgeFogSkipRowErase96
eraseSpriteBridgeFogSkipRowEraseDontSkipRow96 anop
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
        beq eraseSpriteBridgeFog0a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog0b
eraseSpriteBridgeFog0a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog0b anop
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
        beq eraseSpriteBridgeFog1a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog1b
eraseSpriteBridgeFog1a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog1b anop
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
        beq eraseSpriteBridgeFog2a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog2b
eraseSpriteBridgeFog2a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog2b anop
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
        beq eraseSpriteBridgeFog3a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog3b
eraseSpriteBridgeFog3a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog3b anop
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
        beq eraseSpriteBridgeFog4a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog4b
eraseSpriteBridgeFog4a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog4b anop
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
        beq eraseSpriteBridgeFog5a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog5b
eraseSpriteBridgeFog5a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog5b anop
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
        beq eraseSpriteBridgeFog6a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog6b
eraseSpriteBridgeFog6a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog6b anop
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
        beq eraseSpriteBridgeFog7a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog7b
eraseSpriteBridgeFog7a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog7b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog8a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog8b
eraseSpriteBridgeFog8a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog8b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog9a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog9b
eraseSpriteBridgeFog9a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog9b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog10a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog10b
eraseSpriteBridgeFog10a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog10b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog11a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog11b
eraseSpriteBridgeFog11a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog11b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog12a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog12b
eraseSpriteBridgeFog12a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog12b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog13a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog13b
eraseSpriteBridgeFog13a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog13b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog14a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog14b
eraseSpriteBridgeFog14a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog14b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog15a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog15b
eraseSpriteBridgeFog15a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog15b anop
        long m


eraseSpriteBridgeFogSkipRowErase96 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump97
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow97

eraseSpriteBridgeFogSkipRowEraseShortJump97 anop
        brl eraseSpriteBridgeFogSkipRowErase97
eraseSpriteBridgeFogSkipRowEraseDontSkipRow97 anop
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
        beq eraseSpriteBridgeFog16a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog16b
eraseSpriteBridgeFog16a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog16b anop
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
        beq eraseSpriteBridgeFog17a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog17b
eraseSpriteBridgeFog17a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog17b anop
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
        beq eraseSpriteBridgeFog18a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog18b
eraseSpriteBridgeFog18a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog18b anop
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
        beq eraseSpriteBridgeFog19a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog19b
eraseSpriteBridgeFog19a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog19b anop
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
        beq eraseSpriteBridgeFog20a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog20b
eraseSpriteBridgeFog20a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog20b anop
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
        beq eraseSpriteBridgeFog21a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog21b
eraseSpriteBridgeFog21a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog21b anop
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
        beq eraseSpriteBridgeFog22a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog22b
eraseSpriteBridgeFog22a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog22b anop
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
        beq eraseSpriteBridgeFog23a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog23b
eraseSpriteBridgeFog23a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog23b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog24a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog24b
eraseSpriteBridgeFog24a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog24b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog25a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog25b
eraseSpriteBridgeFog25a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog25b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog26a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog26b
eraseSpriteBridgeFog26a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog26b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog27a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog27b
eraseSpriteBridgeFog27a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog27b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog28a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog28b
eraseSpriteBridgeFog28a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog28b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog29a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog29b
eraseSpriteBridgeFog29a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog29b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog30a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog30b
eraseSpriteBridgeFog30a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog30b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog31a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog31b
eraseSpriteBridgeFog31a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog31b anop
        long m


eraseSpriteBridgeFogSkipRowErase97 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump98
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow98

eraseSpriteBridgeFogSkipRowEraseShortJump98 anop
        brl eraseSpriteBridgeFogSkipRowErase98
eraseSpriteBridgeFogSkipRowEraseDontSkipRow98 anop
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
        beq eraseSpriteBridgeFog32a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog32b
eraseSpriteBridgeFog32a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog32b anop
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
        beq eraseSpriteBridgeFog33a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog33b
eraseSpriteBridgeFog33a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog33b anop
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
        beq eraseSpriteBridgeFog34a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog34b
eraseSpriteBridgeFog34a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog34b anop
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
        beq eraseSpriteBridgeFog35a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog35b
eraseSpriteBridgeFog35a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog35b anop
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
        beq eraseSpriteBridgeFog36a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog36b
eraseSpriteBridgeFog36a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog36b anop
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
        beq eraseSpriteBridgeFog37a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog37b
eraseSpriteBridgeFog37a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog37b anop
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
        beq eraseSpriteBridgeFog38a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog38b
eraseSpriteBridgeFog38a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog38b anop
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
        beq eraseSpriteBridgeFog39a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog39b
eraseSpriteBridgeFog39a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog39b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog40a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog40b
eraseSpriteBridgeFog40a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog40b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog41a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog41b
eraseSpriteBridgeFog41a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog41b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog42a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog42b
eraseSpriteBridgeFog42a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog42b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog43a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog43b
eraseSpriteBridgeFog43a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog43b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog44a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog44b
eraseSpriteBridgeFog44a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog44b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog45a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog45b
eraseSpriteBridgeFog45a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog45b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog46a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog46b
eraseSpriteBridgeFog46a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog46b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog47a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog47b
eraseSpriteBridgeFog47a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog47b anop
        long m


eraseSpriteBridgeFogSkipRowErase98 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump99
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow99

eraseSpriteBridgeFogSkipRowEraseShortJump99 anop
        brl eraseSpriteBridgeFogSkipRowErase99
eraseSpriteBridgeFogSkipRowEraseDontSkipRow99 anop
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
        beq eraseSpriteBridgeFog48a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog48b
eraseSpriteBridgeFog48a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog48b anop
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
        beq eraseSpriteBridgeFog49a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog49b
eraseSpriteBridgeFog49a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog49b anop
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
        beq eraseSpriteBridgeFog50a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog50b
eraseSpriteBridgeFog50a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog50b anop
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
        beq eraseSpriteBridgeFog51a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog51b
eraseSpriteBridgeFog51a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog51b anop
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
        beq eraseSpriteBridgeFog52a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog52b
eraseSpriteBridgeFog52a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog52b anop
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
        beq eraseSpriteBridgeFog53a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog53b
eraseSpriteBridgeFog53a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog53b anop
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
        beq eraseSpriteBridgeFog54a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog54b
eraseSpriteBridgeFog54a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog54b anop
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
        beq eraseSpriteBridgeFog55a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog55b
eraseSpriteBridgeFog55a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog55b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog56a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog56b
eraseSpriteBridgeFog56a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog56b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog57a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog57b
eraseSpriteBridgeFog57a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog57b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog58a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog58b
eraseSpriteBridgeFog58a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog58b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog59a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog59b
eraseSpriteBridgeFog59a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog59b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog60a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog60b
eraseSpriteBridgeFog60a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog60b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog61a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog61b
eraseSpriteBridgeFog61a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog61b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog62a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog62b
eraseSpriteBridgeFog62a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog62b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog63a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog63b
eraseSpriteBridgeFog63a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog63b anop
        long m


eraseSpriteBridgeFogSkipRowErase99 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump100
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow100

eraseSpriteBridgeFogSkipRowEraseShortJump100 anop
        brl eraseSpriteBridgeFogSkipRowErase100
eraseSpriteBridgeFogSkipRowEraseDontSkipRow100 anop
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
        beq eraseSpriteBridgeFog64a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog64b
eraseSpriteBridgeFog64a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog64b anop
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
        beq eraseSpriteBridgeFog65a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog65b
eraseSpriteBridgeFog65a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog65b anop
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
        beq eraseSpriteBridgeFog66a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog66b
eraseSpriteBridgeFog66a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog66b anop
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
        beq eraseSpriteBridgeFog67a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog67b
eraseSpriteBridgeFog67a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog67b anop
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
        beq eraseSpriteBridgeFog68a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog68b
eraseSpriteBridgeFog68a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog68b anop
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
        beq eraseSpriteBridgeFog69a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog69b
eraseSpriteBridgeFog69a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog69b anop
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
        beq eraseSpriteBridgeFog70a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog70b
eraseSpriteBridgeFog70a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog70b anop
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
        beq eraseSpriteBridgeFog71a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog71b
eraseSpriteBridgeFog71a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog71b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog72a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog72b
eraseSpriteBridgeFog72a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog72b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog73a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog73b
eraseSpriteBridgeFog73a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog73b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog74a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog74b
eraseSpriteBridgeFog74a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog74b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog75a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog75b
eraseSpriteBridgeFog75a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog75b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog76a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog76b
eraseSpriteBridgeFog76a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog76b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog77a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog77b
eraseSpriteBridgeFog77a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog77b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog78a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog78b
eraseSpriteBridgeFog78a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog78b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog79a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog79b
eraseSpriteBridgeFog79a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog79b anop
        long m


eraseSpriteBridgeFogSkipRowErase100 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump101
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow101

eraseSpriteBridgeFogSkipRowEraseShortJump101 anop
        brl eraseSpriteBridgeFogSkipRowErase101
eraseSpriteBridgeFogSkipRowEraseDontSkipRow101 anop
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
        beq eraseSpriteBridgeFog80a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog80b
eraseSpriteBridgeFog80a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog80b anop
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
        beq eraseSpriteBridgeFog81a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog81b
eraseSpriteBridgeFog81a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog81b anop
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
        beq eraseSpriteBridgeFog82a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog82b
eraseSpriteBridgeFog82a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog82b anop
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
        beq eraseSpriteBridgeFog83a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog83b
eraseSpriteBridgeFog83a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog83b anop
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
        beq eraseSpriteBridgeFog84a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog84b
eraseSpriteBridgeFog84a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog84b anop
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
        beq eraseSpriteBridgeFog85a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog85b
eraseSpriteBridgeFog85a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog85b anop
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
        beq eraseSpriteBridgeFog86a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog86b
eraseSpriteBridgeFog86a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog86b anop
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
        beq eraseSpriteBridgeFog87a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog87b
eraseSpriteBridgeFog87a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog87b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog88a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog88b
eraseSpriteBridgeFog88a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog88b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog89a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog89b
eraseSpriteBridgeFog89a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog89b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog90a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog90b
eraseSpriteBridgeFog90a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog90b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog91a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog91b
eraseSpriteBridgeFog91a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog91b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog92a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog92b
eraseSpriteBridgeFog92a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog92b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog93a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog93b
eraseSpriteBridgeFog93a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog93b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog94a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog94b
eraseSpriteBridgeFog94a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog94b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog95a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog95b
eraseSpriteBridgeFog95a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog95b anop
        long m


eraseSpriteBridgeFogSkipRowErase101 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump102
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow102

eraseSpriteBridgeFogSkipRowEraseShortJump102 anop
        brl eraseSpriteBridgeFogSkipRowErase102
eraseSpriteBridgeFogSkipRowEraseDontSkipRow102 anop
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
        beq eraseSpriteBridgeFog96a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog96b
eraseSpriteBridgeFog96a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog96b anop
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
        beq eraseSpriteBridgeFog97a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog97b
eraseSpriteBridgeFog97a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog97b anop
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
        beq eraseSpriteBridgeFog98a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog98b
eraseSpriteBridgeFog98a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog98b anop
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
        beq eraseSpriteBridgeFog99a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog99b
eraseSpriteBridgeFog99a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog99b anop
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
        beq eraseSpriteBridgeFog100a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog100b
eraseSpriteBridgeFog100a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog100b anop
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
        beq eraseSpriteBridgeFog101a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog101b
eraseSpriteBridgeFog101a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog101b anop
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
        beq eraseSpriteBridgeFog102a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog102b
eraseSpriteBridgeFog102a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog102b anop
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
        beq eraseSpriteBridgeFog103a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog103b
eraseSpriteBridgeFog103a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog103b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog104a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog104b
eraseSpriteBridgeFog104a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog104b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog105a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog105b
eraseSpriteBridgeFog105a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog105b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog106a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog106b
eraseSpriteBridgeFog106a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog106b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog107a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog107b
eraseSpriteBridgeFog107a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog107b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog108a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog108b
eraseSpriteBridgeFog108a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog108b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog109a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog109b
eraseSpriteBridgeFog109a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog109b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog110a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog110b
eraseSpriteBridgeFog110a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog110b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog111a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog111b
eraseSpriteBridgeFog111a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog111b anop
        long m


eraseSpriteBridgeFogSkipRowErase102 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump103
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow103

eraseSpriteBridgeFogSkipRowEraseShortJump103 anop
        brl eraseSpriteBridgeFogSkipRowErase103
eraseSpriteBridgeFogSkipRowEraseDontSkipRow103 anop
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
        beq eraseSpriteBridgeFog112a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog112b
eraseSpriteBridgeFog112a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog112b anop
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
        beq eraseSpriteBridgeFog113a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog113b
eraseSpriteBridgeFog113a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog113b anop
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
        beq eraseSpriteBridgeFog114a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog114b
eraseSpriteBridgeFog114a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog114b anop
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
        beq eraseSpriteBridgeFog115a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog115b
eraseSpriteBridgeFog115a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog115b anop
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
        beq eraseSpriteBridgeFog116a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog116b
eraseSpriteBridgeFog116a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog116b anop
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
        beq eraseSpriteBridgeFog117a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog117b
eraseSpriteBridgeFog117a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog117b anop
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
        beq eraseSpriteBridgeFog118a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog118b
eraseSpriteBridgeFog118a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog118b anop
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
        beq eraseSpriteBridgeFog119a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog119b
eraseSpriteBridgeFog119a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog119b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog120a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog120b
eraseSpriteBridgeFog120a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog120b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog121a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog121b
eraseSpriteBridgeFog121a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog121b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog122a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog122b
eraseSpriteBridgeFog122a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog122b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog123a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog123b
eraseSpriteBridgeFog123a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog123b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog124a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog124b
eraseSpriteBridgeFog124a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog124b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog125a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog125b
eraseSpriteBridgeFog125a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog125b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog126a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog126b
eraseSpriteBridgeFog126a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog126b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog127a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog127b
eraseSpriteBridgeFog127a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog127b anop
        long m


eraseSpriteBridgeFogSkipRowErase103 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump104
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow104

eraseSpriteBridgeFogSkipRowEraseShortJump104 anop
        brl eraseSpriteBridgeFogSkipRowErase104
eraseSpriteBridgeFogSkipRowEraseDontSkipRow104 anop
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
        beq eraseSpriteBridgeFog128a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog128b
eraseSpriteBridgeFog128a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog128b anop
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
        beq eraseSpriteBridgeFog129a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog129b
eraseSpriteBridgeFog129a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog129b anop
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
        beq eraseSpriteBridgeFog130a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog130b
eraseSpriteBridgeFog130a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog130b anop
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
        beq eraseSpriteBridgeFog131a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog131b
eraseSpriteBridgeFog131a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog131b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog132a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog132b
eraseSpriteBridgeFog132a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog132b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog133a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog133b
eraseSpriteBridgeFog133a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog133b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog134a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog134b
eraseSpriteBridgeFog134a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog134b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog135a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog135b
eraseSpriteBridgeFog135a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog135b anop
        long m


eraseSpriteBridgeFogSkipRowErase104 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump105
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow105

eraseSpriteBridgeFogSkipRowEraseShortJump105 anop
        brl eraseSpriteBridgeFogSkipRowErase105
eraseSpriteBridgeFogSkipRowEraseDontSkipRow105 anop
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
        beq eraseSpriteBridgeFog136a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog136b
eraseSpriteBridgeFog136a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog136b anop
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
        beq eraseSpriteBridgeFog137a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog137b
eraseSpriteBridgeFog137a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog137b anop
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
        beq eraseSpriteBridgeFog138a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog138b
eraseSpriteBridgeFog138a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog138b anop
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
        beq eraseSpriteBridgeFog139a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog139b
eraseSpriteBridgeFog139a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog139b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog140a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog140b
eraseSpriteBridgeFog140a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog140b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog141a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog141b
eraseSpriteBridgeFog141a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog141b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog142a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog142b
eraseSpriteBridgeFog142a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog142b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog143a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog143b
eraseSpriteBridgeFog143a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog143b anop
        long m


eraseSpriteBridgeFogSkipRowErase105 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump106
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow106

eraseSpriteBridgeFogSkipRowEraseShortJump106 anop
        brl eraseSpriteBridgeFogSkipRowErase106
eraseSpriteBridgeFogSkipRowEraseDontSkipRow106 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog144a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog144b
eraseSpriteBridgeFog144a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog144b anop
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
        beq eraseSpriteBridgeFog145a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog145b
eraseSpriteBridgeFog145a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog145b anop
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
        beq eraseSpriteBridgeFog146a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog146b
eraseSpriteBridgeFog146a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog146b anop
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
        beq eraseSpriteBridgeFog147a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog147b
eraseSpriteBridgeFog147a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog147b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog148a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog148b
eraseSpriteBridgeFog148a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog148b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog149a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog149b
eraseSpriteBridgeFog149a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog149b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog150a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog150b
eraseSpriteBridgeFog150a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog150b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog151a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog151b
eraseSpriteBridgeFog151a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog151b anop
        long m


eraseSpriteBridgeFogSkipRowErase106 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump107
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow107

eraseSpriteBridgeFogSkipRowEraseShortJump107 anop
        brl eraseSpriteBridgeFogSkipRowErase107
eraseSpriteBridgeFogSkipRowEraseDontSkipRow107 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog152a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog152b
eraseSpriteBridgeFog152a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog152b anop
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
        beq eraseSpriteBridgeFog153a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog153b
eraseSpriteBridgeFog153a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog153b anop
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
        beq eraseSpriteBridgeFog154a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog154b
eraseSpriteBridgeFog154a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog154b anop
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
        beq eraseSpriteBridgeFog155a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog155b
eraseSpriteBridgeFog155a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog155b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog156a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog156b
eraseSpriteBridgeFog156a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog156b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog157a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog157b
eraseSpriteBridgeFog157a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog157b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog158a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog158b
eraseSpriteBridgeFog158a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog158b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog159a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog159b
eraseSpriteBridgeFog159a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog159b anop
        long m


eraseSpriteBridgeFogSkipRowErase107 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump108
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow108

eraseSpriteBridgeFogSkipRowEraseShortJump108 anop
        brl eraseSpriteBridgeFogSkipRowErase108
eraseSpriteBridgeFogSkipRowEraseDontSkipRow108 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog160a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog160b
eraseSpriteBridgeFog160a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog160b anop
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
        beq eraseSpriteBridgeFog161a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog161b
eraseSpriteBridgeFog161a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog161b anop
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
        beq eraseSpriteBridgeFog162a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog162b
eraseSpriteBridgeFog162a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog162b anop
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
        beq eraseSpriteBridgeFog163a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog163b
eraseSpriteBridgeFog163a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog163b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog164a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog164b
eraseSpriteBridgeFog164a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog164b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog165a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog165b
eraseSpriteBridgeFog165a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog165b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog166a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog166b
eraseSpriteBridgeFog166a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog166b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog167a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog167b
eraseSpriteBridgeFog167a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog167b anop
        long m


eraseSpriteBridgeFogSkipRowErase108 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump109
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow109

eraseSpriteBridgeFogSkipRowEraseShortJump109 anop
        brl eraseSpriteBridgeFogSkipRowErase109
eraseSpriteBridgeFogSkipRowEraseDontSkipRow109 anop
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
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog168a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog168b
eraseSpriteBridgeFog168a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog168b anop
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
        beq eraseSpriteBridgeFog169a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog169b
eraseSpriteBridgeFog169a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog169b anop
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
        beq eraseSpriteBridgeFog170a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog170b
eraseSpriteBridgeFog170a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog170b anop
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
        beq eraseSpriteBridgeFog171a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog171b
eraseSpriteBridgeFog171a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog171b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog172a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog172b
eraseSpriteBridgeFog172a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog172b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog173a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog173b
eraseSpriteBridgeFog173a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog173b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog174a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog174b
eraseSpriteBridgeFog174a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog174b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog175a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog175b
eraseSpriteBridgeFog175a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog175b anop
        long m


eraseSpriteBridgeFogSkipRowErase109 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump110
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow110

eraseSpriteBridgeFogSkipRowEraseShortJump110 anop
        brl eraseSpriteBridgeFogSkipRowErase110
eraseSpriteBridgeFogSkipRowEraseDontSkipRow110 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog176a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog176b
eraseSpriteBridgeFog176a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog176b anop
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
        beq eraseSpriteBridgeFog177a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog177b
eraseSpriteBridgeFog177a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog177b anop
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
        beq eraseSpriteBridgeFog178a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog178b
eraseSpriteBridgeFog178a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog178b anop
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
        beq eraseSpriteBridgeFog179a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog179b
eraseSpriteBridgeFog179a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog179b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog180a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog180b
eraseSpriteBridgeFog180a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog180b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog181a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog181b
eraseSpriteBridgeFog181a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog181b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog182a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog182b
eraseSpriteBridgeFog182a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog182b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog183a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog183b
eraseSpriteBridgeFog183a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog183b anop
        long m


eraseSpriteBridgeFogSkipRowErase110 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump111
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow111

eraseSpriteBridgeFogSkipRowEraseShortJump111 anop
        brl eraseSpriteBridgeFogSkipRowErase111
eraseSpriteBridgeFogSkipRowEraseDontSkipRow111 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog184a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog184b
eraseSpriteBridgeFog184a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog184b anop
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
        beq eraseSpriteBridgeFog185a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog185b
eraseSpriteBridgeFog185a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog185b anop
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
        beq eraseSpriteBridgeFog186a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog186b
eraseSpriteBridgeFog186a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog186b anop
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
        beq eraseSpriteBridgeFog187a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog187b
eraseSpriteBridgeFog187a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog187b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog188a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog188b
eraseSpriteBridgeFog188a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog188b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog189a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog189b
eraseSpriteBridgeFog189a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog189b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog190a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog190b
eraseSpriteBridgeFog190a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog190b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog191a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog191b
eraseSpriteBridgeFog191a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog191b anop
        long m


eraseSpriteBridgeFogSkipRowErase111 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump112
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow112

eraseSpriteBridgeFogSkipRowEraseShortJump112 anop
        brl eraseSpriteBridgeFogSkipRowErase112
eraseSpriteBridgeFogSkipRowEraseDontSkipRow112 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog192a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog192b
eraseSpriteBridgeFog192a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog192b anop
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
        beq eraseSpriteBridgeFog193a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog193b
eraseSpriteBridgeFog193a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog193b anop
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
        beq eraseSpriteBridgeFog194a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog194b
eraseSpriteBridgeFog194a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog194b anop
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
        beq eraseSpriteBridgeFog195a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog195b
eraseSpriteBridgeFog195a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog195b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog196a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog196b
eraseSpriteBridgeFog196a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog196b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog197a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog197b
eraseSpriteBridgeFog197a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog197b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog198a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog198b
eraseSpriteBridgeFog198a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog198b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog199a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog199b
eraseSpriteBridgeFog199a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog199b anop
        long m


eraseSpriteBridgeFogSkipRowErase112 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump113
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow113

eraseSpriteBridgeFogSkipRowEraseShortJump113 anop
        brl eraseSpriteBridgeFogSkipRowErase113
eraseSpriteBridgeFogSkipRowEraseDontSkipRow113 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog200a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog200b
eraseSpriteBridgeFog200a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog200b anop
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
        beq eraseSpriteBridgeFog201a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog201b
eraseSpriteBridgeFog201a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog201b anop
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
        beq eraseSpriteBridgeFog202a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog202b
eraseSpriteBridgeFog202a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog202b anop
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
        beq eraseSpriteBridgeFog203a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog203b
eraseSpriteBridgeFog203a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog203b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog204a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog204b
eraseSpriteBridgeFog204a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog204b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog205a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog205b
eraseSpriteBridgeFog205a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog205b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog206a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog206b
eraseSpriteBridgeFog206a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog206b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog207a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog207b
eraseSpriteBridgeFog207a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog207b anop
        long m


eraseSpriteBridgeFogSkipRowErase113 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump114
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow114

eraseSpriteBridgeFogSkipRowEraseShortJump114 anop
        brl eraseSpriteBridgeFogSkipRowErase114
eraseSpriteBridgeFogSkipRowEraseDontSkipRow114 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog208a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog208b
eraseSpriteBridgeFog208a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog208b anop
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
        beq eraseSpriteBridgeFog209a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog209b
eraseSpriteBridgeFog209a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog209b anop
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
        beq eraseSpriteBridgeFog210a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog210b
eraseSpriteBridgeFog210a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog210b anop
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
        beq eraseSpriteBridgeFog211a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog211b
eraseSpriteBridgeFog211a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog211b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog212a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog212b
eraseSpriteBridgeFog212a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog212b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog213a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog213b
eraseSpriteBridgeFog213a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog213b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog214a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog214b
eraseSpriteBridgeFog214a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog214b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog215a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog215b
eraseSpriteBridgeFog215a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog215b anop
        long m


eraseSpriteBridgeFogSkipRowErase114 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump115
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow115

eraseSpriteBridgeFogSkipRowEraseShortJump115 anop
        brl eraseSpriteBridgeFogSkipRowErase115
eraseSpriteBridgeFogSkipRowEraseDontSkipRow115 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog216a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog216b
eraseSpriteBridgeFog216a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog216b anop
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
        beq eraseSpriteBridgeFog217a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog217b
eraseSpriteBridgeFog217a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog217b anop
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
        beq eraseSpriteBridgeFog218a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog218b
eraseSpriteBridgeFog218a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog218b anop
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
        beq eraseSpriteBridgeFog219a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog219b
eraseSpriteBridgeFog219a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog219b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog220a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog220b
eraseSpriteBridgeFog220a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog220b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog221a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog221b
eraseSpriteBridgeFog221a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog221b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog222a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog222b
eraseSpriteBridgeFog222a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog222b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog223a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog223b
eraseSpriteBridgeFog223a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog223b anop
        long m


eraseSpriteBridgeFogSkipRowErase115 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump116
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow116

eraseSpriteBridgeFogSkipRowEraseShortJump116 anop
        brl eraseSpriteBridgeFogSkipRowErase116
eraseSpriteBridgeFogSkipRowEraseDontSkipRow116 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog224a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog224b
eraseSpriteBridgeFog224a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog224b anop
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
        beq eraseSpriteBridgeFog225a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog225b
eraseSpriteBridgeFog225a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog225b anop
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
        beq eraseSpriteBridgeFog226a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog226b
eraseSpriteBridgeFog226a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog226b anop
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
        beq eraseSpriteBridgeFog227a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog227b
eraseSpriteBridgeFog227a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog227b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog228a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog228b
eraseSpriteBridgeFog228a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog228b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog229a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog229b
eraseSpriteBridgeFog229a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog229b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog230a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog230b
eraseSpriteBridgeFog230a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog230b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog231a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog231b
eraseSpriteBridgeFog231a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog231b anop
        long m


eraseSpriteBridgeFogSkipRowErase116 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump117
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow117

eraseSpriteBridgeFogSkipRowEraseShortJump117 anop
        brl eraseSpriteBridgeFogSkipRowErase117
eraseSpriteBridgeFogSkipRowEraseDontSkipRow117 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog232a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog232b
eraseSpriteBridgeFog232a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog232b anop
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
        beq eraseSpriteBridgeFog233a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog233b
eraseSpriteBridgeFog233a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog233b anop
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
        beq eraseSpriteBridgeFog234a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog234b
eraseSpriteBridgeFog234a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog234b anop
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
        beq eraseSpriteBridgeFog235a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog235b
eraseSpriteBridgeFog235a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog235b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog236a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog236b
eraseSpriteBridgeFog236a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog236b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog237a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog237b
eraseSpriteBridgeFog237a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog237b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog238a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog238b
eraseSpriteBridgeFog238a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog238b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog239a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog239b
eraseSpriteBridgeFog239a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog239b anop
        long m


eraseSpriteBridgeFogSkipRowErase117 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump118
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow118

eraseSpriteBridgeFogSkipRowEraseShortJump118 anop
        brl eraseSpriteBridgeFogSkipRowErase118
eraseSpriteBridgeFogSkipRowEraseDontSkipRow118 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog240a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog240b
eraseSpriteBridgeFog240a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog240b anop
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
        beq eraseSpriteBridgeFog241a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog241b
eraseSpriteBridgeFog241a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog241b anop
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
        beq eraseSpriteBridgeFog242a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog242b
eraseSpriteBridgeFog242a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog242b anop
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
        beq eraseSpriteBridgeFog243a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog243b
eraseSpriteBridgeFog243a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog243b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog244a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog244b
eraseSpriteBridgeFog244a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog244b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog245a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog245b
eraseSpriteBridgeFog245a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog245b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog246a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog246b
eraseSpriteBridgeFog246a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog246b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog247a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog247b
eraseSpriteBridgeFog247a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog247b anop
        long m


eraseSpriteBridgeFogSkipRowErase118 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump119
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow119

eraseSpriteBridgeFogSkipRowEraseShortJump119 anop
        brl eraseSpriteBridgeFogSkipRowErase119
eraseSpriteBridgeFogSkipRowEraseDontSkipRow119 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog248a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog248b
eraseSpriteBridgeFog248a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog248b anop
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
        beq eraseSpriteBridgeFog249a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog249b
eraseSpriteBridgeFog249a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog249b anop
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
        beq eraseSpriteBridgeFog250a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog250b
eraseSpriteBridgeFog250a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog250b anop
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
        beq eraseSpriteBridgeFog251a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog251b
eraseSpriteBridgeFog251a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog251b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog252a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog252b
eraseSpriteBridgeFog252a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog252b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog253a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog253b
eraseSpriteBridgeFog253a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog253b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog254a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog254b
eraseSpriteBridgeFog254a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog254b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog255a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog255b
eraseSpriteBridgeFog255a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog255b anop
        long m


eraseSpriteBridgeFogSkipRowErase119 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump120
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow120

eraseSpriteBridgeFogSkipRowEraseShortJump120 anop
        brl eraseSpriteBridgeFogSkipRowErase120
eraseSpriteBridgeFogSkipRowEraseDontSkipRow120 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog256a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog256b
eraseSpriteBridgeFog256a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog256b anop
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
        beq eraseSpriteBridgeFog257a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog257b
eraseSpriteBridgeFog257a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog257b anop
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
        beq eraseSpriteBridgeFog258a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog258b
eraseSpriteBridgeFog258a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog258b anop
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
        beq eraseSpriteBridgeFog259a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog259b
eraseSpriteBridgeFog259a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog259b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog260a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog260b
eraseSpriteBridgeFog260a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog260b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog261a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog261b
eraseSpriteBridgeFog261a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog261b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog262a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog262b
eraseSpriteBridgeFog262a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog262b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog263a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog263b
eraseSpriteBridgeFog263a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog263b anop
        long m


eraseSpriteBridgeFogSkipRowErase120 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump121
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow121

eraseSpriteBridgeFogSkipRowEraseShortJump121 anop
        brl eraseSpriteBridgeFogSkipRowErase121
eraseSpriteBridgeFogSkipRowEraseDontSkipRow121 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog264a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog264b
eraseSpriteBridgeFog264a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog264b anop
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
        beq eraseSpriteBridgeFog265a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog265b
eraseSpriteBridgeFog265a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog265b anop
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
        beq eraseSpriteBridgeFog266a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog266b
eraseSpriteBridgeFog266a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog266b anop
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
        beq eraseSpriteBridgeFog267a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog267b
eraseSpriteBridgeFog267a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog267b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog268a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog268b
eraseSpriteBridgeFog268a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog268b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog269a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog269b
eraseSpriteBridgeFog269a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog269b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog270a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog270b
eraseSpriteBridgeFog270a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog270b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog271a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog271b
eraseSpriteBridgeFog271a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog271b anop
        long m


eraseSpriteBridgeFogSkipRowErase121 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump122
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow122

eraseSpriteBridgeFogSkipRowEraseShortJump122 anop
        brl eraseSpriteBridgeFogSkipRowErase122
eraseSpriteBridgeFogSkipRowEraseDontSkipRow122 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog272a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog272b
eraseSpriteBridgeFog272a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog272b anop
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
        beq eraseSpriteBridgeFog273a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog273b
eraseSpriteBridgeFog273a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog273b anop
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
        beq eraseSpriteBridgeFog274a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog274b
eraseSpriteBridgeFog274a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog274b anop
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
        beq eraseSpriteBridgeFog275a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog275b
eraseSpriteBridgeFog275a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog275b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog276a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog276b
eraseSpriteBridgeFog276a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog276b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog277a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog277b
eraseSpriteBridgeFog277a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog277b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog278a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog278b
eraseSpriteBridgeFog278a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog278b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog279a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog279b
eraseSpriteBridgeFog279a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog279b anop
        long m


eraseSpriteBridgeFogSkipRowErase122 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump123
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow123

eraseSpriteBridgeFogSkipRowEraseShortJump123 anop
        brl eraseSpriteBridgeFogSkipRowErase123
eraseSpriteBridgeFogSkipRowEraseDontSkipRow123 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog280a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog280b
eraseSpriteBridgeFog280a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog280b anop
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
        beq eraseSpriteBridgeFog281a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog281b
eraseSpriteBridgeFog281a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog281b anop
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
        beq eraseSpriteBridgeFog282a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog282b
eraseSpriteBridgeFog282a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog282b anop
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
        beq eraseSpriteBridgeFog283a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog283b
eraseSpriteBridgeFog283a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog283b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog284a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog284b
eraseSpriteBridgeFog284a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog284b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog285a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog285b
eraseSpriteBridgeFog285a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog285b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog286a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog286b
eraseSpriteBridgeFog286a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog286b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog287a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog287b
eraseSpriteBridgeFog287a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog287b anop
        long m


eraseSpriteBridgeFogSkipRowErase123 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump124
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow124

eraseSpriteBridgeFogSkipRowEraseShortJump124 anop
        brl eraseSpriteBridgeFogSkipRowErase124
eraseSpriteBridgeFogSkipRowEraseDontSkipRow124 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog288a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog288b
eraseSpriteBridgeFog288a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog288b anop
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
        beq eraseSpriteBridgeFog289a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog289b
eraseSpriteBridgeFog289a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog289b anop
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
        beq eraseSpriteBridgeFog290a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog290b
eraseSpriteBridgeFog290a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog290b anop
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
        beq eraseSpriteBridgeFog291a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog291b
eraseSpriteBridgeFog291a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog291b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog292a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog292b
eraseSpriteBridgeFog292a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog292b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog293a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog293b
eraseSpriteBridgeFog293a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog293b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog294a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog294b
eraseSpriteBridgeFog294a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog294b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog295a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog295b
eraseSpriteBridgeFog295a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog295b anop
        long m


eraseSpriteBridgeFogSkipRowErase124 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump125
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow125

eraseSpriteBridgeFogSkipRowEraseShortJump125 anop
        brl eraseSpriteBridgeFogSkipRowErase125
eraseSpriteBridgeFogSkipRowEraseDontSkipRow125 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog296a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog296b
eraseSpriteBridgeFog296a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog296b anop
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
        beq eraseSpriteBridgeFog297a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog297b
eraseSpriteBridgeFog297a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog297b anop
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
        beq eraseSpriteBridgeFog298a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog298b
eraseSpriteBridgeFog298a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog298b anop
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
        beq eraseSpriteBridgeFog299a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog299b
eraseSpriteBridgeFog299a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog299b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog300a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog300b
eraseSpriteBridgeFog300a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog300b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog301a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog301b
eraseSpriteBridgeFog301a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog301b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog302a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog302b
eraseSpriteBridgeFog302a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog302b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog303a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog303b
eraseSpriteBridgeFog303a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog303b anop
        long m


eraseSpriteBridgeFogSkipRowErase125 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump126
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow126

eraseSpriteBridgeFogSkipRowEraseShortJump126 anop
        brl eraseSpriteBridgeFogSkipRowErase126
eraseSpriteBridgeFogSkipRowEraseDontSkipRow126 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog304a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog304b
eraseSpriteBridgeFog304a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog304b anop
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
        beq eraseSpriteBridgeFog305a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog305b
eraseSpriteBridgeFog305a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog305b anop
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
        beq eraseSpriteBridgeFog306a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog306b
eraseSpriteBridgeFog306a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog306b anop
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
        beq eraseSpriteBridgeFog307a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog307b
eraseSpriteBridgeFog307a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog307b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog308a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog308b
eraseSpriteBridgeFog308a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog308b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog309a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog309b
eraseSpriteBridgeFog309a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog309b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog310a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog310b
eraseSpriteBridgeFog310a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog310b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog311a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog311b
eraseSpriteBridgeFog311a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog311b anop
        long m


eraseSpriteBridgeFogSkipRowErase126 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump127
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow127

eraseSpriteBridgeFogSkipRowEraseShortJump127 anop
        brl eraseSpriteBridgeFogSkipRowErase127
eraseSpriteBridgeFogSkipRowEraseDontSkipRow127 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog312a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog312b
eraseSpriteBridgeFog312a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog312b anop
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
        beq eraseSpriteBridgeFog313a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog313b
eraseSpriteBridgeFog313a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog313b anop
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
        beq eraseSpriteBridgeFog314a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog314b
eraseSpriteBridgeFog314a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog314b anop
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
        beq eraseSpriteBridgeFog315a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog315b
eraseSpriteBridgeFog315a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog315b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog316a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog316b
eraseSpriteBridgeFog316a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog316b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog317a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog317b
eraseSpriteBridgeFog317a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog317b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog318a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog318b
eraseSpriteBridgeFog318a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog318b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog319a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog319b
eraseSpriteBridgeFog319a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog319b anop
        long m


eraseSpriteBridgeFogSkipRowErase127 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump128
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow128

eraseSpriteBridgeFogSkipRowEraseShortJump128 anop
        brl eraseSpriteBridgeFogSkipRowErase128
eraseSpriteBridgeFogSkipRowEraseDontSkipRow128 anop
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
        beq eraseSpriteBridgeFog320a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog320b
eraseSpriteBridgeFog320a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog320b anop
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
        beq eraseSpriteBridgeFog321a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog321b
eraseSpriteBridgeFog321a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog321b anop
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
        beq eraseSpriteBridgeFog322a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog322b
eraseSpriteBridgeFog322a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog322b anop
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
        beq eraseSpriteBridgeFog323a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog323b
eraseSpriteBridgeFog323a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog323b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog324a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog324b
eraseSpriteBridgeFog324a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog324b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog325a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog325b
eraseSpriteBridgeFog325a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog325b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog326a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog326b
eraseSpriteBridgeFog326a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog326b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog327a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog327b
eraseSpriteBridgeFog327a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog327b anop
        long m


eraseSpriteBridgeFogSkipRowErase128 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump129
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow129

eraseSpriteBridgeFogSkipRowEraseShortJump129 anop
        brl eraseSpriteBridgeFogSkipRowErase129
eraseSpriteBridgeFogSkipRowEraseDontSkipRow129 anop
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
        beq eraseSpriteBridgeFog328a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog328b
eraseSpriteBridgeFog328a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog328b anop
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
        beq eraseSpriteBridgeFog329a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog329b
eraseSpriteBridgeFog329a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog329b anop
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
        beq eraseSpriteBridgeFog330a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog330b
eraseSpriteBridgeFog330a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog330b anop
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
        beq eraseSpriteBridgeFog331a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog331b
eraseSpriteBridgeFog331a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog331b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog332a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog332b
eraseSpriteBridgeFog332a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog332b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog333a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog333b
eraseSpriteBridgeFog333a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog333b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog334a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog334b
eraseSpriteBridgeFog334a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog334b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog335a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog335b
eraseSpriteBridgeFog335a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog335b anop
        long m


eraseSpriteBridgeFogSkipRowErase129 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump130
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow130

eraseSpriteBridgeFogSkipRowEraseShortJump130 anop
        brl eraseSpriteBridgeFogSkipRowErase130
eraseSpriteBridgeFogSkipRowEraseDontSkipRow130 anop
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
        beq eraseSpriteBridgeFog336a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog336b
eraseSpriteBridgeFog336a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog336b anop
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
        beq eraseSpriteBridgeFog337a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog337b
eraseSpriteBridgeFog337a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog337b anop
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
        beq eraseSpriteBridgeFog338a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog338b
eraseSpriteBridgeFog338a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog338b anop
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
        beq eraseSpriteBridgeFog339a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog339b
eraseSpriteBridgeFog339a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog339b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog340a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog340b
eraseSpriteBridgeFog340a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog340b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog341a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog341b
eraseSpriteBridgeFog341a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog341b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog342a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog342b
eraseSpriteBridgeFog342a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog342b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog343a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog343b
eraseSpriteBridgeFog343a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog343b anop
        long m


eraseSpriteBridgeFogSkipRowErase130 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump131
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow131

eraseSpriteBridgeFogSkipRowEraseShortJump131 anop
        brl eraseSpriteBridgeFogSkipRowErase131
eraseSpriteBridgeFogSkipRowEraseDontSkipRow131 anop
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
        beq eraseSpriteBridgeFog344a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog344b
eraseSpriteBridgeFog344a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog344b anop
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
        beq eraseSpriteBridgeFog345a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog345b
eraseSpriteBridgeFog345a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog345b anop
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
        beq eraseSpriteBridgeFog346a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog346b
eraseSpriteBridgeFog346a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog346b anop
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
        beq eraseSpriteBridgeFog347a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog347b
eraseSpriteBridgeFog347a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog347b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog348a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog348b
eraseSpriteBridgeFog348a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog348b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog349a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog349b
eraseSpriteBridgeFog349a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog349b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog350a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog350b
eraseSpriteBridgeFog350a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog350b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog351a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog351b
eraseSpriteBridgeFog351a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog351b anop
        long m


eraseSpriteBridgeFogSkipRowErase131 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump132
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow132

eraseSpriteBridgeFogSkipRowEraseShortJump132 anop
        brl eraseSpriteBridgeFogSkipRowErase132
eraseSpriteBridgeFogSkipRowEraseDontSkipRow132 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog352a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog352b
eraseSpriteBridgeFog352a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog352b anop
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
        beq eraseSpriteBridgeFog353a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog353b
eraseSpriteBridgeFog353a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog353b anop
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
        beq eraseSpriteBridgeFog354a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog354b
eraseSpriteBridgeFog354a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog354b anop
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
        beq eraseSpriteBridgeFog355a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog355b
eraseSpriteBridgeFog355a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog355b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog356a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog356b
eraseSpriteBridgeFog356a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog356b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog357a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog357b
eraseSpriteBridgeFog357a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog357b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog358a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog358b
eraseSpriteBridgeFog358a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog358b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog359a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog359b
eraseSpriteBridgeFog359a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog359b anop
        long m


eraseSpriteBridgeFogSkipRowErase132 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump133
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow133

eraseSpriteBridgeFogSkipRowEraseShortJump133 anop
        brl eraseSpriteBridgeFogSkipRowErase133
eraseSpriteBridgeFogSkipRowEraseDontSkipRow133 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog360a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog360b
eraseSpriteBridgeFog360a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog360b anop
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
        beq eraseSpriteBridgeFog361a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog361b
eraseSpriteBridgeFog361a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog361b anop
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
        beq eraseSpriteBridgeFog362a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog362b
eraseSpriteBridgeFog362a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog362b anop
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
        beq eraseSpriteBridgeFog363a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog363b
eraseSpriteBridgeFog363a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog363b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog364a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog364b
eraseSpriteBridgeFog364a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog364b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog365a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog365b
eraseSpriteBridgeFog365a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog365b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog366a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog366b
eraseSpriteBridgeFog366a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog366b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog367a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog367b
eraseSpriteBridgeFog367a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog367b anop
        long m


eraseSpriteBridgeFogSkipRowErase133 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump134
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow134

eraseSpriteBridgeFogSkipRowEraseShortJump134 anop
        brl eraseSpriteBridgeFogSkipRowErase134
eraseSpriteBridgeFogSkipRowEraseDontSkipRow134 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog368a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog368b
eraseSpriteBridgeFog368a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog368b anop
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
        beq eraseSpriteBridgeFog369a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog369b
eraseSpriteBridgeFog369a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog369b anop
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
        beq eraseSpriteBridgeFog370a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog370b
eraseSpriteBridgeFog370a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog370b anop
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
        beq eraseSpriteBridgeFog371a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog371b
eraseSpriteBridgeFog371a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog371b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog372a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog372b
eraseSpriteBridgeFog372a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog372b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog373a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog373b
eraseSpriteBridgeFog373a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog373b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog374a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog374b
eraseSpriteBridgeFog374a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog374b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog375a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog375b
eraseSpriteBridgeFog375a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog375b anop
        long m


eraseSpriteBridgeFogSkipRowErase134 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump135
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow135

eraseSpriteBridgeFogSkipRowEraseShortJump135 anop
        brl eraseSpriteBridgeFogSkipRowErase135
eraseSpriteBridgeFogSkipRowEraseDontSkipRow135 anop
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
        adc #4
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog376a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog376b
eraseSpriteBridgeFog376a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog376b anop
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
        beq eraseSpriteBridgeFog377a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog377b
eraseSpriteBridgeFog377a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog377b anop
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
        beq eraseSpriteBridgeFog378a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog378b
eraseSpriteBridgeFog378a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog378b anop
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
        beq eraseSpriteBridgeFog379a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog379b
eraseSpriteBridgeFog379a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog379b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog380a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog380b
eraseSpriteBridgeFog380a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog380b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog381a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog381b
eraseSpriteBridgeFog381a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog381b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog382a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog382b
eraseSpriteBridgeFog382a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog382b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog383a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog383b
eraseSpriteBridgeFog383a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog383b anop
        long m


eraseSpriteBridgeFogSkipRowErase135 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump136
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow136

eraseSpriteBridgeFogSkipRowEraseShortJump136 anop
        brl eraseSpriteBridgeFogSkipRowErase136
eraseSpriteBridgeFogSkipRowEraseDontSkipRow136 anop
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
        beq eraseSpriteBridgeFog384a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog384b
eraseSpriteBridgeFog384a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog384b anop
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
        beq eraseSpriteBridgeFog385a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog385b
eraseSpriteBridgeFog385a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog385b anop
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
        beq eraseSpriteBridgeFog386a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog386b
eraseSpriteBridgeFog386a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog386b anop
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
        beq eraseSpriteBridgeFog387a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog387b
eraseSpriteBridgeFog387a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog387b anop
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
        beq eraseSpriteBridgeFog388a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog388b
eraseSpriteBridgeFog388a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog388b anop
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
        beq eraseSpriteBridgeFog389a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog389b
eraseSpriteBridgeFog389a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog389b anop
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
        beq eraseSpriteBridgeFog390a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog390b
eraseSpriteBridgeFog390a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog390b anop
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
        beq eraseSpriteBridgeFog391a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog391b
eraseSpriteBridgeFog391a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog391b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog392a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog392b
eraseSpriteBridgeFog392a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog392b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog393a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog393b
eraseSpriteBridgeFog393a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog393b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog394a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog394b
eraseSpriteBridgeFog394a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog394b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog395a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog395b
eraseSpriteBridgeFog395a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog395b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog396a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog396b
eraseSpriteBridgeFog396a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog396b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog397a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog397b
eraseSpriteBridgeFog397a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog397b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog398a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog398b
eraseSpriteBridgeFog398a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog398b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog399a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog399b
eraseSpriteBridgeFog399a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog399b anop
        long m


eraseSpriteBridgeFogSkipRowErase136 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump137
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow137

eraseSpriteBridgeFogSkipRowEraseShortJump137 anop
        brl eraseSpriteBridgeFogSkipRowErase137
eraseSpriteBridgeFogSkipRowEraseDontSkipRow137 anop
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
        beq eraseSpriteBridgeFog400a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog400b
eraseSpriteBridgeFog400a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog400b anop
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
        beq eraseSpriteBridgeFog401a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog401b
eraseSpriteBridgeFog401a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog401b anop
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
        beq eraseSpriteBridgeFog402a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog402b
eraseSpriteBridgeFog402a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog402b anop
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
        beq eraseSpriteBridgeFog403a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog403b
eraseSpriteBridgeFog403a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog403b anop
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
        beq eraseSpriteBridgeFog404a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog404b
eraseSpriteBridgeFog404a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog404b anop
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
        beq eraseSpriteBridgeFog405a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog405b
eraseSpriteBridgeFog405a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog405b anop
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
        beq eraseSpriteBridgeFog406a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog406b
eraseSpriteBridgeFog406a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog406b anop
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
        beq eraseSpriteBridgeFog407a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog407b
eraseSpriteBridgeFog407a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog407b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog408a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog408b
eraseSpriteBridgeFog408a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog408b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog409a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog409b
eraseSpriteBridgeFog409a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog409b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog410a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog410b
eraseSpriteBridgeFog410a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog410b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog411a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog411b
eraseSpriteBridgeFog411a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog411b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog412a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog412b
eraseSpriteBridgeFog412a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog412b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog413a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog413b
eraseSpriteBridgeFog413a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog413b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog414a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog414b
eraseSpriteBridgeFog414a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog414b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog415a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog415b
eraseSpriteBridgeFog415a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog415b anop
        long m


eraseSpriteBridgeFogSkipRowErase137 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump138
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow138

eraseSpriteBridgeFogSkipRowEraseShortJump138 anop
        brl eraseSpriteBridgeFogSkipRowErase138
eraseSpriteBridgeFogSkipRowEraseDontSkipRow138 anop
        lda >spriteY
        clc
        adc #42
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
        beq eraseSpriteBridgeFog416a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog416b
eraseSpriteBridgeFog416a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog416b anop
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
        beq eraseSpriteBridgeFog417a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog417b
eraseSpriteBridgeFog417a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog417b anop
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
        beq eraseSpriteBridgeFog418a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog418b
eraseSpriteBridgeFog418a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog418b anop
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
        beq eraseSpriteBridgeFog419a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog419b
eraseSpriteBridgeFog419a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog419b anop
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
        beq eraseSpriteBridgeFog420a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog420b
eraseSpriteBridgeFog420a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog420b anop
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
        beq eraseSpriteBridgeFog421a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog421b
eraseSpriteBridgeFog421a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog421b anop
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
        beq eraseSpriteBridgeFog422a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog422b
eraseSpriteBridgeFog422a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog422b anop
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
        beq eraseSpriteBridgeFog423a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog423b
eraseSpriteBridgeFog423a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog423b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog424a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog424b
eraseSpriteBridgeFog424a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog424b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog425a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog425b
eraseSpriteBridgeFog425a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog425b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog426a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog426b
eraseSpriteBridgeFog426a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog426b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog427a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog427b
eraseSpriteBridgeFog427a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog427b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog428a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog428b
eraseSpriteBridgeFog428a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog428b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog429a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog429b
eraseSpriteBridgeFog429a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog429b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog430a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog430b
eraseSpriteBridgeFog430a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog430b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog431a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog431b
eraseSpriteBridgeFog431a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog431b anop
        long m


eraseSpriteBridgeFogSkipRowErase138 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump139
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow139

eraseSpriteBridgeFogSkipRowEraseShortJump139 anop
        brl eraseSpriteBridgeFogSkipRowErase139
eraseSpriteBridgeFogSkipRowEraseDontSkipRow139 anop
        lda >spriteY
        clc
        adc #43
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
        beq eraseSpriteBridgeFog432a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog432b
eraseSpriteBridgeFog432a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog432b anop
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
        beq eraseSpriteBridgeFog433a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog433b
eraseSpriteBridgeFog433a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog433b anop
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
        beq eraseSpriteBridgeFog434a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog434b
eraseSpriteBridgeFog434a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog434b anop
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
        beq eraseSpriteBridgeFog435a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog435b
eraseSpriteBridgeFog435a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog435b anop
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
        beq eraseSpriteBridgeFog436a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog436b
eraseSpriteBridgeFog436a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog436b anop
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
        beq eraseSpriteBridgeFog437a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog437b
eraseSpriteBridgeFog437a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog437b anop
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
        beq eraseSpriteBridgeFog438a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog438b
eraseSpriteBridgeFog438a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog438b anop
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
        beq eraseSpriteBridgeFog439a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog439b
eraseSpriteBridgeFog439a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog439b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog440a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog440b
eraseSpriteBridgeFog440a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog440b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog441a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog441b
eraseSpriteBridgeFog441a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog441b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog442a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog442b
eraseSpriteBridgeFog442a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog442b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog443a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog443b
eraseSpriteBridgeFog443a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog443b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog444a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog444b
eraseSpriteBridgeFog444a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog444b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog445a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog445b
eraseSpriteBridgeFog445a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog445b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog446a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog446b
eraseSpriteBridgeFog446a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog446b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog447a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog447b
eraseSpriteBridgeFog447a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog447b anop
        long m


eraseSpriteBridgeFogSkipRowErase139 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump140
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow140

eraseSpriteBridgeFogSkipRowEraseShortJump140 anop
        brl eraseSpriteBridgeFogSkipRowErase140
eraseSpriteBridgeFogSkipRowEraseDontSkipRow140 anop
        lda >spriteY
        clc
        adc #44
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
        beq eraseSpriteBridgeFog448a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog448b
eraseSpriteBridgeFog448a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog448b anop
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
        beq eraseSpriteBridgeFog449a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog449b
eraseSpriteBridgeFog449a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog449b anop
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
        beq eraseSpriteBridgeFog450a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog450b
eraseSpriteBridgeFog450a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog450b anop
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
        beq eraseSpriteBridgeFog451a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog451b
eraseSpriteBridgeFog451a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog451b anop
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
        beq eraseSpriteBridgeFog452a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog452b
eraseSpriteBridgeFog452a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog452b anop
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
        beq eraseSpriteBridgeFog453a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog453b
eraseSpriteBridgeFog453a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog453b anop
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
        beq eraseSpriteBridgeFog454a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog454b
eraseSpriteBridgeFog454a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog454b anop
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
        beq eraseSpriteBridgeFog455a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog455b
eraseSpriteBridgeFog455a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog455b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog456a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog456b
eraseSpriteBridgeFog456a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog456b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog457a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog457b
eraseSpriteBridgeFog457a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog457b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog458a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog458b
eraseSpriteBridgeFog458a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog458b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog459a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog459b
eraseSpriteBridgeFog459a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog459b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog460a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog460b
eraseSpriteBridgeFog460a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog460b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog461a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog461b
eraseSpriteBridgeFog461a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog461b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog462a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog462b
eraseSpriteBridgeFog462a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog462b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog463a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog463b
eraseSpriteBridgeFog463a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog463b anop
        long m


eraseSpriteBridgeFogSkipRowErase140 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump141
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow141

eraseSpriteBridgeFogSkipRowEraseShortJump141 anop
        brl eraseSpriteBridgeFogSkipRowErase141
eraseSpriteBridgeFogSkipRowEraseDontSkipRow141 anop
        lda >spriteY
        clc
        adc #45
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
        beq eraseSpriteBridgeFog464a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog464b
eraseSpriteBridgeFog464a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog464b anop
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
        beq eraseSpriteBridgeFog465a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog465b
eraseSpriteBridgeFog465a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog465b anop
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
        beq eraseSpriteBridgeFog466a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog466b
eraseSpriteBridgeFog466a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog466b anop
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
        beq eraseSpriteBridgeFog467a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog467b
eraseSpriteBridgeFog467a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog467b anop
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
        beq eraseSpriteBridgeFog468a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog468b
eraseSpriteBridgeFog468a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog468b anop
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
        beq eraseSpriteBridgeFog469a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog469b
eraseSpriteBridgeFog469a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog469b anop
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
        beq eraseSpriteBridgeFog470a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog470b
eraseSpriteBridgeFog470a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog470b anop
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
        beq eraseSpriteBridgeFog471a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog471b
eraseSpriteBridgeFog471a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog471b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog472a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog472b
eraseSpriteBridgeFog472a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog472b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog473a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog473b
eraseSpriteBridgeFog473a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog473b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog474a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog474b
eraseSpriteBridgeFog474a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog474b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog475a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog475b
eraseSpriteBridgeFog475a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog475b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog476a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog476b
eraseSpriteBridgeFog476a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog476b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog477a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog477b
eraseSpriteBridgeFog477a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog477b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog478a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog478b
eraseSpriteBridgeFog478a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog478b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog479a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog479b
eraseSpriteBridgeFog479a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog479b anop
        long m


eraseSpriteBridgeFogSkipRowErase141 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump142
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow142

eraseSpriteBridgeFogSkipRowEraseShortJump142 anop
        brl eraseSpriteBridgeFogSkipRowErase142
eraseSpriteBridgeFogSkipRowEraseDontSkipRow142 anop
        lda >spriteY
        clc
        adc #46
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
        beq eraseSpriteBridgeFog480a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog480b
eraseSpriteBridgeFog480a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog480b anop
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
        beq eraseSpriteBridgeFog481a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog481b
eraseSpriteBridgeFog481a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog481b anop
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
        beq eraseSpriteBridgeFog482a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog482b
eraseSpriteBridgeFog482a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog482b anop
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
        beq eraseSpriteBridgeFog483a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog483b
eraseSpriteBridgeFog483a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog483b anop
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
        beq eraseSpriteBridgeFog484a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog484b
eraseSpriteBridgeFog484a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog484b anop
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
        beq eraseSpriteBridgeFog485a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog485b
eraseSpriteBridgeFog485a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog485b anop
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
        beq eraseSpriteBridgeFog486a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog486b
eraseSpriteBridgeFog486a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog486b anop
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
        beq eraseSpriteBridgeFog487a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog487b
eraseSpriteBridgeFog487a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog487b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog488a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog488b
eraseSpriteBridgeFog488a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog488b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog489a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog489b
eraseSpriteBridgeFog489a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog489b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog490a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog490b
eraseSpriteBridgeFog490a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog490b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog491a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog491b
eraseSpriteBridgeFog491a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog491b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog492a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog492b
eraseSpriteBridgeFog492a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog492b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog493a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog493b
eraseSpriteBridgeFog493a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog493b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog494a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog494b
eraseSpriteBridgeFog494a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog494b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog495a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog495b
eraseSpriteBridgeFog495a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog495b anop
        long m


eraseSpriteBridgeFogSkipRowErase142 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        cmp #199
        bcs eraseSpriteBridgeFogSkipRowEraseShortJump143
        bra eraseSpriteBridgeFogSkipRowEraseDontSkipRow143

eraseSpriteBridgeFogSkipRowEraseShortJump143 anop
        brl eraseSpriteBridgeFogSkipRowErase143
eraseSpriteBridgeFogSkipRowEraseDontSkipRow143 anop
        lda >spriteY
        clc
        adc #47
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
        beq eraseSpriteBridgeFog496a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog496b
eraseSpriteBridgeFog496a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog496b anop
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
        beq eraseSpriteBridgeFog497a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog497b
eraseSpriteBridgeFog497a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog497b anop
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
        beq eraseSpriteBridgeFog498a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog498b
eraseSpriteBridgeFog498a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog498b anop
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
        beq eraseSpriteBridgeFog499a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog499b
eraseSpriteBridgeFog499a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog499b anop
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
        beq eraseSpriteBridgeFog500a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog500b
eraseSpriteBridgeFog500a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog500b anop
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
        beq eraseSpriteBridgeFog501a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog501b
eraseSpriteBridgeFog501a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog501b anop
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
        beq eraseSpriteBridgeFog502a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog502b
eraseSpriteBridgeFog502a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog502b anop
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
        beq eraseSpriteBridgeFog503a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog503b
eraseSpriteBridgeFog503a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog503b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #24
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog504a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog504b
eraseSpriteBridgeFog504a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog504b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #25
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog505a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog505b
eraseSpriteBridgeFog505a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog505b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #26
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog506a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog506b
eraseSpriteBridgeFog506a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog506b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #27
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog507a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog507b
eraseSpriteBridgeFog507a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog507b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #28
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog508a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog508b
eraseSpriteBridgeFog508a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog508b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #29
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog509a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog509b
eraseSpriteBridgeFog509a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog509b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #30
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog510a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog510b
eraseSpriteBridgeFog510a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog510b anop
        long m
        lda >rowAddress
        clc
        adc >spriteX

        clc
        adc #31
        tax


        short m
        lda >SURROUND_PIXEL_ADDR,x
        cmp #$00
        beq eraseSpriteBridgeFog511a
        sta >SCREEN_ADDR,x
        bra eraseSpriteBridgeFog511b
eraseSpriteBridgeFog511a anop
        lda >BACKGROUND_ADDR,x
        sta >SCREEN_ADDR,x
eraseSpriteBridgeFog511b anop
        long m


eraseSpriteBridgeFogSkipRowErase143 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter


        rtl


        end
