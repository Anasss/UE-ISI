create or replace PROCEDURE CREER_SPC_POS_CPT (TMP_CODE_MCP VARCHAR2, TMP_ID_SPC NUMBER) AS

  CURSOR curs_cpt is
    select ID_CPT from COMPETENCE, FAMILLE_COMPETENCE, DOMAINE_COMPETENCE
    where DOMAINE_COMPETENCE.CODE_MCP = TMP_CODE_MCP
    and DOMAINE_COMPETENCE.ID_DC = FAMILLE_COMPETENCE.ID_DC
    and FAMILLE_COMPETENCE.ID_FC = COMPETENCE.ID_FC;

BEGIN


  for p in curs_cpt
    loop
      INSERT INTO POSITIONNEMENT (ID_SPC, ID_CPT, TYPE_POSITIONNEMENT, NIVEAU_COMPETENCE)
      VALUES (TMP_ID_SPC, p.ID_CPT, 'CPT' ,null);
    end loop;


END;
/