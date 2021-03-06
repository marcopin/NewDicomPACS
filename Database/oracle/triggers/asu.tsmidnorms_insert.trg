DROP TRIGGER ASU.TSMIDNORMS_INSERT
/

--
-- TSMIDNORMS_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSMIDNORMS (Sequence)
--   TSMIDNORMS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSMIDNORMS_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TSMIDNORMS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_TSMIDNORMS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


