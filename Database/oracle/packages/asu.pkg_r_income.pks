DROP PACKAGE ASU.PKG_R_INCOME
/

--
-- PKG_R_INCOME  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_INCOME" 
 is
 FUNCTION DO_CALC_REPORT(pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_VRACHID IN NUMBER) RETURN NUMBER;
end PKG_R_INCOME;
/

SHOW ERRORS;


