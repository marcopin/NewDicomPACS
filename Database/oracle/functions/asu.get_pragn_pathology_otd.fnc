DROP FUNCTION ASU.GET_PRAGN_PATHOLOGY_OTD
/

--
-- GET_PRAGN_PATHOLOGY_OTD  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_PRAGN_PATHOLOGY_OTD
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_PRAGN_PATHOLOGY_OTD
/

--
-- GET_PRAGN_PATHOLOGY_OTD  (Synonym) 
--
--  Dependencies: 
--   GET_PRAGN_PATHOLOGY_OTD (Function)
--
CREATE PUBLIC SYNONYM GET_PRAGN_PATHOLOGY_OTD FOR ASU.GET_PRAGN_PATHOLOGY_OTD
/


GRANT EXECUTE ON ASU.GET_PRAGN_PATHOLOGY_OTD TO PUBLIC
/
