;
;  dragons.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/19/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

dragons start
        using globalData
        using objectData
        using collisionData
        using gameData
        using roomsData
        using playerData


runDragons entry

        ldx #OBJECT_YELLOWDRAGON
        jsr runDragon

        ldx #OBJECT_GREENDRAGON
        jsr runDragon

        ldx #OBJECT_REDDRAGON
        jsr runDragon

        rts


runDragon entry

        jsr getDragonState
        cmp #STATE_ALIVE
        beq stateAlive
        cmp #STATE_ROAR
        beq stateRoar
        cmp #STATE_DEAD
        beq stateDead
        cmp #STATE_EATEN
        beq stateEaten
        bra runDone

; ------------------------------------------------------------
stateAlive anop

; has the player hit the dragon?

; has the sword hit the dragon?

        lda #OBJECT_SWORD
        sta hitTestObjectA
        txa
        sta hitTestObjectB
        jsr collisionCheckObjects
        cmp #0
        beq notTouchingSword

; make it dead X_X
        lda #2
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x
        ldy #STATE_DEAD
        jsr setDragonState
        jsr zeroDragonMove

        bra runDone

notTouchingSword anop

; seek / flee objects
        jsr dragonSeekFlee

; move dragon
        jsr dragonMove

        bra runDone

; ------------------------------------------------------------
stateRoar anop

        bra runDone

; ------------------------------------------------------------
stateDead anop

        bra runDone

; ------------------------------------------------------------
stateEaten anop

        bra runDone

; ------------------------------------------------------------
runDone anop

        rts



dragonMove entry

        txa
        cmp #OBJECT_GREENDRAGON
        beq moveGreen
        cmp #OBJECT_YELLOWDRAGON
        beq moveYellow
        cmp #OBJECT_REDDRAGON
        beq moveRed
        rts

moveGreen anop
        jsr greenDragonGetMovementX
        sta greenDragonMoveX
        jsr greenDragonGetMovementY
        sta greenDragonMoveY

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x

        lda >objectPositionXList,x
        clc
        adc greenDragonMoveX
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        clc
        adc greenDragonMoveY
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x

        rts

moveYellow anop

        jsr yellowDragonGetMovementX
        sta yellowDragonMoveX
        jsr yellowDragonGetMovementY
        sta yellowDragonMoveY

        lda >objectPositionXList,x
        sta >objectPositionOldXList,x

        lda >objectPositionYList,x
        sta >objectPositionOldYList,x

        lda >objectPositionXList,x
        clc
        adc yellowDragonMoveX
        sta >objectPositionXList,x

        lda >objectPositionYList,x
        clc
        adc yellowDragonMoveY
        sta >objectPositionYList,x

        lda #1
        sta >objectDirtyList,x

        rts

moveRed anop
        rts


; -----------------------------------

yellowDragonGetMovementX entry

        lda seekDir
        cmp #1
        beq yellowGetMovementXSeek
        cmp #-1
        beq yellowGetMovementXFlee
        lda yellowDragonMoveX
        rts

yellowGetMovementXSeek anop

        ldx #OBJECT_YELLOWDRAGON

        lda seekX
        cmp >objectPositionXList,x
        beq yellowSeekXDone
        bcs yellowMoveXSeek

        lda #-3
        rts

yellowMoveXSeek anop
        lda #3
        rts

yellowSeekXDone anop
        lda #0
        rts

yellowGetMovementXFlee anop

        ldx #OBJECT_YELLOWDRAGON

        lda seekX
        cmp >objectPositionXList,x
        beq yellowFleeXDone
        bcs yellowMoveXFlee

        lda #3
        rts

yellowMoveXFlee anop
        lda #-3
        rts

yellowFleeXDone anop
        lda #0
        rts



yellowDragonGetMovementY entry

        lda seekDir
        cmp #1
        beq yellowGetMovementYSeek
        cmp #-1
        beq yellowGetMovementYFlee
        lda yellowDragonMoveY
        rts

yellowGetMovementYSeek anop

        ldx #OBJECT_YELLOWDRAGON

        lda seekY
        cmp >objectPositionYList,x
        beq yellowSeekYDone
        bcs yellowMoveYSeek

        lda #-3
        rts

yellowMoveYSeek anop
        lda #3
        rts

yellowSeekYDone anop
        lda #0
        rts

yellowGetMovementYFlee anop

        ldx #OBJECT_YELLOWDRAGON

        lda seekY
        cmp >objectPositionYList,x
        beq yellowFleeYDone
        bcs yellowMoveYFlee

        lda #3
        rts

yellowMoveYFlee anop
        lda #-3
        rts

