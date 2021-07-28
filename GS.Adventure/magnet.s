;
;  magnet.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/28/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

magnet start
        using objectData
        using roomsData
        using playerData
        using magnetData
   
   
; look for items in the magnet matrix that are in the same room as the magnet
runMagnet entry

        ldx #OBJECT_MAGNET
        lda >objectPositionXList,x
        sta magnetX
        lda >objectPositionYList,x
        sta magnetY
        lda >objectRoomList,x
        sta magnetRoom
        
        lda magnetY
        clc
        adc #OBJECT_HEIGHT_MAGNET
        sta magnetBottom

        lda #0
        sta objectIndex

magnetLoop anop

        ldx objectIndex
        lda magnetMatrix,x
        tax
        sta currentObject
        
; check for same room
        lda >objectRoomList,x
        cmp magnetRoom
        beq sameRoom
        brl nextObject

sameRoom anop

; don't attract the player carried object
        stx savex
        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        ldx savex
        
        cmp currentObject
        bne notCarriedObject
        brl nextObject
        
notCarriedObject anop

        ldx currentObject
        lda >objectPositionXList,x
        sta objectX
        lda >objectPositionYList,x
        sta objectY

; horizontal axis

        lda objectX
        cmp magnetX
        beq dontMoveX
        bcs moveLeft
        
; move right

        inc objectX
        lda objectX
        sta >objectPositionXList,x
        lda #1
        sta >objectDirtyList,x
        bra dontMoveX

moveLeft anop

        dec objectX
        lda objectX
        sta >objectPositionXList,x
        lda #1
        sta >objectDirtyList,x
        
dontMoveX anop

; vertical axis

        lda objectY
        cmp magnetBottom
        beq dontMoveY
        bcs moveUp
        
; move down

        inc objectY
        lda objectY
        sta >objectPositionYList,x
        lda #1
        sta >objectDirtyList,x
        bra dontMoveY

moveUp anop

        dec objectY
        lda objectY
        sta >objectPositionYList,x
        lda #1
        sta >objectDirtyList,x
        
dontMoveY anop

; all done - only attract the first item found in the matrix
        rts

nextObject anop

        inc objectIndex
        inc objectIndex
        ldx objectIndex
        lda magnetMatrix,x
        cmp #OBJECT_NONE
        beq magnetDone
        brl magnetLoop
        
magnetDone anop

        rts

        
objectIndex dc i2'0'

currentObject dc i2'0'

magnetRoom dc i2'0'

magnetX dc i2'0'
magnetY dc i2'0'

magnetBottom dc i2'0'

objectX dc i2'0'
objectY dc i2'0'

savex dc i2'0'

        
        end


magnetData data

    
magnetMatrix anop
        dc i2'OBJECT_YELLOWKEY'    // Yellow Key
        dc i2'OBJECT_WHITEKEY'     // White Key
        dc i2'OBJECT_BLACKKEY'     // Black Key
        dc i2'OBJECT_SWORD'        // Sword
        dc i2'OBJECT_BRIDGE'       // Bridge
        dc i2'OBJECT_CHALISE'      // Challise
        dc i2'OBJECT_NONE'
    
    
        end
