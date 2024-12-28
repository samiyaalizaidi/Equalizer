`timescale 1ns / 1ps

module phase_to_amplitude_converter(
    reset,   // reset signal
    phase,   // 10-bit phase accumulator
    data_sin // output sine wave values   
    );

    input reset;
          
    input  [9:0] phase;
    
    output signed [9:0] data_sin;
    reg signed  [9:0] data_sin;
    
    always @ (*) begin
              
        if (reset) begin
            data_sin = 10'sd0;
        end
        
        // Verilog code generated from sine lookup table
        
        // bin 1
        else if (phase >= 0 && phase < 3) begin
            data_sin = 10'sd0;
        end
        
        // bin 2
        else if (phase >= 3 && phase < 6) begin
            data_sin = 10'sd9;
        end
        
        // bin 3
        else if (phase >= 6 && phase < 9) begin
            data_sin = 10'sd18;
        end
        
        // bin 4
        else if (phase >= 9 && phase < 12) begin
            data_sin = 10'sd28;
        end
        
        // bin 5
        else if (phase >= 12 && phase < 15) begin
            data_sin = 10'sd37;
        end
        
        // bin 6
        else if (phase >= 15 && phase < 18) begin
            data_sin = 10'sd47;
        end
        
        // bin 7
        else if (phase >= 18 && phase < 21) begin
            data_sin = 10'sd56;
        end
        
        // bin 8
        else if (phase >= 21 && phase < 24) begin
            data_sin = 10'sd65;
        end
        
        // bin 9
        else if (phase >= 24 && phase < 27) begin
            data_sin = 10'sd75;
        end
        
        // bin 10
        else if (phase >= 27 && phase < 30) begin
            data_sin = 10'sd84;
        end
        
        // bin 11
        else if (phase >= 30 && phase < 33) begin
            data_sin = 10'sd93;
        end
        
        // bin 12
        else if (phase >= 33 && phase < 36) begin
            data_sin = 10'sd102;
        end
        
        // bin 13
        else if (phase >= 36 && phase < 39) begin
            data_sin = 10'sd112;
        end
        
        // bin 14
        else if (phase >= 39 && phase < 42) begin
            data_sin = 10'sd121;
        end
        
        // bin 15
        else if (phase >= 42 && phase < 45) begin
            data_sin = 10'sd130;
        end
        
        // bin 16
        else if (phase >= 45 && phase < 48) begin
            data_sin = 10'sd139;
        end
        
        // bin 17
        else if (phase >= 48 && phase < 51) begin
            data_sin = 10'sd148;
        end
        
        // bin 18
        else if (phase >= 51 && phase < 54) begin
            data_sin = 10'sd157;
        end
        
        // bin 19
        else if (phase >= 54 && phase < 57) begin
            data_sin = 10'sd166;
        end
        
        // bin 20
        else if (phase >= 57 && phase < 60) begin
            data_sin = 10'sd175;
        end
        
        // bin 21
        else if (phase >= 60 && phase < 63) begin
            data_sin = 10'sd184;
        end
        
        // bin 22
        else if (phase >= 63 && phase < 66) begin
            data_sin = 10'sd193;
        end
        
        // bin 23
        else if (phase >= 66 && phase < 69) begin
            data_sin = 10'sd201;
        end
        
        // bin 24
        else if (phase >= 69 && phase < 72) begin
            data_sin = 10'sd210;
        end
        
        // bin 25
        else if (phase >= 72 && phase < 75) begin
            data_sin = 10'sd218;
        end
        
        // bin 26
        else if (phase >= 75 && phase < 78) begin
            data_sin = 10'sd227;
        end
        
        // bin 27
        else if (phase >= 78 && phase < 81) begin
            data_sin = 10'sd235;
        end
        
        // bin 28
        else if (phase >= 81 && phase < 84) begin
            data_sin = 10'sd244;
        end
        
        // bin 29
        else if (phase >= 84 && phase < 87) begin
            data_sin = 10'sd252;
        end
        
        // bin 30
        else if (phase >= 87 && phase < 90) begin
            data_sin = 10'sd260;
        end
        
        // bin 31
        else if (phase >= 90 && phase < 93) begin
            data_sin = 10'sd268;
        end
        
        // bin 32
        else if (phase >= 93 && phase < 96) begin
            data_sin = 10'sd276;
        end
        
        // bin 33
        else if (phase >= 96 && phase < 99) begin
            data_sin = 10'sd284;
        end
        
        // bin 34
        else if (phase >= 99 && phase < 102) begin
            data_sin = 10'sd292;
        end
        
        // bin 35
        else if (phase >= 102 && phase < 105) begin
            data_sin = 10'sd299;
        end
        
        // bin 36
        else if (phase >= 105 && phase < 108) begin
            data_sin = 10'sd307;
        end
        
        // bin 37
        else if (phase >= 108 && phase < 111) begin
            data_sin = 10'sd314;
        end
        
        // bin 38
        else if (phase >= 111 && phase < 114) begin
            data_sin = 10'sd322;
        end
        
        // bin 39
        else if (phase >= 114 && phase < 117) begin
            data_sin = 10'sd329;
        end
        
        // bin 40
        else if (phase >= 117 && phase < 120) begin
            data_sin = 10'sd336;
        end
        
        // bin 41
        else if (phase >= 120 && phase < 123) begin
            data_sin = 10'sd343;
        end
        
        // bin 42
        else if (phase >= 123 && phase < 126) begin
            data_sin = 10'sd350;
        end
        
        // bin 43
        else if (phase >= 126 && phase < 129) begin
            data_sin = 10'sd357;
        end
        
        // bin 44
        else if (phase >= 129 && phase < 132) begin
            data_sin = 10'sd364;
        end
        
        // bin 45
        else if (phase >= 132 && phase < 135) begin
            data_sin = 10'sd370;
        end
        
        // bin 46
        else if (phase >= 135 && phase < 138) begin
            data_sin = 10'sd377;
        end
        
        // bin 47
        else if (phase >= 138 && phase < 141) begin
            data_sin = 10'sd383;
        end
        
        // bin 48
        else if (phase >= 141 && phase < 144) begin
            data_sin = 10'sd389;
        end
        
        // bin 49
        else if (phase >= 144 && phase < 147) begin
            data_sin = 10'sd395;
        end
        
        // bin 50
        else if (phase >= 147 && phase < 150) begin
            data_sin = 10'sd401;
        end
        
        // bin 51
        else if (phase >= 150 && phase < 153) begin
            data_sin = 10'sd407;
        end
        
        // bin 52
        else if (phase >= 153 && phase < 156) begin
            data_sin = 10'sd412;
        end
        
        // bin 53
        else if (phase >= 156 && phase < 159) begin
            data_sin = 10'sd418;
        end
        
        // bin 54
        else if (phase >= 159 && phase < 162) begin
            data_sin = 10'sd423;
        end
        
        // bin 55
        else if (phase >= 162 && phase < 165) begin
            data_sin = 10'sd429;
        end
        
        // bin 56
        else if (phase >= 165 && phase < 168) begin
            data_sin = 10'sd434;
        end
        
        // bin 57
        else if (phase >= 168 && phase < 171) begin
            data_sin = 10'sd438;
        end
        
        // bin 58
        else if (phase >= 171 && phase < 174) begin
            data_sin = 10'sd443;
        end
        
        // bin 59
        else if (phase >= 174 && phase < 177) begin
            data_sin = 10'sd448;
        end
        
        // bin 60
        else if (phase >= 177 && phase < 180) begin
            data_sin = 10'sd452;
        end
        
        // bin 61
        else if (phase >= 180 && phase < 183) begin
            data_sin = 10'sd457;
        end
        
        // bin 62
        else if (phase >= 183 && phase < 186) begin
            data_sin = 10'sd461;
        end
        
        // bin 63
        else if (phase >= 186 && phase < 189) begin
            data_sin = 10'sd465;
        end
        
        // bin 64
        else if (phase >= 189 && phase < 192) begin
            data_sin = 10'sd469;
        end
        
        // bin 65
        else if (phase >= 192 && phase < 195) begin
            data_sin = 10'sd472;
        end
        
        // bin 66
        else if (phase >= 195 && phase < 198) begin
            data_sin = 10'sd476;
        end
        
        // bin 67
        else if (phase >= 198 && phase < 201) begin
            data_sin = 10'sd479;
        end
        
        // bin 68
        else if (phase >= 201 && phase < 204) begin
            data_sin = 10'sd482;
        end
        
        // bin 69
        else if (phase >= 204 && phase < 207) begin
            data_sin = 10'sd485;
        end
        
        // bin 70
        else if (phase >= 207 && phase < 210) begin
            data_sin = 10'sd488;
        end
        
        // bin 71
        else if (phase >= 210 && phase < 213) begin
            data_sin = 10'sd491;
        end
        
        // bin 72
        else if (phase >= 213 && phase < 216) begin
            data_sin = 10'sd493;
        end
        
        // bin 73
        else if (phase >= 216 && phase < 219) begin
            data_sin = 10'sd496;
        end
        
        // bin 74
        else if (phase >= 219 && phase < 222) begin
            data_sin = 10'sd498;
        end
        
        // bin 75
        else if (phase >= 222 && phase < 225) begin
            data_sin = 10'sd500;
        end
        
        // bin 76
        else if (phase >= 225 && phase < 228) begin
            data_sin = 10'sd502;
        end
        
        // bin 77
        else if (phase >= 228 && phase < 231) begin
            data_sin = 10'sd504;
        end
        
        // bin 78
        else if (phase >= 231 && phase < 234) begin
            data_sin = 10'sd505;
        end
        
        // bin 79
        else if (phase >= 234 && phase < 237) begin
            data_sin = 10'sd506;
        end
        
        // bin 80
        else if (phase >= 237 && phase < 240) begin
            data_sin = 10'sd508;
        end
        
        // bin 81
        else if (phase >= 240 && phase < 243) begin
            data_sin = 10'sd509;
        end
        
        // bin 82
        else if (phase >= 243 && phase < 246) begin
            data_sin = 10'sd509;
        end
        
        // bin 83
        else if (phase >= 246 && phase < 249) begin
            data_sin = 10'sd510;
        end
        
        // bin 84
        else if (phase >= 249 && phase < 252) begin
            data_sin = 10'sd511;
        end
        
        // bin 85
        else if (phase >= 252 && phase < 255) begin
            data_sin = 10'sd511;
        end
        
        // bin 86
        else if (phase >= 255 && phase < 258) begin
            data_sin = 10'sd511;
        end
        
        // bin 87
        else if (phase >= 258 && phase < 261) begin
            data_sin = 10'sd511;
        end
        
        // bin 88
        else if (phase >= 261 && phase < 264) begin
            data_sin = 10'sd511;
        end
        
        // bin 89
        else if (phase >= 264 && phase < 267) begin
            data_sin = 10'sd510;
        end
        
        // bin 90
        else if (phase >= 267 && phase < 270) begin
            data_sin = 10'sd510;
        end
        
        // bin 91
        else if (phase >= 270 && phase < 273) begin
            data_sin = 10'sd509;
        end
        
        // bin 92
        else if (phase >= 273 && phase < 276) begin
            data_sin = 10'sd508;
        end
        
        // bin 93
        else if (phase >= 276 && phase < 279) begin
            data_sin = 10'sd507;
        end
        
        // bin 94
        else if (phase >= 279 && phase < 282) begin
            data_sin = 10'sd506;
        end
        
        // bin 95
        else if (phase >= 282 && phase < 285) begin
            data_sin = 10'sd504;
        end
        
        // bin 96
        else if (phase >= 285 && phase < 288) begin
            data_sin = 10'sd503;
        end
        
        // bin 97
        else if (phase >= 288 && phase < 291) begin
            data_sin = 10'sd501;
        end
        
        // bin 98
        else if (phase >= 291 && phase < 294) begin
            data_sin = 10'sd499;
        end
        
        // bin 99
        else if (phase >= 294 && phase < 297) begin
            data_sin = 10'sd497;
        end
        
        // bin 100
        else if (phase >= 297 && phase < 300) begin
            data_sin = 10'sd495;
        end
        
        // bin 101
        else if (phase >= 300 && phase < 303) begin
            data_sin = 10'sd492;
        end
        
        // bin 102
        else if (phase >= 303 && phase < 306) begin
            data_sin = 10'sd490;
        end
        
        // bin 103
        else if (phase >= 306 && phase < 309) begin
            data_sin = 10'sd487;
        end
        
        // bin 104
        else if (phase >= 309 && phase < 312) begin
            data_sin = 10'sd484;
        end
        
        // bin 105
        else if (phase >= 312 && phase < 315) begin
            data_sin = 10'sd481;
        end
        
        // bin 106
        else if (phase >= 315 && phase < 318) begin
            data_sin = 10'sd478;
        end
        
        // bin 107
        else if (phase >= 318 && phase < 321) begin
            data_sin = 10'sd474;
        end
        
        // bin 108
        else if (phase >= 321 && phase < 324) begin
            data_sin = 10'sd470;
        end
        
        // bin 109
        else if (phase >= 324 && phase < 327) begin
            data_sin = 10'sd467;
        end
        
        // bin 110
        else if (phase >= 327 && phase < 330) begin
            data_sin = 10'sd463;
        end
        
        // bin 111
        else if (phase >= 330 && phase < 333) begin
            data_sin = 10'sd459;
        end
        
        // bin 112
        else if (phase >= 333 && phase < 336) begin
            data_sin = 10'sd454;
        end
        
        // bin 113
        else if (phase >= 336 && phase < 339) begin
            data_sin = 10'sd450;
        end
        
        // bin 114
        else if (phase >= 339 && phase < 342) begin
            data_sin = 10'sd446;
        end
        
        // bin 115
        else if (phase >= 342 && phase < 345) begin
            data_sin = 10'sd441;
        end
        
        // bin 116
        else if (phase >= 345 && phase < 348) begin
            data_sin = 10'sd436;
        end
        
        // bin 117
        else if (phase >= 348 && phase < 351) begin
            data_sin = 10'sd431;
        end
        
        // bin 118
        else if (phase >= 351 && phase < 354) begin
            data_sin = 10'sd426;
        end
        
        // bin 119
        else if (phase >= 354 && phase < 357) begin
            data_sin = 10'sd421;
        end
        
        // bin 120
        else if (phase >= 357 && phase < 360) begin
            data_sin = 10'sd415;
        end
        
        // bin 121
        else if (phase >= 360 && phase < 363) begin
            data_sin = 10'sd410;
        end
        
        // bin 122
        else if (phase >= 363 && phase < 366) begin
            data_sin = 10'sd404;
        end
        
        // bin 123
        else if (phase >= 366 && phase < 369) begin
            data_sin = 10'sd398;
        end
        
        // bin 124
        else if (phase >= 369 && phase < 372) begin
            data_sin = 10'sd392;
        end
        
        // bin 125
        else if (phase >= 372 && phase < 375) begin
            data_sin = 10'sd386;
        end
        
        // bin 126
        else if (phase >= 375 && phase < 378) begin
            data_sin = 10'sd380;
        end
        
        // bin 127
        else if (phase >= 378 && phase < 381) begin
            data_sin = 10'sd373;
        end
        
        // bin 128
        else if (phase >= 381 && phase < 384) begin
            data_sin = 10'sd367;
        end
        
        // bin 129
        else if (phase >= 384 && phase < 387) begin
            data_sin = 10'sd360;
        end
        
        // bin 130
        else if (phase >= 387 && phase < 390) begin
            data_sin = 10'sd354;
        end
        
        // bin 131
        else if (phase >= 390 && phase < 393) begin
            data_sin = 10'sd347;
        end
        
        // bin 132
        else if (phase >= 393 && phase < 396) begin
            data_sin = 10'sd340;
        end
        
        // bin 133
        else if (phase >= 396 && phase < 399) begin
            data_sin = 10'sd333;
        end
        
        // bin 134
        else if (phase >= 399 && phase < 402) begin
            data_sin = 10'sd325;
        end
        
        // bin 135
        else if (phase >= 402 && phase < 405) begin
            data_sin = 10'sd318;
        end
        
        // bin 136
        else if (phase >= 405 && phase < 408) begin
            data_sin = 10'sd311;
        end
        
        // bin 137
        else if (phase >= 408 && phase < 411) begin
            data_sin = 10'sd303;
        end
        
        // bin 138
        else if (phase >= 411 && phase < 414) begin
            data_sin = 10'sd296;
        end
        
        // bin 139
        else if (phase >= 414 && phase < 417) begin
            data_sin = 10'sd288;
        end
        
        // bin 140
        else if (phase >= 417 && phase < 420) begin
            data_sin = 10'sd280;
        end
        
        // bin 141
        else if (phase >= 420 && phase < 423) begin
            data_sin = 10'sd272;
        end
        
        // bin 142
        else if (phase >= 423 && phase < 426) begin
            data_sin = 10'sd264;
        end
        
        // bin 143
        else if (phase >= 426 && phase < 429) begin
            data_sin = 10'sd256;
        end
        
        // bin 144
        else if (phase >= 429 && phase < 432) begin
            data_sin = 10'sd248;
        end
        
        // bin 145
        else if (phase >= 432 && phase < 435) begin
            data_sin = 10'sd239;
        end
        
        // bin 146
        else if (phase >= 435 && phase < 438) begin
            data_sin = 10'sd231;
        end
        
        // bin 147
        else if (phase >= 438 && phase < 441) begin
            data_sin = 10'sd223;
        end
        
        // bin 148
        else if (phase >= 441 && phase < 444) begin
            data_sin = 10'sd214;
        end
        
        // bin 149
        else if (phase >= 444 && phase < 447) begin
            data_sin = 10'sd206;
        end
        
        // bin 150
        else if (phase >= 447 && phase < 450) begin
            data_sin = 10'sd197;
        end
        
        // bin 151
        else if (phase >= 450 && phase < 453) begin
            data_sin = 10'sd188;
        end
        
        // bin 152
        else if (phase >= 453 && phase < 456) begin
            data_sin = 10'sd179;
        end
        
        // bin 153
        else if (phase >= 456 && phase < 459) begin
            data_sin = 10'sd171;
        end
        
        // bin 154
        else if (phase >= 459 && phase < 462) begin
            data_sin = 10'sd162;
        end
        
        // bin 155
        else if (phase >= 462 && phase < 465) begin
            data_sin = 10'sd153;
        end
        
        // bin 156
        else if (phase >= 465 && phase < 468) begin
            data_sin = 10'sd144;
        end
        
        // bin 157
        else if (phase >= 468 && phase < 471) begin
            data_sin = 10'sd135;
        end
        
        // bin 158
        else if (phase >= 471 && phase < 474) begin
            data_sin = 10'sd125;
        end
        
        // bin 159
        else if (phase >= 474 && phase < 477) begin
            data_sin = 10'sd116;
        end
        
        // bin 160
        else if (phase >= 477 && phase < 480) begin
            data_sin = 10'sd107;
        end
        
        // bin 161
        else if (phase >= 480 && phase < 483) begin
            data_sin = 10'sd98;
        end
        
        // bin 162
        else if (phase >= 483 && phase < 486) begin
            data_sin = 10'sd89;
        end
        
        // bin 163
        else if (phase >= 486 && phase < 489) begin
            data_sin = 10'sd79;
        end
        
        // bin 164
        else if (phase >= 489 && phase < 492) begin
            data_sin = 10'sd70;
        end
        
        // bin 165
        else if (phase >= 492 && phase < 495) begin
            data_sin = 10'sd61;
        end
        
        // bin 166
        else if (phase >= 495 && phase < 498) begin
            data_sin = 10'sd51;
        end
        
        // bin 167
        else if (phase >= 498 && phase < 501) begin
            data_sin = 10'sd42;
        end
        
        // bin 168
        else if (phase >= 501 && phase < 504) begin
            data_sin = 10'sd32;
        end
        
        // bin 169
        else if (phase >= 504 && phase < 507) begin
            data_sin = 10'sd23;
        end
        
        // bin 170
        else if (phase >= 507 && phase < 510) begin
            data_sin = 10'sd14;
        end
        
        // bin 171
        else if (phase >= 510 && phase < 513) begin
            data_sin = 10'sd4;
        end
        
        // bin 172
        else if (phase >= 513 && phase < 516) begin
            data_sin = -10'sd5;
        end
        
        // bin 173
        else if (phase >= 516 && phase < 519) begin
            data_sin = -10'sd15;
        end
        
        // bin 174
        else if (phase >= 519 && phase < 522) begin
            data_sin = -10'sd24;
        end
        
        // bin 175
        else if (phase >= 522 && phase < 525) begin
            data_sin = -10'sd33;
        end
        
        // bin 176
        else if (phase >= 525 && phase < 528) begin
            data_sin = -10'sd43;
        end
        
        // bin 177
        else if (phase >= 528 && phase < 531) begin
            data_sin = -10'sd52;
        end
        
        // bin 178
        else if (phase >= 531 && phase < 534) begin
            data_sin = -10'sd62;
        end
        
        // bin 179
        else if (phase >= 534 && phase < 537) begin
            data_sin = -10'sd71;
        end
        
        // bin 180
        else if (phase >= 537 && phase < 540) begin
            data_sin = -10'sd80;
        end
        
        // bin 181
        else if (phase >= 540 && phase < 543) begin
            data_sin = -10'sd90;
        end
        
        // bin 182
        else if (phase >= 543 && phase < 546) begin
            data_sin = -10'sd99;
        end
        
        // bin 183
        else if (phase >= 546 && phase < 549) begin
            data_sin = -10'sd108;
        end
        
        // bin 184
        else if (phase >= 549 && phase < 552) begin
            data_sin = -10'sd117;
        end
        
        // bin 185
        else if (phase >= 552 && phase < 555) begin
            data_sin = -10'sd126;
        end
        
        // bin 186
        else if (phase >= 555 && phase < 558) begin
            data_sin = -10'sd136;
        end
        
        // bin 187
        else if (phase >= 558 && phase < 561) begin
            data_sin = -10'sd145;
        end
        
        // bin 188
        else if (phase >= 561 && phase < 564) begin
            data_sin = -10'sd154;
        end
        
        // bin 189
        else if (phase >= 564 && phase < 567) begin
            data_sin = -10'sd163;
        end
        
        // bin 190
        else if (phase >= 567 && phase < 570) begin
            data_sin = -10'sd172;
        end
        
        // bin 191
        else if (phase >= 570 && phase < 573) begin
            data_sin = -10'sd180;
        end
        
        // bin 192
        else if (phase >= 573 && phase < 576) begin
            data_sin = -10'sd189;
        end
        
        // bin 193
        else if (phase >= 576 && phase < 579) begin
            data_sin = -10'sd198;
        end
        
        // bin 194
        else if (phase >= 579 && phase < 582) begin
            data_sin = -10'sd207;
        end
        
        // bin 195
        else if (phase >= 582 && phase < 585) begin
            data_sin = -10'sd215;
        end
        
        // bin 196
        else if (phase >= 585 && phase < 588) begin
            data_sin = -10'sd224;
        end
        
        // bin 197
        else if (phase >= 588 && phase < 591) begin
            data_sin = -10'sd232;
        end
        
        // bin 198
        else if (phase >= 591 && phase < 594) begin
            data_sin = -10'sd240;
        end
        
        // bin 199
        else if (phase >= 594 && phase < 597) begin
            data_sin = -10'sd249;
        end
        
        // bin 200
        else if (phase >= 597 && phase < 600) begin
            data_sin = -10'sd257;
        end
        
        // bin 201
        else if (phase >= 600 && phase < 603) begin
            data_sin = -10'sd265;
        end
        
        // bin 202
        else if (phase >= 603 && phase < 606) begin
            data_sin = -10'sd273;
        end
        
        // bin 203
        else if (phase >= 606 && phase < 609) begin
            data_sin = -10'sd281;
        end
        
        // bin 204
        else if (phase >= 609 && phase < 612) begin
            data_sin = -10'sd289;
        end
        
        // bin 205
        else if (phase >= 612 && phase < 615) begin
            data_sin = -10'sd297;
        end
        
        // bin 206
        else if (phase >= 615 && phase < 618) begin
            data_sin = -10'sd304;
        end
        
        // bin 207
        else if (phase >= 618 && phase < 621) begin
            data_sin = -10'sd312;
        end
        
        // bin 208
        else if (phase >= 621 && phase < 624) begin
            data_sin = -10'sd319;
        end
        
        // bin 209
        else if (phase >= 624 && phase < 627) begin
            data_sin = -10'sd326;
        end
        
        // bin 210
        else if (phase >= 627 && phase < 630) begin
            data_sin = -10'sd334;
        end
        
        // bin 211
        else if (phase >= 630 && phase < 633) begin
            data_sin = -10'sd341;
        end
        
        // bin 212
        else if (phase >= 633 && phase < 636) begin
            data_sin = -10'sd348;
        end
        
        // bin 213
        else if (phase >= 636 && phase < 639) begin
            data_sin = -10'sd355;
        end
        
        // bin 214
        else if (phase >= 639 && phase < 642) begin
            data_sin = -10'sd361;
        end
        
        // bin 215
        else if (phase >= 642 && phase < 645) begin
            data_sin = -10'sd368;
        end
        
        // bin 216
        else if (phase >= 645 && phase < 648) begin
            data_sin = -10'sd374;
        end
        
        // bin 217
        else if (phase >= 648 && phase < 651) begin
            data_sin = -10'sd381;
        end
        
        // bin 218
        else if (phase >= 651 && phase < 654) begin
            data_sin = -10'sd387;
        end
        
        // bin 219
        else if (phase >= 654 && phase < 657) begin
            data_sin = -10'sd393;
        end
        
        // bin 220
        else if (phase >= 657 && phase < 660) begin
            data_sin = -10'sd399;
        end
        
        // bin 221
        else if (phase >= 660 && phase < 663) begin
            data_sin = -10'sd405;
        end
        
        // bin 222
        else if (phase >= 663 && phase < 666) begin
            data_sin = -10'sd411;
        end
        
        // bin 223
        else if (phase >= 666 && phase < 669) begin
            data_sin = -10'sd416;
        end
        
        // bin 224
        else if (phase >= 669 && phase < 672) begin
            data_sin = -10'sd422;
        end
        
        // bin 225
        else if (phase >= 672 && phase < 675) begin
            data_sin = -10'sd427;
        end
        
        // bin 226
        else if (phase >= 675 && phase < 678) begin
            data_sin = -10'sd432;
        end
        
        // bin 227
        else if (phase >= 678 && phase < 681) begin
            data_sin = -10'sd437;
        end
        
        // bin 228
        else if (phase >= 681 && phase < 684) begin
            data_sin = -10'sd442;
        end
        
        // bin 229
        else if (phase >= 684 && phase < 687) begin
            data_sin = -10'sd447;
        end
        
        // bin 230
        else if (phase >= 687 && phase < 690) begin
            data_sin = -10'sd451;
        end
        
        // bin 231
        else if (phase >= 690 && phase < 693) begin
            data_sin = -10'sd455;
        end
        
        // bin 232
        else if (phase >= 693 && phase < 696) begin
            data_sin = -10'sd460;
        end
        
        // bin 233
        else if (phase >= 696 && phase < 699) begin
            data_sin = -10'sd464;
        end
        
        // bin 234
        else if (phase >= 699 && phase < 702) begin
            data_sin = -10'sd468;
        end
        
        // bin 235
        else if (phase >= 702 && phase < 705) begin
            data_sin = -10'sd471;
        end
        
        // bin 236
        else if (phase >= 705 && phase < 708) begin
            data_sin = -10'sd475;
        end
        
        // bin 237
        else if (phase >= 708 && phase < 711) begin
            data_sin = -10'sd479;
        end
        
        // bin 238
        else if (phase >= 711 && phase < 714) begin
            data_sin = -10'sd482;
        end
        
        // bin 239
        else if (phase >= 714 && phase < 717) begin
            data_sin = -10'sd485;
        end
        
        // bin 240
        else if (phase >= 717 && phase < 720) begin
            data_sin = -10'sd488;
        end
        
        // bin 241
        else if (phase >= 720 && phase < 723) begin
            data_sin = -10'sd491;
        end
        
        // bin 242
        else if (phase >= 723 && phase < 726) begin
            data_sin = -10'sd493;
        end
        
        // bin 243
        else if (phase >= 726 && phase < 729) begin
            data_sin = -10'sd496;
        end
        
        // bin 244
        else if (phase >= 729 && phase < 732) begin
            data_sin = -10'sd498;
        end
        
        // bin 245
        else if (phase >= 732 && phase < 735) begin
            data_sin = -10'sd500;
        end
        
        // bin 246
        else if (phase >= 735 && phase < 738) begin
            data_sin = -10'sd502;
        end
        
        // bin 247
        else if (phase >= 738 && phase < 741) begin
            data_sin = -10'sd504;
        end
        
        // bin 248
        else if (phase >= 741 && phase < 744) begin
            data_sin = -10'sd505;
        end
        
        // bin 249
        else if (phase >= 744 && phase < 747) begin
            data_sin = -10'sd507;
        end
        
        // bin 250
        else if (phase >= 747 && phase < 750) begin
            data_sin = -10'sd508;
        end
        
        // bin 251
        else if (phase >= 750 && phase < 753) begin
            data_sin = -10'sd509;
        end
        
        // bin 252
        else if (phase >= 753 && phase < 756) begin
            data_sin = -10'sd510;
        end
        
        // bin 253
        else if (phase >= 756 && phase < 759) begin
            data_sin = -10'sd511;
        end
        
        // bin 254
        else if (phase >= 759 && phase < 762) begin
            data_sin = -10'sd511;
        end
        
        // bin 255
        else if (phase >= 762 && phase < 765) begin
            data_sin = -10'sd512;
        end
        
        // bin 256
        else if (phase >= 765 && phase < 768) begin
            data_sin = -10'sd512;
        end
        
        // bin 257
        else if (phase >= 768 && phase < 771) begin
            data_sin = -10'sd512;
        end
        
        // bin 258
        else if (phase >= 771 && phase < 774) begin
            data_sin = -10'sd512;
        end
        
        // bin 259
        else if (phase >= 774 && phase < 777) begin
            data_sin = -10'sd512;
        end
        
        // bin 260
        else if (phase >= 777 && phase < 780) begin
            data_sin = -10'sd511;
        end
        
        // bin 261
        else if (phase >= 780 && phase < 783) begin
            data_sin = -10'sd510;
        end
        
        // bin 262
        else if (phase >= 783 && phase < 786) begin
            data_sin = -10'sd510;
        end
        
        // bin 263
        else if (phase >= 786 && phase < 789) begin
            data_sin = -10'sd509;
        end
        
        // bin 264
        else if (phase >= 789 && phase < 792) begin
            data_sin = -10'sd507;
        end
        
        // bin 265
        else if (phase >= 792 && phase < 795) begin
            data_sin = -10'sd506;
        end
        
        // bin 266
        else if (phase >= 795 && phase < 798) begin
            data_sin = -10'sd505;
        end
        
        // bin 267
        else if (phase >= 798 && phase < 801) begin
            data_sin = -10'sd503;
        end
        
        // bin 268
        else if (phase >= 801 && phase < 804) begin
            data_sin = -10'sd501;
        end
        
        // bin 269
        else if (phase >= 804 && phase < 807) begin
            data_sin = -10'sd499;
        end
        
        // bin 270
        else if (phase >= 807 && phase < 810) begin
            data_sin = -10'sd497;
        end
        
        // bin 271
        else if (phase >= 810 && phase < 813) begin
            data_sin = -10'sd494;
        end
        
        // bin 272
        else if (phase >= 813 && phase < 816) begin
            data_sin = -10'sd492;
        end
        
        // bin 273
        else if (phase >= 816 && phase < 819) begin
            data_sin = -10'sd489;
        end
        
        // bin 274
        else if (phase >= 819 && phase < 822) begin
            data_sin = -10'sd486;
        end
        
        // bin 275
        else if (phase >= 822 && phase < 825) begin
            data_sin = -10'sd483;
        end
        
        // bin 276
        else if (phase >= 825 && phase < 828) begin
            data_sin = -10'sd480;
        end
        
        // bin 277
        else if (phase >= 828 && phase < 831) begin
            data_sin = -10'sd477;
        end
        
        // bin 278
        else if (phase >= 831 && phase < 834) begin
            data_sin = -10'sd473;
        end
        
        // bin 279
        else if (phase >= 834 && phase < 837) begin
            data_sin = -10'sd470;
        end
        
        // bin 280
        else if (phase >= 837 && phase < 840) begin
            data_sin = -10'sd466;
        end
        
        // bin 281
        else if (phase >= 840 && phase < 843) begin
            data_sin = -10'sd462;
        end
        
        // bin 282
        else if (phase >= 843 && phase < 846) begin
            data_sin = -10'sd458;
        end
        
        // bin 283
        else if (phase >= 846 && phase < 849) begin
            data_sin = -10'sd453;
        end
        
        // bin 284
        else if (phase >= 849 && phase < 852) begin
            data_sin = -10'sd449;
        end
        
        // bin 285
        else if (phase >= 852 && phase < 855) begin
            data_sin = -10'sd444;
        end
        
        // bin 286
        else if (phase >= 855 && phase < 858) begin
            data_sin = -10'sd439;
        end
        
        // bin 287
        else if (phase >= 858 && phase < 861) begin
            data_sin = -10'sd435;
        end
        
        // bin 288
        else if (phase >= 861 && phase < 864) begin
            data_sin = -10'sd430;
        end
        
        // bin 289
        else if (phase >= 864 && phase < 867) begin
            data_sin = -10'sd424;
        end
        
        // bin 290
        else if (phase >= 867 && phase < 870) begin
            data_sin = -10'sd419;
        end
        
        // bin 291
        else if (phase >= 870 && phase < 873) begin
            data_sin = -10'sd413;
        end
        
        // bin 292
        else if (phase >= 873 && phase < 876) begin
            data_sin = -10'sd408;
        end
        
        // bin 293
        else if (phase >= 876 && phase < 879) begin
            data_sin = -10'sd402;
        end
        
        // bin 294
        else if (phase >= 879 && phase < 882) begin
            data_sin = -10'sd396;
        end
        
        // bin 295
        else if (phase >= 882 && phase < 885) begin
            data_sin = -10'sd390;
        end
        
        // bin 296
        else if (phase >= 885 && phase < 888) begin
            data_sin = -10'sd384;
        end
        
        // bin 297
        else if (phase >= 888 && phase < 891) begin
            data_sin = -10'sd378;
        end
        
        // bin 298
        else if (phase >= 891 && phase < 894) begin
            data_sin = -10'sd371;
        end
        
        // bin 299
        else if (phase >= 894 && phase < 897) begin
            data_sin = -10'sd365;
        end
        
        // bin 300
        else if (phase >= 897 && phase < 900) begin
            data_sin = -10'sd358;
        end
        
        // bin 301
        else if (phase >= 900 && phase < 903) begin
            data_sin = -10'sd351;
        end
        
        // bin 302
        else if (phase >= 903 && phase < 906) begin
            data_sin = -10'sd344;
        end
        
        // bin 303
        else if (phase >= 906 && phase < 909) begin
            data_sin = -10'sd337;
        end
        
        // bin 304
        else if (phase >= 909 && phase < 912) begin
            data_sin = -10'sd330;
        end
        
        // bin 305
        else if (phase >= 912 && phase < 915) begin
            data_sin = -10'sd323;
        end
        
        // bin 306
        else if (phase >= 915 && phase < 918) begin
            data_sin = -10'sd315;
        end
        
        // bin 307
        else if (phase >= 918 && phase < 921) begin
            data_sin = -10'sd308;
        end
        
        // bin 308
        else if (phase >= 921 && phase < 924) begin
            data_sin = -10'sd300;
        end
        
        // bin 309
        else if (phase >= 924 && phase < 927) begin
            data_sin = -10'sd293;
        end
        
        // bin 310
        else if (phase >= 927 && phase < 930) begin
            data_sin = -10'sd285;
        end
        
        // bin 311
        else if (phase >= 930 && phase < 933) begin
            data_sin = -10'sd277;
        end
        
        // bin 312
        else if (phase >= 933 && phase < 936) begin
            data_sin = -10'sd269;
        end
        
        // bin 313
        else if (phase >= 936 && phase < 939) begin
            data_sin = -10'sd261;
        end
        
        // bin 314
        else if (phase >= 939 && phase < 942) begin
            data_sin = -10'sd253;
        end
        
        // bin 315
        else if (phase >= 942 && phase < 945) begin
            data_sin = -10'sd245;
        end
        
        // bin 316
        else if (phase >= 945 && phase < 948) begin
            data_sin = -10'sd236;
        end
        
        // bin 317
        else if (phase >= 948 && phase < 951) begin
            data_sin = -10'sd228;
        end
        
        // bin 318
        else if (phase >= 951 && phase < 954) begin
            data_sin = -10'sd219;
        end
        
        // bin 319
        else if (phase >= 954 && phase < 957) begin
            data_sin = -10'sd211;
        end
        
        // bin 320
        else if (phase >= 957 && phase < 960) begin
            data_sin = -10'sd202;
        end
        
        // bin 321
        else if (phase >= 960 && phase < 963) begin
            data_sin = -10'sd194;
        end
        
        // bin 322
        else if (phase >= 963 && phase < 966) begin
            data_sin = -10'sd185;
        end
        
        // bin 323
        else if (phase >= 966 && phase < 969) begin
            data_sin = -10'sd176;
        end
        
        // bin 324
        else if (phase >= 969 && phase < 972) begin
            data_sin = -10'sd167;
        end
        
        // bin 325
        else if (phase >= 972 && phase < 975) begin
            data_sin = -10'sd158;
        end
        
        // bin 326
        else if (phase >= 975 && phase < 978) begin
            data_sin = -10'sd149;
        end
        
        // bin 327
        else if (phase >= 978 && phase < 981) begin
            data_sin = -10'sd140;
        end
        
        // bin 328
        else if (phase >= 981 && phase < 984) begin
            data_sin = -10'sd131;
        end
        
        // bin 329
        else if (phase >= 984 && phase < 987) begin
            data_sin = -10'sd122;
        end
        
        // bin 330
        else if (phase >= 987 && phase < 990) begin
            data_sin = -10'sd113;
        end
        
        // bin 331
        else if (phase >= 990 && phase < 993) begin
            data_sin = -10'sd103;
        end
        
        // bin 332
        else if (phase >= 993 && phase < 996) begin
            data_sin = -10'sd94;
        end
        
        // bin 333
        else if (phase >= 996 && phase < 999) begin
            data_sin = -10'sd85;
        end
        
        // bin 334
        else if (phase >= 999 && phase < 1002) begin
            data_sin = -10'sd76;
        end
        
        // bin 335
        else if (phase >= 1002 && phase < 1005) begin
            data_sin = -10'sd66;
        end
        
        // bin 336
        else if (phase >= 1005 && phase < 1008) begin
            data_sin = -10'sd57;
        end
        
        // bin 337
        else if (phase >= 1008 && phase < 1011) begin
            data_sin = -10'sd48;
        end
        
        // bin 338
        else if (phase >= 1011 && phase < 1014) begin
            data_sin = -10'sd38;
        end
        
        // bin 339
        else if (phase >= 1014 && phase < 1017) begin
            data_sin = -10'sd29;
        end
        
        // bin 340
        else if (phase >= 1017 && phase < 1020) begin
            data_sin = -10'sd19;
        end
        
        // bin 341
        else if (phase >= 1020 && phase < 1023) begin
            data_sin = -10'sd10;
        end
        
            
            // else begin
            //     data_sin <= 10'b00_0110_0100; //10'd100;    
            // end       
    end         
endmodule