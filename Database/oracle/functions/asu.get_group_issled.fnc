DROP FUNCTION ASU.GET_GROUP_ISSLED
/

--
-- GET_GROUP_ISSLED  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMID (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_GROUP_ISSLED" RETURN NUMBER IS
    CURSOR cGroup IS SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = 'GROUP_ISSLED';
    nFK_ID NUMBER;

BEGIN
    OPEN cGRoup;
    FETCH cGroup INTO nFK_ID;
    CLOSE cGroup;
    RETURN nFK_ID;
END;
/

SHOW ERRORS;


