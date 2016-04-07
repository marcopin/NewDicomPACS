DROP FUNCTION ASU.GET_OAROTDEL
/

--
-- GET_OAROTDEL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_OAROTDEL" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 20900;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_OAROTDEL TO PUBLIC
/
