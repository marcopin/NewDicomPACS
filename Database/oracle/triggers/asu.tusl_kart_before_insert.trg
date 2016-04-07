DROP TRIGGER ASU.TUSL_KART_BEFORE_INSERT
/

--
-- TUSL_KART_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TUSL_KART (Sequence)
--   TUSL_KART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUSL_KART_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tusl_kart
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_tusl_kart.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

