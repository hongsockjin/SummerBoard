-------------------------------------------------------
--  DDL for Table JMBOARD
--------------------------------------------------------

  CREATE TABLE "JMBOARD" 
   (	"IDX" NUMBER(8,0), 
	"WRITER" VARCHAR2(50 BYTE), 
	"SUBJECT" VARCHAR2(150 BYTE), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"HITCOUNT" NUMBER(8,0), 
	"RECOMMENDCOUNT" NUMBER(8,0), 
	"WRITEDATE" DATE, 
	"WRITERID" VARCHAR2(50 BYTE), 
	"FILENAME" VARCHAR2(100 BYTE)
   );
--------------------------------------------------------
--  DDL for Index JMBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JMBOARD_PK" ON "JMBOARD" ("IDX");
--------------------------------------------------------
--  Constraints for Table JMBOARD
--------------------------------------------------------

  ALTER TABLE "JMBOARD" ADD CONSTRAINT "JMBOARD_PK" PRIMARY KEY ("IDX");
  
  ALTER TABLE "JMBOARD" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("WRITER" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("SUBJECT" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("HITCOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("RECOMMENDCOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD" MODIFY ("WRITEDATE" NOT NULL ENABLE);
  
  ALTER TABLE "JMBOARD" MODIFY ("WRITERID" NOT NULL ENABLE);
  
  --------------------------------------------------------
--  DDL for Table JMBOARD_COMMENT
--------------------------------------------------------

  CREATE TABLE "JMBOARD_COMMENT" 
   (	"IDX" NUMBER(8,0), 
	"WRITER" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"WRITEDATE" DATE, 
	"LINKEDARTICLENUM" NUMBER(8,0), 
	"WRITERID" VARCHAR2(50 BYTE)
   );
--------------------------------------------------------
--  DDL for Index JMBOARD_COMMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JMBOARD_COMMENT_PK" ON "JMBOARD_COMMENT" ("IDX");

--------------------------------------------------------
--  Constraints for Table JMBOARD_COMMENT
--------------------------------------------------------

  ALTER TABLE "JMBOARD_COMMENT" ADD CONSTRAINT "JMBOARD_COMMENT_PK" PRIMARY KEY ("IDX");
 
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("WRITERID" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("WRITEDATE" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_COMMENT" MODIFY ("LINKEDARTICLENUM" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Table JMBOARD_MEMBER
--------------------------------------------------------

  CREATE TABLE "JMBOARD_MEMBER" 
   (	"IDX" NUMBER(8,0), 
	"USERID" VARCHAR2(70 BYTE), 
	"USERPW" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE
   );
--------------------------------------------------------
--  DDL for Index JMBOARD_MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JMBOARD_MEMBER_PK" ON "JMBOARD_MEMBER" ("IDX"); 

--------------------------------------------------------
--  Constraints for Table JMBOARD_MEMBER
--------------------------------------------------------

  ALTER TABLE "JMBOARD_MEMBER" ADD CONSTRAINT "JMBOARD_MEMBER_PK" PRIMARY KEY ("IDX");

  ALTER TABLE "JMBOARD_MEMBER" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_MEMBER" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_MEMBER" MODIFY ("USERPW" NOT NULL ENABLE);
 
  ALTER TABLE "JMBOARD_MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Sequence BOARDCOMMENTSEQ
--------------------------------------------------------

  CREATE SEQUENCE  "BOARDCOMMENTSEQ"  MINVALUE 0 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
   
--------------------------------------------------------
--  DDL for Sequence BOARDLISTSEQ
--------------------------------------------------------

  CREATE SEQUENCE  "BOARDLISTSEQ"  MINVALUE 0 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
   
--------------------------------------------------------
--  DDL for Sequence MEMBERSEQ
--------------------------------------------------------

  CREATE SEQUENCE  "MEMBERSEQ"  MINVALUE 0 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;