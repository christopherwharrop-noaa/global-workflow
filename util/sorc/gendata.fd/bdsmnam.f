       BLOCK DATA BDSMNAM
C$$$  SUBPROGRAM DOCUMENTATION BLOCK
C                .      .    .                                       .
C SUBPROGRAM:    BDSMNAM     BLOCK DATA LIST OF STN IDENTS & AFOS ZOOM
C   PRGMMR: SHIMOMURA        ORG: W/NP12    DATE: 1996-11-14
C
C ABSTRACT: BLOCK DATA CONTAINING 5-DIGIT (BLOCK+STN) NUMBER AND
C   AFOS ZOOM ATTRIBUTES
C
C         COMMON /SMNAM/MAXNSMS,KSMSTN(960) -- STATIONS,AFOS_ZOOM.
C
C   THIS TABLE IS USED IN NASFCPLT FOR MAKING SURFACE MAPS
C
C PROGRAM HISTORY LOG:
C   80-04-21  ROBERT JIRSEK, ORIGINAL AUTHOR
C   96-11-14  SHIMOMURA -- CONVERTED FROM IBM ASSEMBLY LANGUAGE "DC"
C                          FORMAT INTO FORTRAN DATA STATEMENT FORMAT
C
C USAGE:
C        EXTERNAL  BDSMNAM
C        COMMON     /SMNAM/ MAXNSMS,KSMSTN(960)
C                          (LABELLED COMMON NAME IN CALLING PROGRAM)
C
C   OUTPUT ARGUMENT LIST:
C
C       COMMON /SMNAM/MAXNSMS,KSMSTN
C       INTEGER   MAXNSMS
C       DATA      MAXNSMS   /942/
C       INTEGER   KSMSTN(960)
C
C       KSMSTN(J) = 5-DIGIT STATION IDENTIFIERS (ASCII), LEFT-JUSTIFIED
C                   2-HEX DIGIT AFOS ATTRIBUTES (ASCII), RIGHT-JUSTIFIED
C                                               IN THE SAME 8-BYTE WORD
C                   BLANK FILL IN BETWEEN
C
C REMARKS:
C   CAUTION: I HAVE ADDED A DATA-COUNT AS THE FIRST WORD IN THE
C       LABELLED COMMON AREA.
C
C       IN USERS SOURCE CODE INCLUDE:
C            EXTERNAL  BDSMNAM
C       WHICH WILL FORCE THE LINKAGE-EDITOR  TO LOOK FOR  bdSMNAM.o
C
C       I HAVE SORTED THE LIST BY ASCII 5-DIGIT STATION IDENTIFIERS
C
C   CAUTION: THIS IS ALL IN ASCII IN THE CRAY VERSION.
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 90
C   MACHINE:  IBM SP
C
C$$$
       COMMON     /SMNAM/ MAXNSMS,KSMSTN
       INTEGER     MAXNSMS
       DATA        MAXNSMS   / 942 /
       INTEGER     KSMSTN(960)

       INTEGER     IGROUP01(80)
       INTEGER     IGROUP02(80)
       INTEGER     IGROUP03(80)
       INTEGER     IGROUP04(80)
       INTEGER     IGROUP05(80)
       INTEGER     IGROUP06(80)
       INTEGER     IGROUP07(80)
       INTEGER     IGROUP08(80)
       INTEGER     IGROUP09(80)
       INTEGER     IGROUP10(80)
       INTEGER     IGROUP11(80)
       INTEGER     IGROUP12(80)

       EQUIVALENCE (KSMSTN(001),IGROUP01(1))
       EQUIVALENCE (KSMSTN(081),IGROUP02(1))
       EQUIVALENCE (KSMSTN(161),IGROUP03(1))
       EQUIVALENCE (KSMSTN(241),IGROUP04(1))
       EQUIVALENCE (KSMSTN(321),IGROUP05(1))
       EQUIVALENCE (KSMSTN(401),IGROUP06(1))
       EQUIVALENCE (KSMSTN(481),IGROUP07(1))
       EQUIVALENCE (KSMSTN(561),IGROUP08(1))
       EQUIVALENCE (KSMSTN(641),IGROUP09(1))
       EQUIVALENCE (KSMSTN(721),IGROUP10(1))
       EQUIVALENCE (KSMSTN(801),IGROUP11(1))
       EQUIVALENCE (KSMSTN(881),IGROUP12(1))

