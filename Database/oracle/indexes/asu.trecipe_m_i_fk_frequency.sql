DROP INDEX ASU.TRECIPE_M_I_FK_FREQUENCY
/

--
-- TRECIPE_M_I_FK_FREQUENCY  (Index) 
--
CREATE INDEX ASU.TRECIPE_M_I_FK_FREQUENCY ON ASU.TRECIPE_MEDIC
(FK_FREQUENCY_ID)
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


