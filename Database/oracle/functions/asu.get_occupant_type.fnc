DROP FUNCTION ASU.GET_OCCUPANT_TYPE
/

--
-- GET_OCCUPANT_TYPE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TADRESS (Table)
--   TSMID (Table)
--   GET_KLADR_POPULATED_PLACE (Function)
--   TKLADR (Table)
--
CREATE OR REPLACE FUNCTION ASU.GET_OCCUPANT_TYPE(pADDR_ID NUMBER)
RETURN NUMBER IS

Kladr_ID NUMBER DEFAULT NULL;
vPrefix  VARCHAR2(10) DEFAULT NULL;
Res NUMBER;
BEGIN
  SELECT MAX(ta.fk_kladr) INTO Kladr_ID FROM ASU.TADRESS ta WHERE ta.fk_id = pADDR_ID;

  IF Kladr_ID > 0
  THEN
     SELECT MAX(UPPER(tk.fc_prefix)) INTO vPrefix FROM ASU.TKLADR tk WHERe tk.fk_id = ASU.GET_KLADR_POPULATED_PLACE(Kladr_ID);
     IF vPrefix = '�'
     THEN
       SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'LIVEIN_CITY';
       RETURN Res;
     END IF;
  END IF;

  SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'LIVEIN_SELO';
  
  RETURN Res;
END;
/

SHOW ERRORS;

