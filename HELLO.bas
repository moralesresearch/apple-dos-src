10 TEXT:HOME
20 D$ = CHR$(4):REM CTRL-D
30 VTAB 2:A$= "Apple II Series": GOSUB 1000
40 VTAB 4:A$ = "Apple DOS 3.3.2": GOSUB 1000
50 VTAB 7:A$ = "June 2023": GOSUB 1000
60 PRINT D$; "BLOAD LOADER.OBJ"
70 CALL 4096 : REM FAST LOAD IN BASIC
80 VTAB 10: CALL -958: A$= "(C) 2023 Morales Research Corp, 1982 Apple Computers, Inc"
90 C= PEEK (- 1101): IF C = 6 THEN PRINT : INVERSE : A$= "Be sure CAPS LOCK is DOWN": GOSUB 1000: NORMAL
100 PRINT CHR$ (4);"FP"
1000 REM CENTER STRING A$
1010 B= INT(20 - (LEN (A$)/2)): IF B < 0 THEN B = 1
1020 HTAB B: PRINT A$: RETURN
