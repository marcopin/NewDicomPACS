DROP INDEX ASU.TPROFP_DOG_BY_COMPANYID
/

--
-- TPROFP_DOG_BY_COMPANYID  (Index) 
--
CREATE INDEX ASU.TPROFP_DOG_BY_COMPANYID ON ASU.TPROFP_DOG
(FK_COMPANYID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

