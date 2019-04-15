--------------------------------------------------------
--  File created - Pondelok-apríla-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PONUKA
--------------------------------------------------------

  CREATE TABLE "C##MARIO"."PONUKA" 
   (	"PONUKA_ID" NUMBER(6,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAZOV" NVARCHAR2(50), 
	"CENA" NUMBER(4,2), 
	"CAS" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##MARIO.PONUKA
SET DEFINE OFF;
Insert into C##MARIO.PONUKA (PONUKA_ID,NAZOV,CENA,CAS) values ('1','umyvanie','2','20');
Insert into C##MARIO.PONUKA (PONUKA_ID,NAZOV,CENA,CAS) values ('2','vysavanie','1','20');
Insert into C##MARIO.PONUKA (PONUKA_ID,NAZOV,CENA,CAS) values ('3','voskovanie','0,5','5');
Insert into C##MARIO.PONUKA (PONUKA_ID,NAZOV,CENA,CAS) values ('4','susenie','0,5','10');
--------------------------------------------------------
--  DDL for Index PONUKY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MARIO"."PONUKY_PK" ON "C##MARIO"."PONUKA" ("PONUKA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PONUKA
--------------------------------------------------------

  ALTER TABLE "C##MARIO"."PONUKA" MODIFY ("PONUKA_ID" NOT NULL ENABLE);
  ALTER TABLE "C##MARIO"."PONUKA" ADD CONSTRAINT "PONUKY_PK" PRIMARY KEY ("PONUKA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;