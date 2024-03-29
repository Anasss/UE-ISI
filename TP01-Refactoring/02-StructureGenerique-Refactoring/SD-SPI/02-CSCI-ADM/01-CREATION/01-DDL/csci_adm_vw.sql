--
--Creation des vues des domaines
--Moctar SALEH NJOYA - 11 octobre 2013 -
--

CREATE VIEW V_DOMAINE_ACTIVITE ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'DOMAINE_ACTIVITE';  

CREATE VIEW V_FONCTION ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'FONCTION';  

CREATE VIEW V_SERVICE ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'SERVICE';  

CREATE VIEW V_MOYEN_OBTENTION_EMPLOI ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'MOYEN_OBTENTION_EMPLOI';  

CREATE VIEW V_PROCESSUS_STAGE ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'PROCESSUS_STAGE';  

CREATE VIEW V_TYPE_EMPLOI ( VALEUR, ABREVIATION, SIGNIFICATION) 
          AS SELECT RV_LOW_VALUE, RV_HIGH_VALUE, RV_ABBREVIATION
          FROM CG_REF_CODES WHERE RV_DOMAIN = 'TYPE_EMPLOI';  

