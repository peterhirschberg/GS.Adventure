;
;  spriteSurround.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/8/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on
        mcopy global.macros
        keep global


spriteSurround start spriteSurroundSeg
        using globalData
        using screenData


drawSurroundSprite entry

        lda >rectX
        lsr a
        sta >rectX

        ldy #COLOR_ORANGE

        lda >rectY
        asl a
        tax
        lda >screenRowOffsets,x
        clc
        adc >rectX
        tax


        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------


        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast

        nextSurroundRow

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord

        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWord
        drawSurroundWordLast

        nextSurroundRow

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards

        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwards
        drawSurroundWordBackwardsLast


; ---------------------------


        rtl



eraseSurroundSprite entry

        lda >rectX
        lsr a
        sta >rectX


        lda >rectY
        asl a
        tax
        lda >screenRowOffsets,x
        clc
        adc >rectX
        tax


        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------


        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

; ---------------------------

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast

        nextSurroundRow

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord

        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWord
        eraseSurroundWordLast

        nextSurroundRow

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards

        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwards
        eraseSurroundWordBackwardsLast


; ---------------------------


        rtl



        end
