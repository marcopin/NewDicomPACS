DROP FUNCTION ASU.GET_PORC_OTDELID
/

--
-- GET_PORC_OTDELID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_PORC_OTDELID
        RETURN NUMBER DETERMINISTIC
        IS -- Created by -= aAdmin.exe =-
           -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
      BEGIN
        Return 288067;
      END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_PORC_OTDELID
/

--
-- GET_PORC_OTDELID  (Synonym) 
--
--  Dependencies: 
--   GET_PORC_OTDELID (Function)
--
CREATE PUBLIC SYNONYM GET_PORC_OTDELID FOR ASU.GET_PORC_OTDELID
/


GRANT EXECUTE ON ASU.GET_PORC_OTDELID TO PUBLIC
/

