//NLOPEZ1Z JOB CLASS=A,MSGCLASS=H,NOTIFY=NLOPEZ
//* Sample jcl to run translate a test cics pgm
//TRN    EXEC PGM=DFHECP1$,REGION=2048K,
//             PARM=('CICS,SOURCE,NOSEQ,COBOL3,NODEBUG')
//STEPLIB DD DSN=DFH560.CICS.SDFHLOAD,DISP=SHR
//SYSIN DD DSN=NLOPEZ.IDZ.COBOL(DATXCICS),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD DSN=&&SYSCIN,SPACE=(400,(400,100)),UNIT=VIO,DISP=(,PASS)
//*            DISP=(,PASS),UNIT=SYSDA,
//*            DCB=BLKSIZE=400,
//*            SPACE=(400,(400,100))
//PNCHPRT  EXEC PGM=IEBGENER
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//SYSUT1   DD  DISP=SHR,DSN=&&SYSCIN
//SYSUT2   DD  SYSOUT=*
