DROP TABLE ASU.VNAZ_PB1 CASCADE CONSTRAINTS
/

--
-- VNAZ_PB1  (Table) 
--
CREATE TABLE ASU.VNAZ_PB1
(
  FK_ID           NUMBER(15)                    NOT NULL,
  FK_SMID         NUMBER(15),
  FC_REMARK       VARCHAR2(4000 BYTE),
  FD_NAZ          DATE,
  FD_RUN          DATE,
  FK_ROOMID       NUMBER(9),
  FK_ISPOLID      NUMBER(15),
  FK_VRACHID      NUMBER(15),
  FK_NAZSOSID     NUMBER(15),
  FK_PACID        NUMBER(15),
  FK_RESULTID     NUMBER(15),
  FC_NAME         VARCHAR2(100 BYTE),
  FL_PLAT         VARCHAR2(3 BYTE),
  FC_TYPE         VARCHAR2(20 BYTE),
  FL_IN_RASPIS    NUMBER(1),
  FL_ISVRACHVIEW  NUMBER(1),
  FL_INS          NUMBER(1),
  FL_MORE_PUT     NUMBER(5),
  FK_DOCID        NUMBER(15),
  FK_NAZTYPEID    NUMBER(15),
  FK_NAZOWNER     NUMBER(15),
  FK_DIFFERID     NUMBER(15),
  FK_OBOSNOVID    NUMBER(15),
  FK_SINDROMID    NUMBER(15)
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

