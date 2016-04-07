ALTER TABLE ASU.TIS_RESETTLEMENT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_RESETTLEMENT CASCADE CONSTRAINTS
/

--
-- TIS_RESETTLEMENT  (Table) 
--
--  Dependencies: 
--   TIS_LIST (Table)
--
CREATE TABLE ASU.TIS_RESETTLEMENT
(
  FK_ID          NUMBER                         NOT NULL,
  FC_MUCODE      VARCHAR2(64 BYTE),
  FD_REFDATE     DATE,
  FK_IS_LIST_ID  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


--
-- PK_TIS_RESSETLEMENT  (Index) 
--
--  Dependencies: 
--   TIS_RESETTLEMENT (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_RESSETLEMENT ON ASU.TIS_RESETTLEMENT
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TIS_RESETTLEMENT_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_RESETTLEMENT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_RESETTLEMENT_BI
  BEFORE INSERT
  ON "ASU"."TIS_RESETTLEMENT"
  REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_RESETTLEMENT.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_RESETTLEMENT 
-- 
ALTER TABLE ASU.TIS_RESETTLEMENT ADD (
  CONSTRAINT PK_TIS_RESSETLEMENT
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

-- 
-- Foreign Key Constraints for Table TIS_RESETTLEMENT 
-- 
ALTER TABLE ASU.TIS_RESETTLEMENT ADD (
  CONSTRAINT FK_TIS_RESS_REFERENCE_TIS_LIST 
 FOREIGN KEY (FK_IS_LIST_ID) 
 REFERENCES ASU.TIS_LIST (FK_ID))
/
