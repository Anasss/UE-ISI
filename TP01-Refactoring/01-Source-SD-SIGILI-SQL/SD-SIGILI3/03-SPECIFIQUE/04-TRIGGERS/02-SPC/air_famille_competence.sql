create or replace TRIGGER AIR_FAMILLE_COMPETENCE AFTER INSERT ON FAMILLE_COMPETENCE 
FOR EACH ROW 
DECLARE
    CURSOR curs_spc IS
 SELECT spc.ID_SPC FROM SUIVI_PERSONNEL_COMPETENCE spc, DOMAINE_COMPETENCE dc
 WHERE spc.CODE_MCP = dc.CODE_MCP
 AND dc.ID_DC = :NEW.ID_DC;

BEGIN

   for p in curs_spc
     loop
       INSERT INTO POSITIONNEMENT (ID_SPC, ID_FC, TYPE_POSITIONNEMENT) VALUES (p.ID_SPC, :NEW.ID_FC, 'MAT');
     end loop;

END;
/
