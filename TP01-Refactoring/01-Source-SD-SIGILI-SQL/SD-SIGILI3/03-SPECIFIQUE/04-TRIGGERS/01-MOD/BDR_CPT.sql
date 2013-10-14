create or replace TRIGGER BDR_CPT
BEFORE DELETE ON COMPETENCE FOR EACH ROW
    
BEGIN
    DELETE FROM positionnement WHERE id_cpt=:old.id_cpt;
    DELETE FROM w_spc_cpt WHERE id_cpt=:old.id_cpt;
END;
/