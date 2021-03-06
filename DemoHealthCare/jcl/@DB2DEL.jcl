//HCZMDB2 JOB 241901,'DB2 DELETE',NOTIFY=&SYSUID,CLASS=A,MSGCLASS=H
//JOBLIB   DD DSN=DSNB10.SDSNLOAD,DISP=SHR
//*
//********************************************************************
//*   CREATE STORAGE GROUP/DATABASES/TABLESPACES                     *
//********************************************************************
//DELETE  EXEC PGM=IKJEFT01,DYNAMNBR=20
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
   DSN SYSTEM(DBBG)
   RUN  PROGRAM(DSNTIAD) PLAN(DSNTIA11) -
        LIB('DSNB10.DBBG.RUNLIB.LOAD')
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD *
    DROP     TABLE      HCZMSA1.patient;
    DROP     TABLE      HCZMSA1.user;
    DROP     TABLE      HCZMSA1.medication;
    DROP     TABLE      HCZMSA1.meditation;
    DROP     TABLE      HCZMSA1.prescription;
    DROP     TABLE      HCZMSA1.threshold;
    DROP     TABLE      HCZMSA1.heartrate;
    DROP     TABLE      HCZMSA1.bloodpressure;
    DROP     TABLE      HCZMSA1.session;
    DROP     TABLESPACE HCZMSA1.HCZMTS01;
    DROP     TABLESPACE HCZMSA1.HCZMTS02;
    DROP     TABLESPACE HCZMSA1.HCZMTS03;
    DROP     TABLESPACE HCZMSA1.HCZMTS04;
    DROP     TABLESPACE HCZMSA1.HCZMTS05;
    DROP     TABLESPACE HCZMSA1.HCZMTS06;
    DROP     TABLESPACE HCZMSA1.HCZMTS07;
    DROP     TABLESPACE HCZMSA1.HCZMTS08;
    commit;
    DROP     DATABASE   HCZMSA1;
    commit;
    DROP     STOGROUP   HCZMSG02;
/*