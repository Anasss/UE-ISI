create or replace TRIGGER BUR_JOURNAL_SUIVI_PERSONNEL BEFORE UPDATE ON JOURNAL_SUIVI_PERSONNEL
FOR EACH ROW
BEGIN
  Select SysDate into :New.DATE_MAJ from dual;
END;
/
