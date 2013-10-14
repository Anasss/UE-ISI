create or replace TRIGGER BDR_FC
BEFORE DELETE ON FAMILLE_COMPETENCE FOR EACH ROW
    
BEGIN
    DELETE FROM positionnement WHERE id_fc=:old.id_fc;
    DELETE FROM w_spc_fc WHERE id_fc=:old.id_fc;
END;
/
