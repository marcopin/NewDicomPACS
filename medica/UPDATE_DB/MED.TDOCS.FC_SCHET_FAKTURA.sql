ALTER TABLE MED.TDOCS ADD (FC_SCHET_FAKTURA VARCHAR2 (50))
/
COMMENT ON COLUMN MED.TDOCS.FC_SCHET_FAKTURA IS '����-�������'
/

exec asu.PKG_SMINI.WRITESTRING( 'medica.exe', 'FUNC_SHOW_SCHET_FAKTURA', '1');
/

commit
/

quit
/