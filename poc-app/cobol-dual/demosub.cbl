       ID DIVISION.
       PROGRAM-ID. DEMOSUB.
      * Test sample static call with DATBATCH
      * Since this is in a folder mapped to the isDUal property,
      * cobol.groovy will produce 2 artifacts CICS and batch
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MYDATA              PIC X(1).
       01 MYDATA2             PIC X(1).
       PROCEDURE DIVISION.
           MOVE MYDATA TO MYDATA2.
           DISPLAY 'DemoSub HERE In DUAL mode - test v5    '.