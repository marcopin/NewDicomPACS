DROP INDEX ASU.TXRAY_APPARATS_UID
/

--
-- TXRAY_APPARATS_UID  (Index) 
--
CREATE UNIQUE INDEX ASU.TXRAY_APPARATS_UID ON ASU.TXRAY_APPARATS
(FK_ID)
NOLOGGING
TABLESPACE INDX
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


