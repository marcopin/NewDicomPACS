DROP TRIGGER ASU.TSPRAVAPP_INSERT
/

--
-- TSPRAVAPP_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSPRAVAPP (Sequence)
--   TSPRAVAPP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSPRAVAPP_INSERT" 
BEFORE INSERT
ON tspravapp
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
Begin
  SELECT seq_tspravapp.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

