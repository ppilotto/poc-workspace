       ID DIVISION.
       PROGRAM-ID. DATBATCH.
      *
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-AREA1.
          05  FILLER       PIC X(80).
          05  num1         PIC 9(3) value is 000.
          05  num2         PIC 9(3) value is 003.
      *
       COPY DATDEPND.
      *
       PROCEDURE DIVISION.
           DISPLAY 'SECTION 1 - DATBATCH Dev1 v1.0'.

      * do something ...
           PERFORM VARYING num1 FROM 1 BY 1 UNTIL num1 > num2
                IF num1 > 0  THEN
                    perform dump_num1
                END-IF
           END-PERFORM.

           DISPLAY 'SECTION 2 - Test vl ' WS-VER.

           STOP RUN.
      *==========  ver2
       dump_num1.
      *     display 'Tracing num1=' num1.