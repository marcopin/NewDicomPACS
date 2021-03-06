DROP TRIGGER ASU.TAPRIHVID$INS
/

--
-- TAPRIHVID$INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TAPRIHVID (Sequence)
--   TAPRIHVID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAPRIHVID$INS" 
BEFORE INSERT
ON ASU.TAPRIHVID REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_taprihvid.nextval
    INTO :new.fk_id
    FROM dual;
END;
/
SHOW ERRORS;


