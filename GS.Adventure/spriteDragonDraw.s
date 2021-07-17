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


drawSpriteDragon1 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw0

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda >spriteColor

        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw0 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw1

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda >spriteColor

        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw1 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw2

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw2 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw3

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw3 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw4

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw4 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw5

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw5 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw6

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw6 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw7

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw7 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw8

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw8 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw9

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw9 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw10

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda >spriteColor

        sta 5
        long m

drawSpriteDragon1SkipRowDraw10 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw11

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda >spriteColor

        sta 5
        long m

drawSpriteDragon1SkipRowDraw11 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw12

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda >spriteColor

        sta 5
        long m

drawSpriteDragon1SkipRowDraw12 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw13

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda >spriteColor

        sta 5
        long m

drawSpriteDragon1SkipRowDraw13 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw14

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw14 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw15

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon1SkipRowDraw15 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw16

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw16 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw17

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw17 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw18

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw18 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw19

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw19 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw20

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw20 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw21

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw21 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw22

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw22 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw23

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw23 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw24

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw24 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw25

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw25 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw26

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw26 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw27

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw27 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw28

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw28 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw29

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw29 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw30

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon1SkipRowDraw30 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw31

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon1SkipRowDraw31 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw32

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda >spriteColor

        sta 4
        long m

drawSpriteDragon1SkipRowDraw32 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw33

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda >spriteColor

        sta 4
        long m

drawSpriteDragon1SkipRowDraw33 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw34

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw34 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw35

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw35 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw36

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 7
        long m

drawSpriteDragon1SkipRowDraw36 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw37

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 7
        long m

drawSpriteDragon1SkipRowDraw37 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw38

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw38 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon1SkipRowDraw39

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon1SkipRowDraw39 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteDragon2 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw40

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon2SkipRowDraw40 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw41

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon2SkipRowDraw41 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw42

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda >spriteColor

        sta 1
        long m

drawSpriteDragon2SkipRowDraw42 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw43

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda >spriteColor

        sta 1
        long m

drawSpriteDragon2SkipRowDraw43 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw44

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw44 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw45

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw45 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw46

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw46 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw47

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw47 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw48

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw48 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw49

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw49 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw50

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw50 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw51

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw51 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw52

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw52 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw53

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw53 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw54

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 5
        long m

drawSpriteDragon2SkipRowDraw54 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw55

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 5
        long m

drawSpriteDragon2SkipRowDraw55 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw56

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 5
        long m

drawSpriteDragon2SkipRowDraw56 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw57

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 5
        long m

drawSpriteDragon2SkipRowDraw57 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw58

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw58 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw59

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw59 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw60

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw60 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw61

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw61 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw62

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw62 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw63

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw63 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw64

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw64 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw65

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw65 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw66

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw66 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw67

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw67 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw68

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw68 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw69

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw69 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw70

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw70 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw71

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon2SkipRowDraw71 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw72

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw72 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw73

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda >spriteColor

        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon2SkipRowDraw73 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw74

        lda >drawAddress
        clc
        adc #5440
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon2SkipRowDraw74 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw75

        lda >drawAddress
        clc
        adc #5600
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon2SkipRowDraw75 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw76

        lda >drawAddress
        clc
        adc #5760
        tcd

        short m
        lda >spriteColor

        sta 4
        long m

drawSpriteDragon2SkipRowDraw76 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw77

        lda >drawAddress
        clc
        adc #5920
        tcd

        short m
        lda >spriteColor

        sta 4
        long m

drawSpriteDragon2SkipRowDraw77 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw78

        lda >drawAddress
        clc
        adc #6080
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

drawSpriteDragon2SkipRowDraw78 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw79

        lda >drawAddress
        clc
        adc #6240
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        long m

drawSpriteDragon2SkipRowDraw79 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw80

        lda >drawAddress
        clc
        adc #6400
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon2SkipRowDraw80 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw81

        lda >drawAddress
        clc
        adc #6560
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon2SkipRowDraw81 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw82

        lda >drawAddress
        clc
        adc #6720
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        long m

drawSpriteDragon2SkipRowDraw82 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon2SkipRowDraw83

        lda >drawAddress
        clc
        adc #6880
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        long m

drawSpriteDragon2SkipRowDraw83 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl

drawSpriteDragon3 entry

        spriteGetDrawAddress
        _spriteHeader

        lda >spriteY
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw84

        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw84 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw85

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw85 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw86

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw86 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw87

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw87 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw88

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw88 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw89

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw89 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw90

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw90 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw91

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda >spriteColor

        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw91 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw92

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 6
        sta 7
        long m

drawSpriteDragon3SkipRowDraw92 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw93

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda >spriteColor

        sta 3
        sta 4
        sta 6
        sta 7
        long m

drawSpriteDragon3SkipRowDraw93 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw94

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon3SkipRowDraw94 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw95

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        long m

drawSpriteDragon3SkipRowDraw95 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw96

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw96 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw97

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw97 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw98

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon3SkipRowDraw98 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw99

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda >spriteColor

        sta 0
        long m

drawSpriteDragon3SkipRowDraw99 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw100

        lda >drawAddress
        clc
        adc #2560
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw100 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw101

        lda >drawAddress
        clc
        adc #2720
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        long m

drawSpriteDragon3SkipRowDraw101 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw102

        lda >drawAddress
        clc
        adc #2880
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw102 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw103

        lda >drawAddress
        clc
        adc #3040
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw103 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw104

        lda >drawAddress
        clc
        adc #3200
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw104 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw105

        lda >drawAddress
        clc
        adc #3360
        tcd

        short m
        lda >spriteColor

        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw105 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw106

        lda >drawAddress
        clc
        adc #3520
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw106 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw107

        lda >drawAddress
        clc
        adc #3680
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw107 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw108

        lda >drawAddress
        clc
        adc #3840
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        long m

drawSpriteDragon3SkipRowDraw108 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw109

        lda >drawAddress
        clc
        adc #4000
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        long m

drawSpriteDragon3SkipRowDraw109 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw110

        lda >drawAddress
        clc
        adc #4160
        tcd

        short m
        lda >spriteColor

        sta 2
        long m

drawSpriteDragon3SkipRowDraw110 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw111

        lda >drawAddress
        clc
        adc #4320
        tcd

        short m
        lda >spriteColor

        sta 2
        long m

drawSpriteDragon3SkipRowDraw111 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw112

        lda >drawAddress
        clc
        adc #4480
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw112 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw113

        lda >drawAddress
        clc
        adc #4640
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw113 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw114

        lda >drawAddress
        clc
        adc #4800
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 6
        long m

drawSpriteDragon3SkipRowDraw114 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw115

        lda >drawAddress
        clc
        adc #4960
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 6
        long m

drawSpriteDragon3SkipRowDraw115 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw116

        lda >drawAddress
        clc
        adc #5120
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw116 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        cmp #199
        bcs drawSpriteDragon3SkipRowDraw117

        lda >drawAddress
        clc
        adc #5280
        tcd

        short m
        lda >spriteColor

        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        long m

drawSpriteDragon3SkipRowDraw117 anop

        lda >rowCounter
        clc
        adc #1
        sta >rowCounter

        long m

        _spriteFooter
        rtl



        end
