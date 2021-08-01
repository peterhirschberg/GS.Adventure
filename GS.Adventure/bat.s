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

; -------------------------------
batContinue anop

        lda >objectLinkedObjectList,x
        cmp #OBJECT_NONE
        bne carryingSomething
        bra checkFedUp

carryingSomething anop

        lda #$ff
        cmp batFedUpTimer
        bcs batNotFedUp
        bra checkFedUp

batNotFedUp anop

        inc batFedUpTimer

checkFedUp anop

        lda batFedUpTimer
        cmp #$ff
        bcs batFedUp
        brl seekDone

batFedUp anop

; -------------------------------
; Get the bat's current extents

        lda >objectPositionXList,x
        sta batLeft
        sta batX

        lda >objectPositionYList,x
        sta batTop
        sta batY

        jsr getWidthForObjectState
        clc
        adc batLeft
        sta batRight

        jsr getHeightForObjectState
        clc
        adc batTop
        sta batBottom
        
        lda >objectRoomList,x
        sta batRoom

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
        
        sta seekObject
        
        tax
        
        lda >objectRoomList,x
        sta seekRoom
        
        lda batRoom
        cmp seekRoom
        bne nextObject

        lda >objectLinkedObjectList,x
        cmp seekObject
        beq nextObject

        lda >objectPositionXList,x
        sta seekLeft

        lda >objectPositionYList,x
        sta seekTop
        sec
        sbc #22
        sta seekTop
        
; Set the movement

        lda seekLeft
        cmp batX
        beq xIsEqual
        bcs goRight
        
        lda #-4
        sta batMovementX
        bra doYMovement
        
goRight anop
        lda #4
        sta batMovementX
        bra doYMovement
        
xIsEqual anop
        lda #0
        sta batMovementX
        
doYMovement anop

        lda seekTop
        cmp batY
        beq yIsEqual
        bcs goDown
        
        lda #-4
        sta batMovementY
        bra movementDone
        
goDown anop
        lda #4
        sta batMovementY
        bra movementDone
        
yIsEqual anop
        lda #0
        sta batMovementY
        
movementDone anop
        bra seekDone
        
nextObject anop

        iny
        iny
        bra seekLoop

seekDone anop

; -------------------------------
; see if the bat can pick up something

;        lda #0
;        sta batFedUpTimer

; -------------------------------

        ldx #OBJECT_BAT

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x
        
        lda >objectPositionXList,x
        clc
        adc batMovementX
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        clc
        adc batMovementY
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x
        
        rts
        

batMovementX dc i2'0'
batMovementY dc i2'4'

flapTimer dc i2'0'

batX dc i2'0'
batY dc i2'0'

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

seekObject dc i2'0'

savex dc i2'0'

        end


batData data

batFedUpTimer dc i2'0'
    
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
