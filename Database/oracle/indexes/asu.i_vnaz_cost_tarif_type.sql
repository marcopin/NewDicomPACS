DROP INDEX ASU.I_VNAZ_COST_TARIF_TYPE
/

--
-- I_VNAZ_COST_TARIF_TYPE  (Index) 
--
CREATE INDEX ASU.I_VNAZ_COST_TARIF_TYPE ON ASU.VNAZ_COST
(FK_TARIF_TYPE)
/


