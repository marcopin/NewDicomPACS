DROP FUNCTION ASU.DOC_DIALIZ_2
/

--
-- DOC_DIALIZ_2  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.DOC_DIALIZ_2
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM DOC_DIALIZ_2
/

--
-- DOC_DIALIZ_2  (Synonym) 
--
--  Dependencies: 
--   DOC_DIALIZ_2 (Function)
--
CREATE PUBLIC SYNONYM DOC_DIALIZ_2 FOR ASU.DOC_DIALIZ_2
/


GRANT EXECUTE ON ASU.DOC_DIALIZ_2 TO PUBLIC
/

