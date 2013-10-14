
PROMPT Creating API Package Specification for Table 'AUTRE_UTILISATEUR'
--------------------------------------------------------------------------------
-- Name:        cg$AUTRE_UTILISATEUR
-- Description: AUTRE_UTILISATEUR table API package declarations
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE cg$AUTRE_UTILISATEUR IS

called_from_package BOOLEAN := FALSE;

--  Repository User-Defined Error Messages
AAU_PK CONSTANT VARCHAR2(240) := '';

--  Column default prompts. Format PSEQNO_COL
P1CODE_UTILISATEUR CONSTANT VARCHAR2(240) := 'Code Utilisateur';
P2NOM CONSTANT VARCHAR2(240) := 'Nom';
P3PRENOM CONSTANT VARCHAR2(240) := 'Prenom';
P4TELEPHONE CONSTANT VARCHAR2(240) := 'Telephone';
P5TYPE_UTILISATEUR CONSTANT VARCHAR2(240) := 'Type Utilisateur';
P6ADRESSE CONSTANT VARCHAR2(240) := 'Adresse';
P7CP CONSTANT VARCHAR2(240) := 'Cp';
P8EMAIL CONSTANT VARCHAR2(240) := 'Email';
P9ENTREPRISE_ADRESSE CONSTANT VARCHAR2(240) := 'Entreprise Adresse';
P10ENTREPRISE_CONTACT CONSTANT VARCHAR2(240) := 'Entreprise Contact';
P11ENTREPRISE_CP CONSTANT VARCHAR2(240) := 'Entreprise Cp';
P12ENTREPRISE_NOM CONSTANT VARCHAR2(240) := 'Entreprise Nom';
P13ENTREPRISE_PAYS CONSTANT VARCHAR2(240) := 'Entreprise Pays';
P14ENTREPRISE_VILLE CONSTANT VARCHAR2(240) := 'Entreprise Ville';
P15PAYS CONSTANT VARCHAR2(240) := 'Pays';
P16VILLE CONSTANT VARCHAR2(240) := 'Ville';

cg$row AUTRE_UTILISATEUR%ROWTYPE;

--  AUTRE_UTILISATEUR row type variable 
TYPE cg$row_type IS RECORD
(CODE_UTILISATEUR cg$row.CODE_UTILISATEUR%TYPE
,NOM cg$row.NOM%TYPE
,PRENOM cg$row.PRENOM%TYPE
,TELEPHONE cg$row.TELEPHONE%TYPE
,TYPE_UTILISATEUR cg$row.TYPE_UTILISATEUR%TYPE
,ADRESSE cg$row.ADRESSE%TYPE
,CP cg$row.CP%TYPE
,EMAIL cg$row.EMAIL%TYPE
,ENTREPRISE_ADRESSE cg$row.ENTREPRISE_ADRESSE%TYPE
,ENTREPRISE_CONTACT cg$row.ENTREPRISE_CONTACT%TYPE
,ENTREPRISE_CP cg$row.ENTREPRISE_CP%TYPE
,ENTREPRISE_NOM cg$row.ENTREPRISE_NOM%TYPE
,ENTREPRISE_PAYS cg$row.ENTREPRISE_PAYS%TYPE
,ENTREPRISE_VILLE cg$row.ENTREPRISE_VILLE%TYPE
,PAYS cg$row.PAYS%TYPE
,VILLE cg$row.VILLE%TYPE
,the_rowid ROWID)
;

--  AUTRE_UTILISATEUR indicator type variable
TYPE cg$ind_type IS RECORD
(CODE_UTILISATEUR BOOLEAN DEFAULT FALSE
,NOM BOOLEAN DEFAULT FALSE
,PRENOM BOOLEAN DEFAULT FALSE
,TELEPHONE BOOLEAN DEFAULT FALSE
,TYPE_UTILISATEUR BOOLEAN DEFAULT FALSE
,ADRESSE BOOLEAN DEFAULT FALSE
,CP BOOLEAN DEFAULT FALSE
,EMAIL BOOLEAN DEFAULT FALSE
,ENTREPRISE_ADRESSE BOOLEAN DEFAULT FALSE
,ENTREPRISE_CONTACT BOOLEAN DEFAULT FALSE
,ENTREPRISE_CP BOOLEAN DEFAULT FALSE
,ENTREPRISE_NOM BOOLEAN DEFAULT FALSE
,ENTREPRISE_PAYS BOOLEAN DEFAULT FALSE
,ENTREPRISE_VILLE BOOLEAN DEFAULT FALSE
,PAYS BOOLEAN DEFAULT FALSE
,VILLE BOOLEAN DEFAULT FALSE);

