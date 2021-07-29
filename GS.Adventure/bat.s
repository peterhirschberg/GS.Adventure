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
        
        inc flapTimer
        lda flapTimer
        cmp #4
        beq resetFlapTimer
        bra batContinue
        
resetFlapTimer anop

        lda #0
        sta flapTimer

        lda >objectStateList,x
        sta >objectOldStateList,x
        cmp #1
        beq flapResetToZero
        
        lda #1
        sta >objectStateList,x
        bra batContinue
        
flapResetToZero anop

        lda #0
        sta >objectStateList,x

batContinue anop

        lda >objectPositionYList,x
        clc
        adc #3
        
        lda #50
        sta >objectPositionXList,x
        sta >objectPositionYList,x
        lda currentRoom
        sta >objectRoomList,x

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

seekLeft dc i2'0'
seekTop dc i2'0'
seekRight dc i2'0'
seekBottom dc i2'0'

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
