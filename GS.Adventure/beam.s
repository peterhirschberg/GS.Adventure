;
;  beam.s
;  GS.Adventure
;
;  Created by Peter Hirschberg on 7/2/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

; Code is from https://iigs.dreamhosters.com/gte/blitter.html


        case on


beam start
        using beamData

beamSync entry
SyncVBL       anop
          lda   >$E0C02E               ; load the counter value
	      and   #$80FF                 ; mask out the VBL bits
	      asl   a                      ; shift the word around
	      adc   #0			           ; move MSB -> LSB
	      sec
	      sbc   #$00FA                 ; translate to range [$0 - $105]
	      cmp   mintbl,y
	      bcc   SyncOut
	      cmp   maxtbl,y
	      bcc   SyncVBL
SyncOut	      anop
          rts

        end


beamData data


;-- mintable & maxtable ---------------------------------------------------
;
; Store the range of OK lines for a given VBL line
; The table has a range of $0 - $105 (262 entries)
; The first entry equates to a physical line of -6 to 255
; each min/max pair mean that we can't draw if the physical line is
; between them: i.e. VBL = 2 --> bad range = [0,10]

mintbl   entry
         dc    i2'0, 0, 0, 0, 0, 0'                             ; -6 to -1
         dc    i2'0, 1, 2, 3, 4, 5, 6, 7, 8, 9'                 ;  0 to  9
         dc    i2'10,11,12,13,14,15,16,17,18,19'                ; 10 to 19
         dc    i2'20,21,22,23,24,25,26,27,28,29'                ; 20 to 29
         dc    i2'30,31,32,33,34,35,36,37,38,39'                ; 30 to 39
         dc    i2'40,41,42,43,44,45,46,47,48,49'                ; 40 to 49
         dc    i2'50,51,52,53,54,55,56,57,58,59'                ; 50 to 59
         dc    i2'60,61,62,63,64,65,66,67,68,69'                ; 60 to 69
         dc    i2'70,71,72,73,74,75,76,77,78,79'                ; 70 to 79
         dc    i2'80,81,82,83,84,85,86,87,88,89'                ; 80 to 89
         dc    i2'90,91,92,93,94,95,96,97,98,99'                ; 90 to 99
         dc    i2'100,101,102,103,104,105,106,107,108,109'      ; 100 to 109
         dc    i2'110,111,112,113,114,115,116,117,118,119'      ; 110 to 119
         dc    i2'120,121,122,123,124,125,126,127,128,129'      ; 120 to 129
         dc    i2'130,131,132,133,134,135,136,137,138,139'      ; 130 to 139
         dc    i2'140,141,142,143,144,145,146,147,148,149'      ; 140 to 149
         dc    i2'150,151,152,153,154,155,156,157,158,159'      ; 150 to 159
         dc    i2'160,161,162,163,164,165,166,167,168,169'      ; 160 to 169
         dc    i2'170,171,172,173,174,175,176,177,178,179'      ; 170 to 179
         dc    i2'180,181,182,183,184,185,186,187,188,189'      ; 180 to 189
         dc    i2'190,191,192,193,194,195,196,197,198,199'      ; 190 to 199
         dc    i2'200,200,200,200,200,200,200,200,200,200'      ; 200 to 209
         dc    i2'200,200,200,200,200,200,200,200,200,200'      ; 210 to 219
         dc    i2'200,200,200,200,200,200,200,200,200,200'      ; 220 to 229
         dc    i2'200,200,200,200,200,200,200,200,200,200'      ; 230 to 239
         dc    i2'200,200,200,200,200,200,200,200,200,  0'      ; 240 to 249
         dc    i2'0,  0,  0,  0,  0,  0'                        ; 250 to -7
;                 250,251,252,253,254,255


maxtbl   entry
	     dc    i2'8, 9, 10,11,12,13'                            ; -6 to -1
         dc    i2'14,15,16,17,18,19,20,21,22,23'                ;  0 to 9
         dc    i2'24,25,26,27,28,29,30,31,32,33'                ;  10 to 19
         dc    i2'34,35,36,37,38,39,40,41,42,43'                ;  20 to 29
         dc    i2'44,45,46,47,48,49,50,51,52,53'                ;  30 to 39
         dc    i2'54,55,56,57,58,59,60,61,62,63'                ;  40 to 49
         dc    i2'64,65,66,67,68,69,70,71,72,73'                ;  50 to 59
         dc    i2'74,75,76,77,78,79,80,81,82,83'                ;  60 to 69
         dc    i2'84,85,86,87,88,89,90,91,92,93'                ;  70 to 79
         dc    i2'94,95,96,97,98,99,100,101,102,103'            ;  80 to 89
         dc    i2'104,105,106,107,108,109,110,111,112,113'      ;  90 to 99
         dc    i2'114,115,116,117,118,119,120,121,122,123'      ;  100 to 109
         dc    i2'124,125,126,127,128,129,130,131,132,133'      ;  110 to 119
         dc    i2'134,135,136,137,138,139,140,141,142,143'      ;  120 to 129
         dc    i2'144,145,146,147,148,149,150,151,152,153'      ;  130 to 139
         dc    i2'154,155,156,157,158,159,160,161,162,163'      ;  140 to 149
         dc    i2'164,165,166,167,168,169,170,171,172,173'      ;  150 to 159
         dc    i2'174,175,176,177,178,179,180,181,182,183'      ;  160 to 169
         dc    i2'184,185,186,187,188,189,190,191,192,193'      ;  170 to 179
         dc    i2'194,195,196,197,198,199,200,200,200,200'      ;  180 to 189
         dc    i2'200,200,200,200,200,200,200,200,200,200'      ;  190 to 199
         dc    i2'0,  0,  0,  0,  0,  0,  0,  0,  0,  0'        ;  200 to 209
         dc    i2'0,  0,  0,  0,  0,  0,  0,  0,  0,  0'        ;  210 to 219
         dc    i2'0,  0,  0,  0,  0,  0,  0,  0,  0,  0'        ;  220 to 229
         dc    i2'0,  0,  0,  0,  0,  0,  0,  0,  0,  0'        ;  230 to 239
         dc    i2'0,  0,  0,  0,  0,  0,  0,  0,  0,  1'        ;  240 to 249
         dc    i2'2,  3,  4,  5,  6,  7'                        ;  250 to -7
;                 250,251,252,253,254,255
;         end

        end