yellowFleeYDone anop
        lda #0
        rts


; -----------------------------------

greenDragonGetMovementX entry

        lda seekDir
        cmp #1
        beq greenGetMovementXSeek
        cmp #-1
        beq greenGetMovementXFlee
        lda greenDragonMoveX
        rts

greenGetMovementXSeek anop

        ldx #OBJECT_GREENDRAGON

        lda seekX
        cmp >objectPositionXList,x
        beq greenSeekXDone
        bcs greenMoveXSeek

        lda #-3
        rts

greenMoveXSeek anop
        lda #3
        rts

greenSeekXDone anop
        lda #0
        rts

greenGetMovementXFlee anop

        ldx #OBJECT_GREENDRAGON

        lda seekX
        cmp >objectPositionXList,x
        beq greenFleeXDone
        bcs greenMoveXFlee

        lda #3
        rts

greenMoveXFlee anop
        lda #-3
        rts

greenFleeXDone anop
        lda #0
        rts



greenDragonGetMovementY entry

        lda seekDir
        cmp #1
        beq greenGetMovementYSeek
        cmp #-1
        beq greenGetMovementYFlee
        lda greenDragonMoveY
        rts

greenGetMovementYSeek anop

        ldx #OBJECT_GREENDRAGON

        lda seekY
        cmp >objectPositionYList,x
        beq greenSeekYDone
        bcs greenMoveYSeek

        lda #-3
        rts

greenMoveYSeek anop
        lda #3
        rts

greenSeekYDone anop
        lda #0
        rts

greenGetMovementYFlee anop

        ldx #OBJECT_GREENDRAGON

        lda seekY
        cmp >objectPositionYList,x
        beq greenFleeYDone
        bcs greenMoveYFlee

        lda #3
        rts

greenMoveYFlee anop
        lda #-3
        rts

greenFleeYDone anop
        lda #0
        rts



dragonSeekFlee entry

; go through the dragon's object matrix/list
; right difficulty switch determines flee or don't flee from sword

        lda #0
        sta seekX
        sta seekY
        sta seekDir

        txa
        cmp #OBJECT_GREENDRAGON
        beq getMatrixGreen
        cmp #OBJECT_YELLOWDRAGON
        beq getMatrixYellow
        cmp #OBJECT_REDDRAGON
        beq getMatrixRed
        rts

getMatrixGreen anop
        jsr getGreenDragonSeekFlee
        rts

getMatrixYellow anop
        jsr getYellowDragonSeekFlee
        rts

getMatrixRed anop
;        jsr getRedDragonSeekFlee
        rts




getGreenDragonSeekFlee entry

        lda gameDifficultyRight
        asl a
        tay

greenLoop anop

        lda greenDragonFleeList,y
        cmp #OBJECT_NONE
        bne greenContinue
        rts

greenContinue anop

        sta fleeObject

        lda greenDragonSeekList,y
        sta seekObject

        lda fleeObject
        cmp #OBJECT_GREENDRAGON
        beq greenSeek

; fleeing

        stx savex
        ldx fleeObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne greenNextShort
        bra greenFlee

greenNextShort anop
        brl greenNext

greenFlee anop


        stx savex
        ldx fleeObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne greenNext

        lda #-1
        sta seekDir
        lda targetX
        sta seekX
        lda targetY
        sta seekY

        rts

; seeking

greenSeek anop

        lda seekObject
        cmp #OBJECT_GREENDRAGON
        beq greenNext
        cmp #OBJECT_PLAYER
        bne greenSeekObject

; seeking the player

        lda >objectRoomList,x
        cmp currentRoom
        bne greenSeekObject

        lda #1
        sta seekDir

        lda playerX
        sta seekX
        lda playerY
        sta seekY

        rts

; seeking an object

greenSeekObject anop

        stx savex
        ldx seekObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne greenNext

        lda #1
        sta seekDir
        lda targetX
        sta seekX
        lda targetY
        sta seekY

        rts

greenNext anop

        iny
        iny
        jmp greenLoop


; ----------------------------------



getYellowDragonSeekFlee entry

        lda gameDifficultyRight
        asl a
        tay

yellowLoop anop

        lda yellowDragonFleeList,y
        cmp #OBJECT_NONE
        bne yellowContinue
        rts

yellowContinue anop

        sta fleeObject

        lda yellowDragonSeekList,y
        sta seekObject

        lda fleeObject
        cmp #OBJECT_YELLOWDRAGON
        beq yellowSeek

; fleeing

        stx savex
        ldx fleeObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne yellowNextShort
        bra yellowFlee