C    NORTH AMERICA SFC PLOT SYNOPTIC (SM) TABLE.  MAR 26, 77.
C
       DATA    IGROUP01 /
     1   "01001 01" ,
     1   "01005 03" ,
     1   "01010 03" ,
     1   "01025 01" ,
     1   "01028 01" ,
     1   "01055 01" ,
     1   "01061 05" ,
     1   "01062 01" ,
     1   "01098 05" ,
     1   "01105 01" ,
     1   "01115 03" ,
     1   "01152 05" ,
     1   "01205 01" ,
     1   "01215 05" ,
     1   "01228 05" ,
     1   "01241 01" ,
     1   "01262 05" ,
     1   "01311 03" ,
     1   "01384 01" ,
     1   "01415 01" ,
     1   "01427 05" ,
     1   "01448 03" ,
     1   "01482 05" ,
     1   "01488 03" ,
     1   "02050 05" ,
     1   "02052 03" ,
     1   "02054 03" ,
     1   "02057 01" ,
     1   "02062 03" ,
     1   "02063 01" ,
     1   "02066 01" ,
     1   "02067 03" ,
     1   "02069 03" ,
     1   "02073 03" ,
     1   "02075 05" ,
     1   "02077 01" ,
     1   "02084 01" ,
     1   "02087 03" ,
     1   "02090 03" ,
     1   "02095 01" ,
     1   "02098 03" ,
     1   "02102 05" ,
     1   "02105 03" ,
     1   "02135 03" ,
     1   "02150 05" ,
     1   "02242 03" ,
     1   "02807 03" ,
     1   "02836 01" ,
     1   "02897 05" ,
     1   "02911 01" ,
     1   "02929 01" ,
     1   "02935 03" ,
     1   "02942 05" ,
     1   "02963 03" ,
     1   "02974 01" ,
     1   "02986 03" ,
     1   "03005 01" ,
     1   "03017 03" ,
     1   "03026 01" ,
     1   "03032 03" ,
     1   "03068 05" ,
     1   "03075 03" ,
     1   "03091 01" ,
     1   "03100 01" ,
     1   "03135 03" ,
     1   "03140 05" ,
     1   "03160 05" ,
     1   "03171 03" ,
     1   "03204 01" ,
     1   "03222 05" ,
     1   "03245 03" ,
     1   "03257 03" ,
     1   "03302 03" ,
     1   "03323 05" ,
     1   "03334 03" ,
     1   "03388 03" ,
     1   "03396 01" ,
     1   "03494 05" ,
     1   "03497 03" ,
     1   "03603 01" /

       DATA    IGROUP02 /                     
     1   "03604 03" ,
     1   "03628 03" ,
     1   "03772 01" ,
     1   "03776 03" ,
     1   "03797 05" ,
     1   "03804 01" ,
     1   "03809 03" ,
     1   "03839 03" ,
     1   "03865 05" ,
     1   "03915 05" ,
     1   "03917 03" ,
     1   "03952 03" ,
     1   "03953 01" ,
     1   "03955 03" ,
     1   "03962 05" ,
     1   "03965 03" ,
     1   "03969 05" ,
     1   "03976 01" ,
     1   "03980 03" ,
     1   "04005 01" ,
     1   "04013 05" ,
     1   "04018 01" ,
     1   "04030 03" ,
     1   "04048 05" ,
     1   "04063 03" ,
     1   "04077 01" ,
     1   "04082 01" ,
     1   "04097 03" ,
     1   "04165 03" ,
     1   "04175 01" ,
     1   "04202 01" ,
     1   "04210 01" ,
     1   "04212 03" ,
     1   "04218 01" ,
     1   "04220 03" ,
     1   "04230 01" ,
     1   "04231 03" ,
     1   "04235 05" ,
     1   "04240 03" ,
     1   "04250 01" ,
     1   "04260 01" ,
     1   "04270 05" ,
     1   "04272 03" ,
     1   "04320 01" ,
     1   "04330 03" ,
     1   "04338 01" ,
     1   "04340 01" ,
     1   "04350 01" ,
     1   "04360 01" ,
     1   "04365 03" ,
     1   "04380 01" ,
     1   "04390 01" ,
     1   "06009 03" ,
     1   "06011 01" ,
     1   "06030 05" ,
     1   "06052 01" ,
     1   "06089 03" ,
     1   "06119 05" ,
     1   "06160 05" ,
     1   "06180 01" ,
     1   "06191 03" ,
     1   "06220 01" ,
     1   "06235 03" ,
     1   "06240 05" ,
     1   "06407 05" ,
     1   "06447 03" ,
     1   "06451 01" ,
     1   "06476 05" ,
     1   "06590 03" ,
     1   "06610 01" ,
     1   "06670 03" ,
     1   "06700 05" ,
     1   "06720 05" ,
     1   "07005 03" ,
     1   "07024 01" ,
     1   "07070 05" ,
     1   "07100 03" ,
     1   "07110 01" ,
     1   "07130 03" ,
     1   "07149 01" / 
 
       DATA    IGROUP03 /
     1   "07150 03" ,
     1   "07169 03" ,
     1   "07180 03" ,
     1   "07190 05" ,
     1   "07207 03" ,
     1   "07222 05" ,
     1   "07240 01" ,
     1   "07257 03" ,
     1   "07265 05" ,
     1   "07280 03" ,
     1   "07335 03" ,
     1   "07412 01" ,
     1   "07460 01" ,
     1   "07481 05" ,
     1   "07486 03" ,
     1   "07510 03" ,
     1   "07535 05" ,
     1   "07558 05" ,
     1   "07602 01" ,
     1   "07630 03" ,
     1   "07647 03" ,
     1   "07650 01" ,
     1   "07690 03" ,
     1   "07747 03" ,
     1   "07761 01" ,
     1   "08001 01" ,
     1   "08002 03" ,
     1   "08008 03" ,
     1   "08011 05" ,
     1   "08015 03" ,
     1   "08023 05" ,
     1   "08025 03" ,
     1   "08027 05" ,
     1   "08042 03" ,
     1   "08045 05" ,
     1   "08055 05" ,
     1   "08075 01" ,
     1   "08084 05" ,
     1   "08140 05" ,
     1   "08141 03" ,
     1   "08160 01" ,
     1   "08161 03" ,
     1   "08180 05" ,
     1   "08181 01" ,
     1   "08202 05" ,
     1   "08221 01" ,
     1   "08227 03" ,
     1   "08233 05" ,
     1   "08261 05" ,
     1   "08280 05" ,
     1   "08284 01" ,
     1   "08306 03" ,
     1   "08314 01" ,
     1   "08348 01" ,
     1   "08360 01" ,
     1   "08373 03" ,
     1   "08391 01" ,
     1   "08419 03" ,
     1   "08449 05" ,
     1   "08482 03" ,
     1   "08487 01" ,
     1   "08495 05" ,
     1   "08503 01" ,
     1   "08506 03" ,
     1   "08509 01" ,
     1   "08512 03" ,
     1   "08515 01" ,
     1   "08521 03" ,
     1   "08524 01" ,
     1   "08536 01" ,
     1   "08538 01" ,
     1   "08543 05" ,
     1   "08545 01" ,
     1   "08549 03" ,
     1   "08554 03" ,
     1   "08557 05" ,
     1   "08562 05" ,
     1   "08568 05" ,
     1   "08571 03" ,
     1   "08575 03" / 
 
       DATA    IGROUP04 /
     1   "08583 01" ,
     1   "08589 01" ,
     1   "08594 01" ,
     1   "09162 03" ,
     1   "09185 01" ,
     1   "09385 03" ,
     1   "09488 01" ,
     1   "10002 03" ,
     1   "10004 01" ,
     1   "10129 03" ,
     1   "10147 05" ,
     1   "10320 03" ,
     1   "10338 01" ,
     1   "10384 01" ,
     1   "10400 05" ,
     1   "10513 03" ,
     1   "10609 05" ,
     1   "10637 01" ,
     1   "10685 01" ,
     1   "10687 03" ,
     1   "10708 03" ,
     1   "10763 03" ,
     1   "10776 03" ,
     1   "10852 03" ,
     1   "10866 01" ,
     1   "11010 05" ,
     1   "11036 01" ,
     1   "11120 01" ,
     1   "11150 03" ,
     1   "11231 01" ,
     1   "11240 03" ,
     1   "11518 05" ,
     1   "11659 03" ,
     1   "11723 03" ,
     1   "11782 05" ,
     1   "11934 01" ,
     1   "12120 03" ,
     1   "12150 01" ,
     1   "12295 03" ,
     1   "12330 05" ,
     1   "12375 01" ,
     1   "12495 05" ,
     1   "12560 03" ,
     1   "12772 05" ,
     1   "12839 03" ,
     1   "12860 01" ,
     1   "12925 05" ,
     1   "12942 03" ,
     1   "12982 03" ,
     1   "13014 03" ,
     1   "13131 05" ,
     1   "13209 03" ,
     1   "13272 01" ,
     1   "13333 01" ,
     1   "13353 05" ,
     1   "13388 05" ,
     1   "13462 01" ,
     1   "13586 03" ,
     1   "15080 05" ,
     1   "15120 01" ,
     1   "15200 05" ,
     1   "15310 05" ,
     1   "15420 01" ,
     1   "15421 03" ,
     1   "15480 05" ,
     1   "15614 01" ,
     1   "15655 01" ,
     1   "16044 05" ,
     1   "16059 01" ,
     1   "16080 03" ,
     1   "16090 03" ,
     1   "16105 01" ,
     1   "16149 03" ,
     1   "16158 01" ,
     1   "16190 01" ,
     1   "16230 03" ,
     1   "16239 03" ,
     1   "16242 01" ,
     1   "16289 03" ,
     1   "16310 01" /

       DATA    IGROUP05 /
     1   "16320 01" ,
     1   "16350 05" ,
     1   "16400 03" ,
     1   "16405 01" ,
     1   "16460 05" ,
     1   "16470 05" ,
     1   "16520 05" ,
     1   "16560 01" ,
     1   "16597 01" ,
     1   "16622 01" ,
     1   "16641 05" ,
     1   "16643 03" ,
     1   "16682 01" ,
     1   "16716 01" ,
     1   "16749 01" ,
     1   "17022 05" ,
     1   "17030 01" ,
     1   "17038 01" ,
     1   "17050 03" ,
     1   "17060 01" ,
     1   "17082 03" ,
     1   "17096 05" ,
     1   "17112 01" ,
     1   "17129 01" ,
     1   "17200 01" ,
     1   "17244 01" ,
     1   "17292 03" ,
     1   "17300 05" ,
     1   "17330 05" ,
     1   "17350 01" ,
     1   "17601 03" ,
     1   "17611 01" ,
     1   "20026 01" ,
     1   "20034 03" ,
     1   "20046 01" ,
     1   "20069 01" ,
     1   "20087 01" ,
     1   "20097 05" ,
     1   "20274 01" ,
     1   "20289 05" ,
     1   "20353 01" ,
     1   "20357 05" ,
     1   "20388 01" ,
     1   "20674 01" ,
     1   "20744 01" ,
     1   "20856 01" ,
     1   "20864 03" ,
     1   "20891 01" ,
     1   "20943 05" ,
     1   "20963 01" ,
     1   "21301 03" ,
     1   "21358 01" ,
     1   "21405 03" ,
     1   "21432 01" ,
     1   "21504 01" ,
     1   "21535 03" ,
     1   "21541 05" ,
     1   "21611 05" ,
     1   "21613 03" ,
     1   "21627 05" ,
     1   "21636 03" ,
     1   "21647 01" ,
     1   "21711 03" ,
     1   "21728 03" ,
     1   "21733 03" ,
     1   "21749 03" ,
     1   "21802 01" ,
     1   "21824 01" ,
     1   "21835 03" ,
     1   "21908 03" ,
     1   "21931 01" ,
     1   "21946 01" ,
     1   "21955 03" ,
     1   "21965 01" ,
     1   "21982 01" ,
     1   "22113 01" ,
     1   "22127 03" ,
     1   "22145 05" ,
     1   "22165 01" ,
     1   "22217 05" / 

       DATA    IGROUP06 /
     1   "22235 05" ,
     1   "22271 03" ,
     1   "22324 01" ,
     1   "22408 05" ,
     1   "22471 01" ,
     1   "22522 01" ,
     1   "22550 01" ,
     1   "22602 05" ,
     1   "22621 05" ,
     1   "22641 05" ,
     1   "22676 01" ,
     1   "22802 01" ,
     1   "22820 01" ,
     1   "22845 01" ,
     1   "22887 01" ,
     1   "22892 05" ,
     1   "22954 05" ,
     1   "23022 01" ,
     1   "23032 05" ,
     1   "23058 05" ,
     1   "23074 01" ,
     1   "23105 05" ,
     1   "23146 01" ,
     1   "23179 05" ,
     1   "23205 01" ,
     1   "23274 01" ,
     1   "23330 01" ,
     1   "23331 03" ,
     1   "23383 01" ,
     1   "23405 05" ,
     1   "23418 01" ,
     1   "23465 05" ,
     1   "23472 01" ,
     1   "23499 05" ,
     1   "23527 05" ,
     1   "23552 01" ,
     1   "23558 03" ,
     1   "23589 01" ,
     1   "23606 01" ,
     1   "23631 01" ,
     1   "23662 05" ,
     1   "23678 01" ,
     1   "23711 03" ,
     1   "23724 01" ,
     1   "23789 05" ,
     1   "23804 01" ,
     1   "23849 05" ,
     1   "23884 01" ,
     1   "23909 01" ,
     1   "23914 03" ,
     1   "23921 01" ,
     1   "23933 01" ,
     1   "23955 01" ,
     1   "23966 01" ,
     1   "23986 05" ,
     1   "24105 01" ,
     1   "24143 01" ,
     1   "24190 01" ,
     1   "24231 01" ,
     1   "24266 01" ,
     1   "24329 01" ,
     1   "24343 01" ,
     1   "24382 01" ,
     1   "24396 03" ,
     1   "24477 01" ,
     1   "24488 03" ,
     1   "24507 01" ,
     1   "24557 01" ,
     1   "24598 05" ,
     1   "24629 01" ,
     1   "24641 01" ,
     1   "24688 01" ,
     1   "24771 01" ,
     1   "24817 01" ,
     1   "24899 03" ,
     1   "24908 01" ,
     1   "24944 01" ,
     1   "24959 01" ,
     1   "24966 01" ,
     1   "24988 03" /

       DATA    IGROUP07 /
     1   "25034 03" ,
     1   "25042 03" ,
     1   "25051 01" ,
     1   "25052 05" ,
     1   "25062 03" ,
     1   "25123 01" ,
     1   "25138 05" ,
     1   "25151 05" ,
     1   "25173 01" ,
     1   "25206 03" ,
     1   "25248 01" ,
     1   "25325 03" ,
     1   "25356 05" ,
     1   "25378 01" ,
     1   "25392 03" ,
     1   "25399 01" ,
     1   "25400 03" ,
     1   "25428 01" ,
     1   "25503 01" ,
     1   "25538 01" ,
     1   "25551 01" ,
     1   "25563 01" ,
     1   "25594 01" ,
     1   "25595 03" ,
     1   "25621 05" ,
     1   "25627 05" ,
     1   "25656 03" ,
     1   "25677 01" ,
     1   "25703 01" ,
     1   "25744 01" ,
     1   "25767 01" ,
     1   "25858 03" ,
     1   "25913 01" ,
     1   "25932 03" ,
     1   "25954 01" ,
     1   "25956 01" ,
     1   "26038 03" ,
     1   "26063 01" ,
     1   "26115 01" ,
     1   "26231 05" ,
     1   "26258 01" ,
     1   "26298 01" ,
     1   "26422 01" ,
     1   "26477 05" ,
     1   "26544 05" ,
     1   "26629 01" ,
     1   "26666 05" ,
     1   "26702 01" ,
     1   "26781 01" ,
     1   "26825 05" ,
     1   "26850 01" ,
     1   "26882 05" ,
     1   "26941 05" ,
     1   "26961 05" ,
     1   "27037 01" ,
     1   "27066 05" ,
     1   "27196 01" ,
     1   "27217 05" ,
     1   "27242 05" ,
     1   "27271 01" ,
     1   "27331 05" ,
     1   "27479 05" ,
     1   "27532 05" ,
     1   "27553 01" ,
     1   "27595 01" ,
     1   "27612 01" ,
     1   "27707 01" ,
     1   "27731 01" ,
     1   "27758 05" ,
     1   "27823 03" ,
     1   "27947 01" ,
     1   "27962 05" ,
     1   "28097 01" ,
     1   "28116 01" ,
     1   "28144 01" ,
     1   "28165 01" ,
     1   "28383 01" ,
     1   "28419 01" ,
     1   "28428 03" ,
     1   "28440 01" /
  
       DATA    IGROUP08 /
     1   "28451 03" ,
     1   "28465 03" ,
     1   "28469 01" ,
     1   "28698 01" ,
     1   "28825 01" ,
     1   "28900 01" ,
     1   "28952 01" ,
     1   "28978 01" ,
     1   "29224 03" ,
     1   "29231 01" ,
     1   "29263 01" ,
     1   "29282 01" ,
     1   "29289 03" ,
     1   "29574 01" ,
     1   "29612 01" ,
     1   "29634 01" ,
     1   "29642 03" ,
     1   "29649 01" ,
     1   "29698 01" ,
     1   "29869 01" ,
     1   "29923 03" ,
     1   "29925 01" ,
     1   "30054 01" ,
     1   "30117 01" ,
     1   "30230 01" ,
     1   "30246 03" ,
     1   "30263 01" ,
     1   "30385 01" ,
     1   "30469 01" ,
     1   "30521 01" ,
     1   "30554 01" ,
     1   "30638 01" ,
     1   "30714 01" ,
     1   "30757 03" ,
     1   "30758 01" ,
     1   "30766 01" ,
     1   "30768 03" ,
     1   "30781 01" ,
     1   "30915 03" ,
     1   "30935 01" ,
     1   "30975 01" ,
     1   "31054 01" ,
     1   "31088 01" ,
     1   "31123 01" ,
     1   "31168 01" ,
     1   "31199 01" ,
     1   "31286 01" ,
     1   "31329 01" ,
     1   "31369 03" ,
     1   "31371 01" ,
     1   "31421 01" ,
     1   "31474 01" ,
     1   "31510 01" ,
     1   "31561 01" ,
     1   "31705 03" ,
     1   "31707 01" ,
     1   "31735 01" ,
     1   "31754 03" ,
     1   "31786 03" ,
     1   "31866 01" ,
     1   "31909 03" ,
     1   "31959 01" ,
     1   "31960 01" ,
     1   "31993 05" ,
     1   "32004 05" ,
     1   "32010 03" ,
     1   "32012 01" ,
     1   "32027 05" ,
     1   "32061 01" ,
     1   "32069 03" ,
     1   "32076 05" ,
     1   "32098 03" ,
     1   "32121 01" ,
     1   "32150 05" ,
     1   "32165 05" ,
     1   "32186 01" ,
     1   "32195 03" ,
     1   "32207 01" ,
     1   "32217 01" ,
     1   "32252 01" /

       DATA    IGROUP09 /
     1   "32287 03" ,
     1   "32389 01" ,
     1   "32408 03" ,
     1   "32411 01" ,
     1   "32509 01" ,
     1   "32540 03" ,
     1   "32564 01" ,
     1   "32618 01" ,
     1   "33008 05" ,
     1   "33019 05" ,
     1   "33036 01" ,
     1   "33041 05" ,
     1   "33261 05" ,
     1   "33317 01" ,
     1   "33345 01" ,
     1   "33393 01" ,
     1   "33429 03" ,
     1   "33526 05" ,
     1   "33631 01" ,
     1   "33658 05" ,
     1   "33711 01" ,
     1   "33791 03" ,
     1   "33815 01" ,
     1   "33833 05" ,
     1   "33869 05" ,
     1   "33889 01" ,
     1   "33945 01" ,
     1   "33983 05" ,
     1   "34009 01" ,
     1   "34122 05" ,
     1   "34172 01" ,
     1   "34247 01" ,
     1   "34300 01" ,
     1   "34336 03" ,
     1   "34363 05" ,
     1   "34398 05" ,
     1   "34519 05" ,
     1   "34560 01" ,
     1   "34579 05" ,
     1   "34691 01" ,
     1   "34731 01" ,
     1   "34838 05" ,
     1   "34866 05" ,
     1   "34880 01" ,
     1   "35108 01" ,
     1   "35191 01" ,
     1   "35229 01" ,
     1   "35345 01" ,
     1   "35361 03" ,
     1   "35363 01" ,
     1   "35394 01" ,
     1   "35416 01" ,
     1   "35671 03" ,
     1   "35683 01" ,
     1   "35700 01" ,
     1   "35715 03" ,
     1   "35729 01" ,
     1   "35746 01" ,
     1   "35763 01" ,
     1   "35796 01" ,
     1   "35884 01" ,
     1   "35953 01" ,
     1   "35969 03" ,
     1   "35997 01" ,
     1   "36001 01" ,
     1   "36052 01" ,
     1   "36096 01" ,
     1   "36097 03" ,
     1   "36126 01" ,
     1   "36177 01" ,
     1   "36213 01" ,
     1   "36259 01" ,
     1   "36498 01" ,
     1   "36535 01" ,
     1   "36729 01" ,
     1   "36859 01" ,
     1   "36870 01" ,
     1   "37018 01" ,
     1   "37057 01" ,
     1   "37085 01" /
 
       DATA    IGROUP10 /                     
     1   "37260 01" ,
     1   "37390 01" ,
     1   "37472 01" ,
     1   "37651 01" ,
     1   "37789 01" ,
     1   "37860 01" ,
     1   "37985 01" ,
     1   "46689 05" ,
     1   "46692 05" ,
     1   "46696 01" ,
     1   "46697 03" ,
     1   "46736 01" ,
     1   "46740 01" ,
     1   "46743 03" ,
     1   "46770 05" ,
     1   "46810 01" ,
     1   "47008 03" ,
     1   "47014 01" ,
     1   "47025 01" ,
     1   "47035 01" ,
     1   "47041 05" ,
     1   "47058 01" ,
     1   "47065 03" ,
     1   "47105 01" ,
     1   "47110 01" ,
     1   "47112 03" ,
     1   "47135 01" ,
     1   "47138 03" ,
     1   "47159 01" ,
     1   "47161 03" ,
     1   "47184 01" ,
     1   "47401 01" ,
     1   "47409 03" ,
     1   "47412 01" ,
     1   "47418 05" ,
     1   "47420 01" ,
     1   "47421 03" ,
     1   "47425 05" ,
     1   "47580 01" ,
     1   "47582 05" ,
     1   "47585 03" ,
     1   "47590 01" ,
     1   "47591 03" ,
     1   "47598 05" ,
     1   "47600 01" ,
     1   "47602 03" ,
     1   "47612 05" ,
     1   "47634 05" ,
     1   "47635 03" ,
     1   "47636 01" ,
     1   "47648 03" ,
     1   "47662 01" ,
     1   "47675 05" ,
     1   "47677 03" ,
     1   "47678 01" ,
     1   "47740 01" ,
     1   "47741 03" ,
     1   "47743 05" ,
     1   "47764 01" ,
     1   "47777 05" ,
     1   "47778 01" ,
     1   "47808 05" ,
     1   "47817 01" ,
     1   "47819 03" ,
     1   "47827 03" ,
     1   "47837 01" ,
     1   "47898 01" ,
     1   "47899 03" ,
     1   "47909 01" ,
     1   "47918 01" ,
     1   "47931 03" ,
     1   "47936 01" ,
     1   "47945 01" ,
     1   "47971 01" ,
     1   "60010 03" ,
     1   "60015 01" ,
     1   "60020 05" ,
     1   "60030 05" ,
     1   "60040 01" ,
     1   "60096 01" /
 
       DATA    IGROUP11/
     1   "60101 01" ,
     1   "60135 03" ,
     1   "60155 03" ,
     1   "60156 01" ,
     1   "60230 03" ,
     1   "60250 01" ,
     1   "61415 01" ,
     1   "61442 01" ,
     1   "61600 01" ,
     1   "61701 01" ,
     1   "70026 01" ,
     1   "70030 03" ,
     1   "70045 05" ,
     1   "70063 03" ,
     1   "70086 01" ,
     1   "70104 03" ,
     1   "70121 01" ,
     1   "70133 01" ,
     1   "70173 03" ,
     1   "70174 01" ,
     1   "70200 01" ,
     1   "70207 03" ,
     1   "70219 01" ,
     1   "70231 01" ,
     1   "70261 01" ,
     1   "70264 01" ,
     1   "70271 01" ,
     1   "70273 01" ,
     1   "70291 01" ,
     1   "70308 01" ,
     1   "70316 01" ,
     1   "70326 01" ,
     1   "70333 01" ,
     1   "70350 01" ,
     1   "70361 01" ,
     1   "70371 01" ,
     1   "70381 03" ,
     1   "70398 01" ,
     1   "70414 01" ,
     1   "70454 01" ,
     1   "76225 01" ,
     1   "76393 01" ,
     1   "76458 01" ,
     1   "76644 01" ,
     1   "76679 01" ,
     1   "76692 01" ,
     1   "76723 01" ,
     1   "78016 01" ,
     1   "78073 01" ,
     1   "78095 03" ,
     1   "78103 01" ,
     1   "78109 03" ,
     1   "78118 01" ,
     1   "78321 01" ,
     1   "78325 01" ,
     1   "78367 01" ,
     1   "78384 01" ,
     1   "78388 01" ,
     1   "78439 01" ,
     1   "78486 01" ,
     1   "78526 01" ,
     1   "78535 03" ,
     1   "78583 01" ,
     1   "78650 03" ,
     1   "78663 01" ,
     1   "78705 03" ,
     1   "78706 01" ,
     1   "78708 05" ,
     1   "78720 01" ,
     1   "78857 03" ,
     1   "78862 01" ,
     1   "78925 03" ,
     1   "78946 01" ,
     1   "78954 03" ,
     1   "78970 01" ,
     1   "78982 01" ,
     1   "91066 01" ,
     1   "91155 01" ,
     1   "91161 03" ,
     1   "91165 01" /

       DATA    IGROUP12 /
     1   "91178 05" ,
     1   "91182 03" ,
     1   "91190 01" ,
     1   "91191 03" ,
     1   "91203 03" ,
     1   "91212 01" ,
     1   "91218 03" ,
     1   "91222 01" ,
     1   "91232 01" ,
     1   "91245 01" ,
     1   "91250 01" ,
     1   "91275 01" ,
     1   "91282 03" ,
     1   "91285 01" ,
     1   "91293 05" ,
     1   "91317 03" ,
     1   "91323 01" ,
     1   "91334 01" ,
     1   "91366 01" ,
     1   "91408 01" ,
     1   "91413 01" ,
     1   "91487 01" ,
     1   "91490 01" ,
*        blanks to fill out dimensioned array size
     1   57*"        " / 
         END
