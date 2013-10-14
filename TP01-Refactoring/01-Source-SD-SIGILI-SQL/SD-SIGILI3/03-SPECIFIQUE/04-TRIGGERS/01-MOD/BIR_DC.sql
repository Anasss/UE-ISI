create or replace TRIGGER BIR_DOMAINE_COMPETENCE BEFORE INSERT ON DOMAINE_COMPETENCE
FOR EACH ROW
BEGIN
  IF (:new.id_ue != 0) THEN
    Select 'MET' into :New.TYPE_COMPETENCE from dual;
  END IF;
END;
/