yellowNextShort anop
        brl yellowNext

yellowFlee anop


        stx savex
        ldx fleeObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne yellowNext

        lda #-1
        sta seekDir
        lda targetX
        sta seekX
        lda targetY
        sta seekY

        rts

; seeking

yellowSeek anop

        lda seekObject
        cmp #OBJECT_YELLOWDRAGON
        beq yellowNext
        cmp #OBJECT_PLAYER
        bne yellowSeekObject

; seeking the player

        lda >objectRoomList,x
        cmp currentRoom
        bne yellowSeekObject

        lda #1
        sta seekDir

        lda playerX
        sta seekX
        lda playerY
        sta seekY

        rts

; seeking an object

yellowSeekObject anop

        stx savex
        ldx seekObject
        lda >objectRoomList,x
        sta targetRoom
        lda >objectPositionXList,x
        sta targetX
        lda >objectPositionYList,x
        sta targetY
        ldx savex

        lda >objectRoomList,x
        cmp targetRoom
        bne yellowNext

        lda #1
        sta seekDir
        lda targetX
        sta seekX
        lda targetY
        sta seekY

        rts

yellowNext anop

        iny
        iny
        jmp yellowLoop



setDragonState entry
        txa
        cmp #OBJECT_GREENDRAGON
        beq setStateGreen
        cmp #OBJECT_YELLOWDRAGON
        beq setStateYellow
        cmp #OBJECT_REDDRAGON
        beq setStateRed
        rts

setStateGreen anop
        tya
        sta greenDragonState
        rts

setStateYellow anop
        tya
        sta yellowDragonState
        rts

setStateRed anop
        tya
        sta redDragonState
        rts


getDragonState entry
        txa
        cmp #OBJECT_GREENDRAGON
        beq getStateGreen
        cmp #OBJECT_YELLOWDRAGON
        beq getStateYellow
        cmp #OBJECT_REDDRAGON
        beq getStateRed
        rts

getStateGreen anop
        tya
        lda greenDragonState
        rts

getStateYellow anop
        tya
        lda yellowDragonState
        rts

getStateRed anop
        tya
        lda redDragonState
        rts


zeroDragonMove entry
        txa
        cmp #OBJECT_GREENDRAGON
        beq setStateGreen
        cmp #OBJECT_YELLOWDRAGON
        beq setStateYellow
        cmp #OBJECT_REDDRAGON
        beq setStateRed
        rts

zeroMoveGreen anop
        lda #0
        sta greenDragonMoveX
        sta greenDragonMoveY
        rts

zeroMoveYellow anop
        lda #0
        sta yellowDragonMoveX
        sta yellowDragonMoveY
        rts

zeroMoveRed anop
        lda #0
        sta redDragonMoveX
        sta redDragonMoveY
        rts


; Green Dragon's Object Matrix

greenDragonFleeList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_NONE'

greenDragonSeekList anop
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_PLAYER'
        dc i2'OBJECT_CHALISE'
        dc i2'OBJECT_BRIDGE'
        dc i2'OBJECT_MAGNET'
        dc i2'OBJECT_BLACKKEY'
        dc i2'OBJECT_NONE'

; Yellow Dragon's Object Matrix

yellowDragonFleeList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_YELLOWKEY'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_NONE'

yellowDragonSeekList anop
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_PLAYER'
        dc i2'OBJECT_CHALISE'
        dc i2'OBJECT_NONE'

; Red Dragon's Object Matrix

redDragonFleeList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_NONE'

redDragonSeekList anop
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_PLAYER'
        dc i2'OBJECT_CHALISE'
        dc i2'OBJECT_WHITEKEY'
        dc i2'OBJECT_NONE'


greenDragonTimer dc i2'0'
yellowDragonTimer dc i2'0'
redDragonTimer dc i2'0'

greenDragonMoveX dc i2'0'
greenDragonMoveY dc i2'0'

yellowDragonMoveX dc i2'0'
yellowDragonMoveY dc i2'0'

redDragonMoveX dc i2'0'
redDragonMoveY dc i2'0'


fleeObject dc i2'0'
seekObject dc i2'0'


seekDir dc i2'0'
seekX dc i2'0'
seekY dc i2'0'

targetRoom dc i2'0'
targetX dc i2'0'
targetY dc i2'0'

greenDragonState dc i2'STATE_ALIVE'
yellowDragonState dc i2'STATE_ALIVE'
redDragonState dc i2'STATE_ALIVE'

STATE_ALIVE gequ 0
STATE_DEAD gequ 1
STATE_ROAR gequ 2
STATE_EATEN gequ 3

savex dc i2'0'

        end
