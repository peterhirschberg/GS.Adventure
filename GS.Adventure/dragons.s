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


runDragons entry

        ldx #OBJECT_YELLOWDRAGON
        jsr runDragon

        ldx #OBJECT_GREENDRAGON
        jsr runDragon

        ldx #OBJECT_REDDRAGON
        jsr runDragon

        rts


runDragon entry

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
        rts

notTouchingSword anop

; go through the dragon's object matrix/list

; difficulty switch determines flee or don't flee from sword

        rts


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

greenDragonAvoidList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_NONE'

greenDragonFollowList anop
        dc i2'OBJECT_GREENDRAGON'
        dc i2'OBJECT_PLAYER'
        dc i2'OBJECT_CHALISE'
        dc i2'OBJECT_BRIDGE'
        dc i2'OBJECT_MAGNET'
        dc i2'OBJECT_BLACKKEY'
        dc i2'OBJECT_NONE'

; Yellow Dragon's Object Matrix

yellowDragonAvoidList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_YELLOWKEY'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_NONE'

yellowDragonFollowList anop
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_YELLOWDRAGON'
        dc i2'OBJECT_PLAYER'
        dc i2'OBJECT_CHALISE'
        dc i2'OBJECT_NONE'

; Red Dragon's Object Matrix

redDragonAvoidList anop
        dc i2'OBJECT_SWORD'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_REDDRAGON'
        dc i2'OBJECT_NONE'

redDragonFollowList anop
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

greenDragonState dc i2'STATE_ALIVE'
yellowDragonState dc i2'STATE_ALIVE'
redDragonState dc i2'STATE_ALIVE'

STATE_ALIVE gequ 0
STATE_DEAD gequ 1
STATE_ROAR gequ 2
STATE_EATEN gequ 3

        end
