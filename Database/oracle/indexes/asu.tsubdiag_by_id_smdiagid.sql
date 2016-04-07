DROP INDEX ASU.TSUBDIAG_BY_ID_SMDIAGID
/

--
-- TSUBDIAG_BY_ID_SMDIAGID  (Index) 
--
CREATE UNIQUE INDEX ASU.TSUBDIAG_BY_ID_SMDIAGID ON ASU.TSUBDIAG
(FK_ID, FK_SMDIAGID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3200K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

