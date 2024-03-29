-- Se trouve dans 02-Migration/MIGRATION.SQL dans ETAPE 4
-- Dans le trigger de c�ation de groupement
create or replace TRIGGER cg$AIR_REGROUPEMENT_RES
AFTER INSERT ON REGROUPEMENT_RES FOR EACH ROW 

declare 
  resultat boolean;
begin
  -- Cr�ation du r�pertoire
  resultat := dbms_xdb.createFolder('/RAP/' || :new.DESIGNATION);
  
  -- Application des droits sur le nouveau r�pertoire
  dbms_xdb.setAcl('/RAP/' || :new.DESIGNATION,'/sys/acls/DroitRepertoire.xml');
  
  -- Insertion dans la table de Synchronisation
  INSERT INTO bck_lst_path VALUES('/RAP/' || :new.DESIGNATION);
  
end;
/
-- Fin du trigger d'insertion de groupement