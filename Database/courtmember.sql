--------------------------------------------------------
--  File created - Thursday-June-13-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COURT_MEMBERS
--------------------------------------------------------

  CREATE TABLE "COURT"."COURT_MEMBERS" 
   (	"CUSTIC" VARCHAR2(50 BYTE), 
	"MEMBERID" NUMBER(30,0), 
	"ANNUAL_FEE" NUMBER(38,2), 
	"DISCOUNT" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into COURT.COURT_MEMBERS
SET DEFINE OFF;
Insert into COURT.COURT_MEMBERS (CUSTIC,MEMBERID,ANNUAL_FEE,DISCOUNT) values ('940529115632',131,50,50);
Insert into COURT.COURT_MEMBERS (CUSTIC,MEMBERID,ANNUAL_FEE,DISCOUNT) values ('95011295677',132,50,50);
--------------------------------------------------------
--  DDL for Index COURT_MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURT"."COURT_MEMBERS_PK" ON "COURT"."COURT_MEMBERS" ("CUSTIC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger MM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "COURT"."MM" 
   before insert on "COURT"."COURT_MEMBERS" 
   for each row 
begin  
   if inserting then 
      if :NEW."MEMBERID" is null then 
         select MEMID_SEQ.nextval into :NEW."MEMBERID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "COURT"."MM" ENABLE;
--------------------------------------------------------
--  Constraints for Table COURT_MEMBERS
--------------------------------------------------------

  ALTER TABLE "COURT"."COURT_MEMBERS" ADD CONSTRAINT "COURT_MEMBERS_PK" PRIMARY KEY ("CUSTIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COURT"."COURT_MEMBERS" MODIFY ("CUSTIC" NOT NULL ENABLE);
