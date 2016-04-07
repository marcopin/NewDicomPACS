DROP INDEX ASU.TNAZMEDZAMENA_MEDICSID
/

--
-- TNAZMEDZAMENA_MEDICSID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZMEDZAMENA_MEDICSID ON ASU.TNAZMEDZAMENA
(FK_MEDICID, FK_MEDICZAMENAID)
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

