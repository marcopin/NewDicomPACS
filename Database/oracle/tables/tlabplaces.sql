DROP TABLE ASU.TLABPLACES CASCADE CONSTRAINTS
/

--
-- TLABPLACES  (Table) 
--
CREATE TABLE ASU.TLABPLACES
(
  FK_ID     NUMBER(9)                           DEFAULT -1,
  FN_PLACE  NUMBER(3)                           DEFAULT 0,
  FN_PROBE  NUMBER(6)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TLABPLACES IS '��������� ������� ���� � ����������� �� �������'
/

COMMENT ON COLUMN ASU.TLABPLACES.FK_ID IS 'SEQUENCE=[SEQ_TLABPLACES]'
/

COMMENT ON COLUMN ASU.TLABPLACES.FN_PLACE IS '����� �������� �����'
/

COMMENT ON COLUMN ASU.TLABPLACES.FN_PROBE IS '����� ��������� �����'
/


--
-- TLABPLACES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TLABPLACES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLABPLACES_BEFORE_INSERT" 
BEFORE  INSERT  ON ASU.TLABPLACES REFERENCING
 NEW AS NEW
 OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TLABPLACES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

