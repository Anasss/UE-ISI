-- C:\Documents and Settings\rosec\Bureau\ddl_cpt\csci_adm2.vw
--
-- Generated for Oracle 10g on Tue Mar 27  14:09:03 2007 by Server Generator 10.1.2.6.18
 

PROMPT Creating View 'V_TYPE_AUTRE_UTILISATEUR'
CREATE OR REPLACE FORCE VIEW V_TYPE_AUTRE_UTILISATEUR
 (CODE_VALEUR
 ,SIGLE_DOMAINE
 ,ABREVIATION
 ,DESIGNATION)
 AS SELECT RV_LOW_VALUE,RV_DOMAIN,RV_ABBREVIATION,RV_MEANING
FROM CG_REF_CODES
  WHERE RV_DOMAIN = 'TYPE_UTILISATEUR'
/
