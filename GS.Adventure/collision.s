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
        using collisionData


collisionCheckPlayerWithWalls entry

        lda #0
        sta goingThroughWall

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

        lda crossingBridge
        cmp #1
        beq setGoingThroughWall

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

setGoingThroughWall anop

        lda #0
        sta playerHitWall
        
        lda #1
        sta goingThroughWall
        
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
        beq hitObjectShortJump

        ldx #OBJECT_WHITEKEY
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObjectShortJump

        ldx #OBJECT_BLACKKEY
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObjectShortJump

        ldx #OBJECT_YELLOWDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObjectShortJump

        ldx #OBJECT_GREENDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObjectShortJump

        ldx #OBJECT_REDDRAGON
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObjectShortJump

        bra continue

hitObjectShortJump anop
        brl hitObject

continue anop

        lda #0
        sta crossingBridge
        ldx #OBJECT_BRIDGE
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitBridge

        ldx #OBJECT_SWORD
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_MAGNET
        jsr collisionCheckPlayerWithObject
        cmp #1
        beq hitObject

        ldx #OBJECT_CHALISE
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

; bat?

        rts
        
hitBridge anop
        jsr checkBridgeCollision
        cmp #1
        beq hitObject
        rts

hitObject anop
        txa
        sta playerHitObject

        lda >objectLinkableList,x
        cmp #1
        bne hitNonLinkableObjectShort
        bra hitLinkableObject

hitNonLinkableObjectShort anop
        brl hitNonLinkableObject

hitLinkableObject anop

        ldx #OBJECT_PLAYER
        lda >objectLinkedObjectList,x
        cmp playerHitObject
        beq hitCarriedObjectShort
        bra pickUpObject

hitCarriedObjectShort anop
        brl hitCarriedObject

pickUpObject anop

; Pick up the object!

        lda playerHitObject
        sta >objectLinkedObjectList,x

        ldx playerHitObject

        lda >objectPositionXList,x
        sta hitObjectX

        lda >objectPositionYList,x
        sta hitObjectY

        ldx #OBJECT_PLAYER


        lda playerX
        clc
        adc playerOldX
        lsr a
        sta playerAvgX

        lda playerY
        clc
        adc playerOldY
        lsr a
        sta playerAvgY


        lda hitObjectX
        sec
        sbc playerAvgX
        sta >objectLinkedObjectXOffsetList,x

        lda hitObjectY
        sec
        sbc playerAvgY
        sta >objectLinkedObjectYOffsetList,x

        rts

hitCarriedObject anop

        tax

        lda playerX
        sec
        sbc playerOldX
        bmi xIsNeg
        lsr a
        sta diffX
        bra xIsPos
xIsNeg anop
        eor #$ffff
        inc a
        lsr a
        eor #$ffff
        inc a
        sta diffX
xIsPos anop

        lda playerY
        sec
        sbc playerOldY
        bmi yIsNeg
        lsr a
        sta diffY
        bra yIsPos
yIsNeg anop
        eor #$ffff
        inc a
        lsr a
        eor #$ffff
        inc a
        sta diffY
yIsPos anop

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x
        clc
        adc diffX
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x
        clc
        adc diffY
        sta >objectPositionYList,x
        
        lda #1
        sta >objectDirtyList,x
        jsl eraseRoomSprites

        lda #OBJECT_NONE
        sta playerHitObject
        
        rts

hitNonLinkableObject anop

; check for player going into castles
        jsl checkCastles

; mark it dirty
        lda #1
        ldx playerHitObject
        sta >objectDirtyList,x

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
        cmp currentRoom
        beq doChecks
        lda #0
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




collisionCheckObjects entry

; dont compare an object against itself
        lda hitTestObjectA
        cmp hitTestObjectB
        bne checkRooms
        lda #0
        rts

checkRooms anop

; make sure the two objects are in the same room

        ldx hitTestObjectA
        lda >objectRoomList,x
        sta temp

        ldx hitTestObjectB
        lda >objectRoomList,x
        cmp temp
        beq doChecks2
        lda #0
        rts

doChecks2 anop

; --------------

        ldx hitTestObjectA

        lda >objectPositionXList,x
        sta testRect1Left

        lda >objectPositionYList,x
        sta testRect1Top

        jsr getWidthForObjectState
        clc
        adc testRect1Left
        sta testRect1Right

        jsr getHeightForObjectState
        clc
        adc testRect1Top
        sta testRect1Bottom

; --------------

        ldx hitTestObjectB

        lda >objectPositionXList,x
        sta testRect2Left

        lda >objectPositionYList,x
        sta testRect2Top

        jsr getWidthForObjectState
        clc
        adc testRect2Left
        sta testRect2Right

        jsr getHeightForObjectState
        clc
        adc testRect2Top
        sta testRect2Bottom

; --------------

; check rect1 left > rect2 right

        lda testRect1Left
        cmp testRect2Right
        bcs noIntersect2

; check rect1 right < rect2 left

        lda testRect2Left
        cmp testRect1Right
        bcs noIntersect2

; check rect1 top > rect2 bottom

        lda testRect1Top
        cmp testRect2Bottom
        bcs noIntersect2

; check rect1 bottom < rect2 top

        lda testRect2Top
        cmp testRect1Bottom
        bcs noIntersect2

        bra itsAHit2

noIntersect2 anop
        lda #0
        rts

itsAHit2 anop
        lda #1
        rts



