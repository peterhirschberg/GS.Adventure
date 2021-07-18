;
;  portals.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/18/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;


        case on

portals start
        using globalData
        using gameData
        using playerData
        using objectData
        using collisionData


runPortals entry

; do hit testing with keys

        lda #OBJECT_YELLOWKEY
        sta hitTestObjectB
        lda #OBJECT_PORT1
        sta hitTestObjectA
        jsr collisionCheckObjects
        cmp #1
        bne hitTestDone
  
        ldx #OBJECT_PORT1
        lda #6
        sta >objectStateList,x
        lda #1
        sta >objectDirtyList,x

hitTestDone anop

; run the portal states up and down


        rts



        end
