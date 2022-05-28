--------------------------------------------------------
--  File created - Thursday-June-13-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "COURT"."CUSTOMERS" 
   (	"CUSTIC" VARCHAR2(20 BYTE), 
	"CUSTNAMES" VARCHAR2(50 BYTE), 
	"ADDRESS" VARCHAR2(50 BYTE), 
	"CONTACTNUM" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"CUSTPASSWORD" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into COURT.CUSTOMERS
SET DEFINE OFF;
Insert into COURT.CUSTOMERS (CUSTIC,CUSTNAMES,ADDRESS,CONTACTNUM,EMAIL,CUSTPASSWORD) values ('940529115634','syafiqah','pt 3757 taman perumahan putera jaya','01117836384','mp20luv@gmail.com','123abc');
Insert into COURT.CUSTOMERS (CUSTIC,CUSTNAMES,ADDRESS,CONTACTNUM,EMAIL,CUSTPASSWORD) values ('940529115632','Nur','taman perumahan putera jaya','01117836344','pyqah_94@yahoo.com','12345');
Insert into COURT.CUSTOMERS (CUSTIC,CUSTNAMES,ADDRESS,CONTACTNUM,EMAIL,CUSTPASSWORD) values ('950112982345','Aina','Shah alam','01117834444','a@gmail.com','1234');
Insert into COURT.CUSTOMERS (CUSTIC,CUSTNAMES,ADDRESS,CONTACTNUM,EMAIL,CUSTPASSWORD) values ('95011295677','syahirah','KL','0111784555','ann@yahoo.com','1233');
Insert into COURT.CUSTOMERS (CUSTIC,CUSTNAMES,ADDRESS,CONTACTNUM,EMAIL,CUSTPASSWORD) values ('9301156344','syahirah','KL','0124455777','s@yahoo.com','1122');
--------------------------------------------------------
--  DDL for Index CUSTIC_PKK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURT"."CUSTIC_PKK" ON "COURT"."CUSTOMERS" ("CUSTIC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMAIL_UKK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURT"."EMAIL_UKK" ON "COURT"."CUSTOMERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "COURT"."CUSTOMERS" ADD CONSTRAINT "EMAIL_UKK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COURT"."CUSTOMERS" ADD CONSTRAINT "CUSTIC_PKK" PRIMARY KEY ("CUSTIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COURT"."CUSTOMERS" MODIFY ("CUSTPASSWORD" CONSTRAINT "CUSTPASSWORD_NNN" NOT NULL ENABLE);
  ALTER TABLE "COURT"."CUSTOMERS" MODIFY ("EMAIL" CONSTRAINT "EMAIL_NNN" NOT NULL ENABLE);
  ALTER TABLE "COURT"."CUSTOMERS" MODIFY ("CONTACTNUM" CONSTRAINT "CONTACTNUM_NNN" NOT NULL ENABLE);
  ALTER TABLE "COURT"."CUSTOMERS" MODIFY ("ADDRESS" CONSTRAINT "ADDRESS_NNN" NOT NULL ENABLE);
  ALTER TABLE "COURT"."CUSTOMERS" MODIFY ("CUSTNAMES" CONSTRAINT "CUSTNAMES_NNN" NOT NULL ENABLE);