ALTER TABLE ASU.TPRINTCODES
  DROP CONSTRAINT TPRINTCODES_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TPRINTCODES 
-- 
ALTER TABLE ASU.TPRINTCODES ADD (
  CONSTRAINT TPRINTCODES_BY_ID
 PRIMARY KEY
 (FK_ID))
/

