--------------------------------------------------------
-- Archivo creado  - viernes-octubre-12-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CAPTURAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CGOMEZ"."CAPTURAS_SEQ"  MINVALUE 1 MAXVALUE 6000 INCREMENT BY 1 START WITH 5000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MUNICIPIOS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CGOMEZ"."MUNICIPIOS_SEQ"  MINVALUE 1 MAXVALUE 100 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CAPTURAS
--------------------------------------------------------

  CREATE TABLE "CGOMEZ"."CAPTURAS" 
   (	"ID" NUMBER, 
	"FECHA" DATE, 
	"DEPARTAMENTO" VARCHAR2(255 BYTE), 
	"MUNICIPIO_ID" NUMBER, 
	"DIA" VARCHAR2(255 BYTE), 
	"BARRIO" VARCHAR2(255 BYTE), 
	"ZONA" VARCHAR2(255 BYTE), 
	"CLASE_SITIO" VARCHAR2(255 BYTE), 
	"EDAD" NUMBER, 
	"SEXO" VARCHAR2(255 BYTE), 
	"ESTADO_CIVIL" VARCHAR2(255 BYTE), 
	"CLASE_EMPLEADO" VARCHAR2(255 BYTE), 
	"PROFESION" VARCHAR2(255 BYTE), 
	"ESCOLARIDAD" VARCHAR2(255 BYTE), 
	"DELITO" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table MUNICIPIOS
--------------------------------------------------------

  CREATE TABLE "CGOMEZ"."MUNICIPIOS" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
REM INSERTING into CGOMEZ.CAPTURAS
SET DEFINE OFF;
REM INSERTING into CGOMEZ.MUNICIPIOS
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table CAPTURAS
--------------------------------------------------------

  ALTER TABLE "CGOMEZ"."CAPTURAS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "CGOMEZ"."MUNICIPIOS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAPTURAS
--------------------------------------------------------

  ALTER TABLE "CGOMEZ"."CAPTURAS" ADD CONSTRAINT "FK_MUNICIPIOS_CAPTURAS" FOREIGN KEY ("MUNICIPIO_ID")
	  REFERENCES "CGOMEZ"."MUNICIPIOS" ("ID") ENABLE;
