--------------------------------------------------------
--  File created - Thursday-June-13-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOOKING
--------------------------------------------------------

  CREATE TABLE "COURT"."BOOKING" 
   (	"BOOKING_DATE" VARCHAR2(20 BYTE), 
	"STARTTIME" VARCHAR2(20 BYTE), 
	"ENDTIME" VARCHAR2(20 BYTE), 
	"CUSTIC" VARCHAR2(20 BYTE), 
	"BOOK_ID" VARCHAR2(20 BYTE), 
	"STAFFID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into COURT.BOOKING
SET DEFINE OFF;
Insert into COURT.BOOKING (BOOKING_DATE,STARTTIME,ENDTIME,CUSTIC,BOOK_ID,STAFFID) values ('2019-06-20','10am','9pm','940529115632','2',3);
Insert into COURT.BOOKING (BOOKING_DATE,STARTTIME,ENDTIME,CUSTIC,BOOK_ID,STAFFID) values ('2019-06-13','7pm','3pm','950112982345','4',5);
Insert into COURT.BOOKING (BOOKING_DATE,STARTTIME,ENDTIME,CUSTIC,BOOK_ID,STAFFID) values ('2019-06-28','2pm','12am','95011295677','3',4);
--------------------------------------------------------
--  DDL for Index BOOKING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURT"."BOOKING_PK" ON "COURT"."BOOKING" ("CUSTIC", "BOOK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger STAFFTRI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "COURT"."STAFFTRI" 
   before insert on "COURT"."BOOKING" 
   for each row 
begin  
   if inserting then 
      if :NEW."STAFFID" is null then 
         select STAFFID_SEQ.nextval into :NEW."STAFFID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "COURT"."STAFFTRI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BOOKTRI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "COURT"."BOOKTRI" 
   before insert on "COURT"."BOOKING" 
   for each row 
begin  
   if inserting then 
      if :NEW."BOOK_ID" is null then 
         select BOOK_SQ.nextval into :NEW."BOOK_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "COURT"."BOOKTRI" ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOKING
--------------------------------------------------------

  ALTER TABLE "COURT"."BOOKING" ADD CONSTRAINT "BOOKING_PK" PRIMARY KEY ("CUSTIC", "BOOK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COURT"."BOOKING" MODIFY ("CUSTIC" NOT NULL ENABLE);
