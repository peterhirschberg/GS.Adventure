;
;  bat.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/29/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on


bat start
        using globalData
        using objectData
        using gameData
        using roomsData
        using batData
    

runBat entry

        ldx #OBJECT_BAT

        lda >objectStateList,x
        sta >objectOldStateList,x
        
; -------------------------------
; Handle flapping

        inc flapTimer
        lda flapTimer
        cmp #4
        beq resetFlapTimer
        bra batContinue
        
resetFlapTimer anop

        lda #0
        sta flapTimer

        lda >objectStateList,x
        cmp #1
        beq flapResetToZero
        
        lda #1
        sta >objectStateList,x
        bra batContinue
        
flapResetToZero anop

        lda #0
        sta >objectStateList,x

batContinue anop

; -------------------------------
; Get the bat's current extents

        lda >objectPositionXList,x
        sta batLeft

        lda >objectPositionYList,x
        sta batTop

        jsr getWidthForObjectState
        clc
        adc batWidth
        sta batRight

        jsr getHeightForObjectState
        clc
        adc batHeight
        sta batBottom

; -------------------------------
; Enlarge the bat extent by 7 pixels for the proximity checks below

        lda batLeft
        sec
        sbc #7
        sta batLeft
        
        lda batTop
        sec
        sbc #7
        sta batTop
        
        lda batRight
        clc
        adc #7
        sta batRight
        
        lda batBottom
        clc
        adc #7
        sta batBottom

; -------------------------------
; Go through the bat's object matrix

        ldy #0

seekLoop anop

        lda batMatrix,y
        cmp #OBJECT_NONE
        beq seekDone
        
        
        
        
        iny
        iny
        bra seekLoop

seekDone anop

; -------------------------------



        lda >objectPositionXList,x
        sta >objectPositionOldXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x
        
        lda >objectPositionYList,x
        clc
        adc #4
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x
        
        rts
        

batMovementX dc i2'0'
batMovementY dc i2'0'

flapTimer dc i2'0'
batFedUpTimer dc i2'0'

batLeft dc i2'0'
batTop dc i2'0'
batRight dc i2'0'
batBottom dc i2'0'

batRoom dc i2'0'

seekLeft dc i2'0'
seekTop dc i2'0'
seekRight dc i2'0'
seekBottom dc i2'0'

seekRoom dc i2'0'

savex dc i2'0'

        end


batData data

    
; bat object matrix
batMatrix anop
        dc i2'OBJECT_CHALISE'          ; Chalise
        dc i2'OBJECT_SWORD'            ; Sword
        dc i2'OBJECT_BRIDGE'           ; Bridge
        dc i2'OBJECT_YELLOWKEY'        ; Yellow Key
        dc i2'OBJECT_WHITEKEY'         ; White Key
        dc i2'OBJECT_BLACKKEY'         ; Black Key
        dc i2'OBJECT_REDDRAGON'        ; Red Dragon
        dc i2'OBJECT_YELLOWDRAGON'     ; Yellow Dragon
        dc i2'OBJECT_GREENDRAGON'      ; Green Dragon
        dc i2'OBJECT_MAGNET'           ; Magnet
        dc i2'OBJECT_NONE'

    
        end
