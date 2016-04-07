DROP INDEX ASU.TRECIPE_DLO_PAC_SNP_PK
/

--
-- TRECIPE_DLO_PAC_SNP_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_PAC_SNP_PK ON ASU.TRECIPE_DLO_PAC_SNP
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

