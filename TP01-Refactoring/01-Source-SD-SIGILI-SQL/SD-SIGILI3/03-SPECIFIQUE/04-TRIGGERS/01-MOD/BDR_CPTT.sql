create or replace TRIGGER BDR_CPTT
BEFORE DELETE ON COMPETENCE_TRANSVERSALE FOR EACH ROW
    
BEGIN
    DELETE FROM positionnement WHERE id_cptt=:old.id_cptt;
    DELETE FROM w_spc_cptt WHERE id_cptt=:old.id_cptt;
END;
/