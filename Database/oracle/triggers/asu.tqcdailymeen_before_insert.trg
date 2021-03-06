DROP TRIGGER ASU.TQCDAILYMEEN_BEFORE_INSERT
/

--
-- TQCDAILYMEEN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TQCDAILYMEEN (Sequence)
--   TQCDAILYMEEN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCDAILYMEEN_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCDAILYMEEN REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCDAILYMEEN.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


