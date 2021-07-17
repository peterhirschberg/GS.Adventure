;
;  collision.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/4/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


collision start
        using globalData
        using playerData
        using roomsData
        using screenData
        using objectData


collisionCheckPlayerWithWalls entry

        lda playerX
        lsr a
        sta rectX

        lda playerY
        sta rectY

        lda #12
        lsr a
        sta rectHeight

        lda #0
        sta rowCounter

playerHitLoop anop

        lda rowCounter
        clc
        adc rectY

        asl a
        tax
        lda screenRowOffsets,x
        clc
        adc rectX
        tax

        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inx
        lda >BACKGROUND_ADDR,x
        cmp #COLOR_LTGRAY
        bne playerHitDoneHit

        inc rowCounter
        lda rowCounter
        cmp rectHeight
        beq playerHitDoneNoHit
        bra playerHitLoop

playerHitDoneHit anop

        lda #1
        sta playerHitWall

        lda playerX
        sta playerHitX
        lda playerY
        sta playerHitY

        lda playerOldX
        sta playerX
        lda playerOldY
        sta playerY

        lda #1
        sta playerMoved

        rts

playerHitDoneNoHit anop

        lda #0
        sta playerHitWall

        rts



collisionCheckPlayerWithObjects entry

        lda #OBJECT_NONE
        sta playerHitObject

        lda playerX
        sta playerRectLeft

        lda playerY
        sta playerRectTop

        lda playerRectLeft
        clc
        adc #8
        sta playerRectRight

        lda playerRectTop
        clc
        adc #8
        sta playerRectBottom

        ldx #OBJECT_YELLOWKEY
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_WHITEKEY
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_BLACKKEY
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_YELLOWDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_GREENDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_REDDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_BRIDGE
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_PORT1
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_PORT2
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_PORT3
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        rts

hitObject anop
        txa
        sta playerHitObject

        lda >objectLinkableList,x
        cmp #1
        bne hitNonLinkableObject

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        cmp #OBJECT_NONE
        bne alreadyCarrying

; Pick up the object!

        lda playerHitObject
        sta >objectLinkedObjectList,x

        ldx playerHitObject

        lda >objectPositionXList,x
        sta hitObjectX

        lda >objectPositionYList,x
        sta hitObjectY

        ldx #OBJECT_PLAYER

        lda hitObjectX
        sec
        sbc playerX
        sta >objectLinkedObjectXOffsetList,x

        lda hitObjectY
        sec
        sbc playerY
        sta >objectLinkedObjectYOffsetList,x

        rts

alreadyCarrying anop
        rts

hitNonLinkableObject anop

        lda playerX
        sta playerHitX
        lda playerY
        sta playerHitY

        lda playerOldX
        sta playerX
        lda playerOldY
        sta playerY

        rts



collisionCheckPlayerWithObject entry

        lda >objectRoomList,x
        asl a
        cmp currentRoom
        beq doChecks
        rts

doChecks anop

        lda >objectPositionXList,x
        sta testRectLeft

        lda >objectPositionYList,x
        sta testRectTop

        jsr getWidthForObjectState
        clc
        adc testRectLeft
        sta testRectRight

        jsr getHeightForObjectState
        clc
        adc testRectTop
        sta testRectBottom


; check playerRectLeft > testRectRight

        lda playerRectLeft
        cmp testRectRight
        bcs noIntersect

; check playerRectRight < testRectLeft

        lda testRectLeft
        cmp playerRectRight
        bcs noIntersect

; check playerRectTop > testRectBottom

        lda playerRectTop
        cmp testRectBottom
        bcs noIntersect

; check playerRectBottom < testRectTop

        lda testRectTop
        cmp playerRectBottom
        bcs noIntersect

        bra itsAHit

noIntersect anop
        lda #0
        rts

itsAHit anop
        lda #1
        rts




rowCounter dc i2'0'

playerRectLeft dc i2'0'
playerRectRight dc i2'0'
playerRectTop dc i2'0'
playerRectBottom dc i2'0'

testRectLeft dc i2'0'
testRectRight dc i2'0'
testRectTop dc i2'0'
testRectBottom dc i2'0'

hitObjectX dc i2'0'
hitObjectY dc i2'0'

        end


