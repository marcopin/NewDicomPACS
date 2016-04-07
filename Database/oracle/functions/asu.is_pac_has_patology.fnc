DROP FUNCTION ASU.IS_PAC_HAS_PATOLOGY
/

--
-- IS_PAC_HAS_PATOLOGY  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TPATNAME (Table)
--   VRESAN (Table)
--
CREATE OR REPLACE FUNCTION ASU."IS_PAC_HAS_PATOLOGY" 
  ( pFK_PACID IN NUMBER,pFK_SMID IN NUMBER)
  RETURN NUMBER IS
--
-- Purpose: This function used to optimize detection is pacient has good dynamic via laboratory results
--
-- By Philip A. Milovanov 11.09.2001
  CURSOR c(pPACID NUMBER,pSMID NUMBER) IS SELECT FK_PACID FROM VRESAN,TPATNAME WHERE FK_PACID=pPACID AND FK_SMID=pSMID AND FK_PATID=TPATNAME.FK_ID AND FP_PRIOR>0;
  i NUMBER;
BEGIN
  OPEN c(pFK_PACID,pFK_SMID);
  FETCH c INTO i;
  IF c%NOTFOUND THEN
    CLOSE c;
    RETURN 0;
  END IF;
  CLOSE c;
  RETURN 1;
END; -- Function IS_PAC_HAS_PATOLOGY
/

SHOW ERRORS;

