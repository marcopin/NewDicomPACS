DROP INDEX ASU.TNAZSHAB_DIAG_ID
/

--
-- TNAZSHAB_DIAG_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZSHAB_DIAG_ID ON ASU.TNAZSHAB_DIAG
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

