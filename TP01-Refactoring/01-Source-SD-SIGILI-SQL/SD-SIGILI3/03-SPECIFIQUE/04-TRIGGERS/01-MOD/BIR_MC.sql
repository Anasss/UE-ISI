create or replace TRIGGER BIR_MODELE_COMPETENCE BEFORE INSERT ON MODELE_COMPETENCE
FOR EACH ROW
BEGIN
  Select SysDate into :New.DATE_CREATION from dual;
  Select 'ELA' into :New.ETAT from dual;
  Select 'N' into :New.EN_VIGUEUR from dual;
END;
/