checkAllObjectsForOverlap entry

        lda #OBJECT_YELLOWKEY
        jsr collisionCheckAllObjects
        ldy #OBJECT_YELLOWKEY
        cmp #1
        beq hitObjectShortJump2

        lda #OBJECT_WHITEKEY
        jsr collisionCheckAllObjects
        ldy #OBJECT_WHITEKEY
        cmp #1
        beq hitObjectShortJump2

        lda #OBJECT_BLACKKEY
        jsr collisionCheckAllObjects
        ldy #OBJECT_BLACKKEY
        cmp #1
        beq hitObjectShortJump2

        lda #OBJECT_YELLOWDRAGON
        jsr collisionCheckAllObjects
        ldy #OBJECT_YELLOWDRAGON
        cmp #1
        beq hitObjectShortJump2

        lda #OBJECT_GREENDRAGON
        jsr collisionCheckAllObjects
        ldy #OBJECT_GREENDRAGON
        cmp #1
        beq hitObjectShortJump2

        lda #OBJECT_REDDRAGON
        jsr collisionCheckAllObjects
        ldy #OBJECT_REDDRAGON
        cmp #1
        beq hitObjectShortJump2

        bra continue2

hitObjectShortJump2 anop
        brl hitObject2

continue2 anop

        lda #OBJECT_BRIDGE
        jsr collisionCheckAllObjects
        ldy #OBJECT_BRIDGE
        cmp #1
        beq hitObject2

        lda #OBJECT_SWORD
        jsr collisionCheckAllObjects
        ldy #OBJECT_SWORD
        cmp #1
        beq hitObject2

        lda #OBJECT_MAGNET
        jsr collisionCheckAllObjects
        ldy #OBJECT_MAGNET
        cmp #1
        beq hitObject2

        lda #OBJECT_CHALISE
        jsr collisionCheckAllObjects
        ldy #OBJECT_CHALISE
        cmp #1
        beq hitObject2

        lda #OBJECT_PORT1
        jsr collisionCheckAllObjects
        ldy #OBJECT_PORT1
        cmp #1
        beq hitObject2

        lda #OBJECT_PORT2
        jsr collisionCheckAllObjects
        ldy #OBJECT_PORT2
        cmp #1
        beq hitObject2

        lda #OBJECT_PORT3
        jsr collisionCheckAllObjects
        ldy #OBJECT_PORT3
        cmp #1
        beq hitObject2

; bat?

        rts

hitObject2 anop
        tyx
        lda #1
        sta >objectDirtyList,x
        rts



collisionCheckAllObjects entry

        sta hitTestObjectA

        lda #OBJECT_YELLOWKEY
        ldy #OBJECT_YELLOWKEY
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        lda #OBJECT_WHITEKEY
        ldy #OBJECT_WHITEKEY
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        lda #OBJECT_BLACKKEY
        ldy #OBJECT_BLACKKEY
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        lda #OBJECT_YELLOWDRAGON
        ldy #OBJECT_YELLOWDRAGON
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        lda #OBJECT_GREENDRAGON
        ldy #OBJECT_GREENDRAGON
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        lda #OBJECT_REDDRAGON
        ldy #OBJECT_REDDRAGON
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObjectShortJump3

        bra continue3

hitObjectShortJump3 anop
        brl hitObject3

continue3 anop

        lda #OBJECT_BRIDGE
        ldy #OBJECT_BRIDGE
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_SWORD
        ldy #OBJECT_SWORD
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_MAGNET
        ldy #OBJECT_MAGNET
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_CHALISE
        ldy #OBJECT_CHALISE
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_PORT1
        ldy #OBJECT_PORT1
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_PORT2
        ldy #OBJECT_PORT2
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

        lda #OBJECT_PORT3
        ldy #OBJECT_PORT3
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #1
        beq hitObject3

; bat?

        lda #0
        rts

hitObject3 anop
        tyx
        lda #1
        sta >objectDirtyList,x
        lda #1
        rts



checkBridgeCollision entry

        ldx #OBJECT_BRIDGE
        lda >objectPositionXList,x
        clc
        adc #15
        sta bridgeInnerLeft
        
        lda >objectPositionXList,x
        clc
        adc #OBJECT_WIDTH_BRIDGE
        sec
        sbc #25
        sta bridgeInnerRight
        
        lda playerX
        cmp bridgeInnerLeft
        bcs bridgePassLeft
        lda #1
        rts
        
bridgePassLeft anop
        lda bridgeInnerRight
        cmp playerX
        bcs bridgePassRight
        lda #1
        rts
        
bridgePassRight anop
        lda #1
        sta crossingBridge
        lda #0
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

testRect1Left dc i2'0'
testRect1Right dc i2'0'
testRect1Top dc i2'0'
testRect1Bottom dc i2'0'

testRect2Left dc i2'0'
testRect2Right dc i2'0'
testRect2Top dc i2'0'
testRect2Bottom dc i2'0'

hitObjectX dc i2'0'
hitObjectY dc i2'0'

bridgeInnerLeft dc i2'0'
bridgeInnerRight dc i2'0'

temp dc i2'0'

savex dc i2'0'

playerAvgX dc i2'0'
playerAvgY dc i2'0'

diffX dc i2'0'
diffY dc i2'0'

        end

collisionData data

hitTestObjectA dc i2'0'
hitTestObjectB dc i2'0'

crossingBridge dc i2'0'
goingThroughWall dc i2'0'

        end


