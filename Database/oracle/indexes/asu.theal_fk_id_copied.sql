DROP INDEX ASU.THEAL_FK_ID_COPIED
/

--
-- THEAL_FK_ID_COPIED  (Index) 
--
CREATE INDEX ASU.THEAL_FK_ID_COPIED ON ASU.THEAL
(FK_ID_COPIED)
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

