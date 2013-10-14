create or replace PROCEDURE CREER_SPC_POS_CPTT (TMP_CODE_MCP VARCHAR2, TMP_ID_SPC NUMBER) AS

  CURSOR curs_cptt is
    select ID_CPTT from COMPETENCE_TRANSVERSALE where COMPETENCE_TRANSVERSALE.CODE_MCP = TMP_CODE_MCP;

BEGIN


  for p in curs_cptt
    loop
      INSERT INTO POSITIONNEMENT (ID_SPC, ID_CPTT, TYPE_POSITIONNEMENT)
      VALUES (TMP_ID_SPC, p.ID_CPTT, 'CPT');
    end loop;


END;
/