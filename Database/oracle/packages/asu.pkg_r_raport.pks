DROP PACKAGE ASU.PKG_R_RAPORT
/

--
-- PKG_R_RAPORT  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_RAPORT" 
 IS
 FUNCTION DO_CALC_REPORT(pFD_DATA IN DATE,pFK_VRACHID IN NUMBER,pFK_KORPID IN NUMBER) RETURN NUMBER;
END;
/

SHOW ERRORS;

