//NLOPEZ1Z JOB CLASS=A,MSGCLASS=H,NOTIFY=NLOPEZ
//* Sample jcl to run batch DATDEMO pgm v1
//S EXEC PGM=DATDEMO
//*STEPLIB  DD  DISP=SHR,DSN=DAT.DEV.LOAD     UCD Loadlib
//STEPLIB  DD  DISP=SHR,DSN=NLOPEZ.IDZ.LOAD   IDz Loadlib
//*STEPLIB  DD  DISP=SHR,DSN=DAT.POC.LOAD
//         DD DSN=EQAE20.SEQAMOD,DISP=SHR
//         DD DSN=FELE20.SFEKAUTH,DISP=SHR
//SYSOUT   DD SYSOUT=*
//* for cob 3-4 needs this
//*AQEV4LST DD DSN=DNET323.TEST.LISTING,DISP=SHR
//CEEDUMP  DD SYSOUT=*
//*
//* zapp needs alloc the same file during the compile
//* dd below is needed when compileing with TEST(SOURECE,SEP) only
//*EQADEBUG DD DSN=NLOPEZ.SYSDEBUG,DISP=SHR  Sep file
//CEEOPTS  DD *
TEST(,,,DBMDT%NLOPEZ:)
/*
//*
//* Use TEST to start the IDz debbugger Prespective
//* TEST(,,,DBMDT%NLOPEZ:)
//*
//* Or run this to generate the code coverage rpt
//*ENVAR("EQA_STARTUP_KEY=CC")
/*