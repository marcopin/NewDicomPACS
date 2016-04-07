DROP TRIGGER ASU.TSRTIPROOM_BEFORE_INSERT
/

--
-- TSRTIPROOM_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSRTIPROOM (Sequence)
--   TSRTIPROOM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSRTIPROOM_BEFORE_INSERT" 
BEFORE  INSERT  ON ASU.TSRTIPROOM REFERENCING
 NEW AS NEW
 OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TSRTIPROOM.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