cg$ind_true cg$ind_type;

--  AUTRE_UTILISATEUR primary key type variable
TYPE cg$pk_type IS RECORD
(CODE_UTILISATEUR cg$row.CODE_UTILISATEUR%TYPE
,the_rowid ROWID)
;

--  PL/SQL Table Type variable for triggers
TYPE cg$table_type IS TABLE OF AUTRE_UTILISATEUR%ROWTYPE
     INDEX BY BINARY_INTEGER;
cg$table cg$table_type;

TYPE cg$tableind_type IS TABLE OF cg$ind_type
     INDEX BY BINARY_INTEGER;
cg$tableind cg$tableind_type;
idx BINARY_INTEGER := 1;

PROCEDURE   ins(cg$rec IN OUT cg$row_type,
                cg$ind IN OUT cg$ind_type,
                do_ins IN BOOLEAN DEFAULT TRUE
               );
PROCEDURE   upd(cg$rec             IN OUT cg$row_type,
                cg$ind             IN OUT cg$ind_type,
                do_upd             IN BOOLEAN     DEFAULT TRUE,
                cg$pk              IN cg$row_type DEFAULT NULL      
               );
PROCEDURE   del(cg$pk  IN cg$pk_type,
                do_del IN BOOLEAN DEFAULT TRUE
               );
PROCEDURE   lck(cg$old_rec  IN cg$row_type,
                cg$old_ind  IN cg$ind_type,
                nowait_flag IN BOOLEAN DEFAULT TRUE
               );
PROCEDURE   slct(cg$sel_rec IN OUT cg$row_type);

PROCEDURE   validate_arc(cg$rec IN OUT cg$row_type);

PROCEDURE   validate_domain(cg$rec IN OUT cg$row_type,
                            cg$ind IN cg$ind_type DEFAULT cg$ind_true);

PROCEDURE   validate_foreign_keys_ins(cg$rec IN cg$row_type);
PROCEDURE   validate_foreign_keys_upd(cg$rec IN cg$row_type, 
                                      cg$old_rec IN cg$row_type, 
                                      cg$ind IN cg$ind_type);
PROCEDURE   validate_foreign_keys_del(cg$rec IN cg$row_type);

PROCEDURE   validate_domain_cascade_delete(cg$old_rec IN cg$row_type);        
PROCEDURE   validate_domain_cascade_update(cg$old_rec IN cg$row_type);        

PROCEDURE   cascade_update(cg$new_rec IN OUT cg$row_type,
                           cg$old_rec IN cg$row_type );
PROCEDURE   domain_cascade_update(cg$new_rec IN OUT cg$row_type,              
                                  cg$new_ind IN OUT cg$ind_type,
                                  cg$old_rec IN     cg$row_type);
PROCEDURE   domain_cascade_upd( cg$rec     IN OUT cg$row_type,                
                                cg$ind     IN OUT cg$ind_type,
                                cg$old_rec IN     cg$row_type);

PROCEDURE   cascade_delete(cg$old_rec IN OUT cg$row_type);
PROCEDURE   domain_cascade_delete(cg$old_rec IN cg$row_type);

PROCEDURE   upd_denorm2( cg$rec IN cg$row_type,
                         cg$ind IN cg$ind_type );
PROCEDURE   upd_oper_denorm2( cg$rec IN cg$row_type,
                              cg$old_rec IN cg$row_type,
                              cg$ind IN cg$ind_type,
                              operation IN VARCHAR2 DEFAULT 'UPD' );
END cg$AUTRE_UTILISATEUR;
/

