DROP INDEX ASU.TTEMPLIST_SMIDID
/

--
-- TTEMPLIST_SMIDID  (Index) 
--
CREATE INDEX ASU.TTEMPLIST_SMIDID ON ASU.TTEMPLIST
(FK_SMIDID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          5376K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


