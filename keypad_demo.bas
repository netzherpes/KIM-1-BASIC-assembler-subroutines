
 1 GOSUB 200
 5 ES$=CHR$(27)+CHR$(91)
 6 CL$=ES$+"2J":HM$=ES$+"H"
 7 DN$=ES$+"1B":UP$=ES$+"1A"
 8 LEF$=ES$+"1D":RIG$=ES$+"1C"
 9 PRINT CL$+HM$
 10 POKE 8256,0
 20 POKE 8257,3
 30 X=USR(0)
 40 X=X/256
 45 X=INT(X)
 50 IF X=0 THEN PRINT LEF$+LEF$+"*";
 60 IF X=1 THEN PRINT "*";
 70 IF X=2 THEN PRINT UP$+LEF$+"*";
 80 IF X=3 THEN PRINT DN$+LEF$+"*";
 90 GOTO 30
 
 199 REM POKE A LITTLE PRG to $0300
 200 FOR I=1 TO 10
 210 READ A
 220 POKE 767+I,A
 230 NEXT I
 240 DATA 32,194,47,32,106,31,32
 250 DATA 149,49,96
 260 RETURN
 
 