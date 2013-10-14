create or replace TRIGGER BDR_CAP
BEFORE DELETE ON CAPACITE FOR EACH ROW
    
BEGIN
    DELETE FROM positionnement WHERE id_cap=:old.id_cap;
    DELETE FROM w_spc_cap WHERE id_cap=:old.id_cap;
END;
/