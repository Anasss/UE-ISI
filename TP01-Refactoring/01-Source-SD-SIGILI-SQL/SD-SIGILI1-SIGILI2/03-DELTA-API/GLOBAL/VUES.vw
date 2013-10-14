PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~ Cr�ation VUES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CREATE OR REPLACE VIEW V_PERTINENCE 
AS SELECT DOM.RV_LOW_VALUE CODE_VALEUR, DOM.RV_DOMAIN SIGLE_DOMAINE, DOM.RV_MEANING DESIGNATION
FROM CG_REF_CODES DOM WHERE DOM.RV_DOMAIN = 'PERTINENCE';

--Creation de la vue pour stocker les FA 
CREATE OR REPLACE VIEW V_FA AS
SELECT F.ID_FA AS ID_FA, Se.DESIGNATION AS SEQUENCE, F.SIGLE_FA AS SIGLE_FA, F.DESIGNATION AS DESIGNATION, F.DESCRIPTION_TEXTUELLE AS DESCRIPTION_TEXTUELLE, F.DATE_ELABORATION AS DATE_ELABORATION, F.DATE_DEBUT_ESTIME AS DATE_DEBUT_ESTIME, F.DATE_FIN_ESTIME AS DATE_FIN_ESTIME, Co.NOM AS COMPAGNIE, En.PRENOM ||' '|| En.NOM AS EENSEIGNANT, Ec.DESIGNATION AS EC, Ue.DESIGNATION AS UE, Et.PRENOM || ' ' || Et.NOM AS LETUDIANT, Ae.CHARGE AS CHARGE, Co.NOM_PROJET AS AFFAIRE
FROM FA F, COMPAGNIE Co, ETUDIANT Et, ENSEIGNANT En, EC Ec, SEQUENCE Se, UE Ue, AFFECTATION_ETUDIANT Ae
WHERE F.CODE_COM = Co.CODE_COM
AND F.NO_ENSEIGNANT = En.NO_ENSEIGNANT
AND F.ID_EC = Ec.ID_EC
AND F.NO_SEQUENCE = Se.NO_SEQUENCE
AND F.CODE_COM = Se.CODE_COM
AND Ue.NO_UE = Ec.ID_UE
AND F.ID_FA = Ae.ID_FA
AND Ae.NO_ETUDIANT_NAT = Et.NO_ETUDIANT_NAT;


CREATE OR REPLACE VIEW V_AUTHENTIFICATION AS SELECT DOM.CODE_VALEUR CODE_VALEUR, DOM.SIGLE_DOMAINE SIGLE_DOMAINE, DOM.DESIGNATION DESIGNATION
FROM DOMAINE DOM WHERE DOM.SIGLE_DOMAINE = 'TYPE_AUTH';


CREATE OR REPLACE VIEW V_PROCESSUS AS SELECT DOM.CODE_VALEUR CODE_VALEUR, DOM.SIGLE_DOMAINE SIGLE_DOMAINE, DOM.DESIGNATION DESIGNATION
FROM DOMAINE DOM WHERE DOM.SIGLE_DOMAINE = 'PROC_STAGE';
commit;