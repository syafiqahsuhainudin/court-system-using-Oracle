--------------------------------------------------------
--  File created - Thursday-June-13-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BILL
--------------------------------------------------------

  CREATE TABLE "COURT"."BILL" 
   (	"BILLID" NUMBER(10,0), 
	"TYPE_PAYMENT" VARCHAR2(50 BYTE), 
	"CUSTIC" VARCHAR2(20 BYTE), 
	"BOOK_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into COURT.BILL
SET DEFINE OFF;
Insert into COURT.BILL (BILLID,TYPE_PAYMENT,CUSTIC,BOOK_ID) values (2,'BANK IN','940529115632','2');
Insert into COURT.BILL (BILLID,TYPE_PAYMENT,CUSTIC,BOOK_ID) values (3,'BANK IN','940529115632','2');
Insert into COURT.BILL (BILLID,TYPE_PAYMENT,CUSTIC,BOOK_ID) values (4,'BANK IN','950112982345','4');
--------------------------------------------------------
--  DDL for Index SYS_C007260
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURT"."SYS_C007260" ON "COURT"."BILL" ("BILLID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger BILLTRI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "COURT"."BILLTRI" 
   before insert on "COURT"."BILL" 
   for each row 
begin  
   if inserting then 
      if :NEW."BILLID" is null then 
         select COURTID_SEQQ.nextval into :NEW."BILLID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "COURT"."BILLTRI" ENABLE;
--------------------------------------------------------
--  Constraints for Table BILL
--------------------------------------------------------

  ALTER TABLE "COURT"."BILL" ADD PRIMARY KEY ("BILLID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
