
PROMPT Creating API Package Body for Table 'AUTRE_UTILISATEUR'
--------------------------------------------------------------------------------
-- Name:        cg$AUTRE_UTILISATEUR
-- Description: AUTRE_UTILISATEUR table API package definitions
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY cg$AUTRE_UTILISATEUR IS

PROCEDURE   validate_mandatory(cg$val_rec IN cg$row_type,
                               loc        IN VARCHAR2 DEFAULT '');
PROCEDURE   up_autogen_columns(cg$rec    IN OUT cg$row_type,
                               cg$ind    IN OUT cg$ind_type,
                               operation IN VARCHAR2 DEFAULT 'INS',
                               do_denorm IN BOOLEAN DEFAULT TRUE);
PROCEDURE   err_msg(msg  IN VARCHAR2,
                    type IN INTEGER,
                    loc  IN VARCHAR2 DEFAULT '');

--------------------------------------------------------------------------------
-- Name:        raise_uk_not_updateable
--
-- Description: Raise appropriate error when unique key updated
--
-- Parameters:  none
--------------------------------------------------------------------------------
PROCEDURE raise_uk_not_updateable(uk IN VARCHAR2) IS   
BEGIN
    cg$errors.push(cg$errors.MsgGetText(cg$errors.API_UNIQUE_KEY_UPDATE, cg$errors.ERR_UK_UPDATE, uk),
                   'E',
                   'API',
                   cg$errors.API_UNIQUE_KEY_UPDATE,
                   'cg$AUTRE_UTILISATEUR.raise_uk_not_updateable');
                   cg$errors.raise_failure;
END raise_uk_not_updateable;


--------------------------------------------------------------------------------
-- Name:        raise_fk_not_transferable
--
-- Description: Raise appropriate error when foreign key updated
--
-- Parameters:  none
--------------------------------------------------------------------------------
PROCEDURE raise_fk_not_transferable(fk IN VARCHAR2) IS 
BEGIN
    cg$errors.push(cg$errors.MsgGetText(cg$errors.API_FOREIGN_KEY_TRANS, cg$errors.ERR_FK_TRANS, fk),
                   'E',
                   'API',
                   cg$errors.API_FOREIGN_KEY_TRANS,
                   'cg$AUTRE_UTILISATEUR.raise_fk_not_transferable');
    cg$errors.raise_failure;
END raise_fk_not_transferable;


--------------------------------------------------------------------------------
-- Name:        up_autogen_columns
--
-- Description: Specific autogeneration of column values and conversion to 
--              uppercase
--
-- Parameters:  cg$rec    Record of row to be manipulated
--              cg$ind    Indicators for row
--              operation Procedure where this procedure was called
--------------------------------------------------------------------------------
PROCEDURE up_autogen_columns(cg$rec IN OUT cg$row_type,
                             cg$ind IN OUT cg$ind_type,
                             operation IN VARCHAR2 DEFAULT 'INS',
                             do_denorm IN BOOLEAN DEFAULT TRUE) IS
BEGIN
  IF (operation = 'INS') THEN
    NULL;
  ELSE      -- (operation = 'UPD')
    NULL;
  END IF;   -- (operation = 'INS') ELSE (operation = 'UPD')

  -- Statements executed for both 'INS' and 'UPD'


EXCEPTION
  WHEN no_data_found THEN
    NULL;
  WHEN others THEN
    cg$errors.push( SQLERRM, 'E', 'ORA', SQLCODE, 
                    'cg$AUTRE_UTILISATEUR.up_autogen_columns');
    cg$errors.raise_failure;
END up_autogen_columns;


--------------------------------------------------------------------------------
-- Name:        validate_mandatory
--
-- Description: Checks all mandatory columns are not null and raises appropriate
--              error if not satisfied
--
-- Parameters:  cg$val_rec Record of row to be checked
--              loc        Place where this procedure was called for error 
--                         trapping
--------------------------------------------------------------------------------
PROCEDURE validate_mandatory(cg$val_rec IN cg$row_type,
                             loc        IN VARCHAR2 DEFAULT '') IS
BEGIN
    IF (cg$val_rec.CODE_UTILISATEUR IS NULL) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_MAND_COLUMN_ISNULL, cg$errors.VAL_MAND, P1CODE_UTILISATEUR),
                       'E',
                       'API',
                       cg$errors.API_MAND_COLUMN_ISNULL,
                       loc);
    END IF;
    IF (cg$val_rec.NOM IS NULL) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_MAND_COLUMN_ISNULL, cg$errors.VAL_MAND, P2NOM),
                       'E',
                       'API',
                       cg$errors.API_MAND_COLUMN_ISNULL,
                       loc);
    END IF;
    IF (cg$val_rec.PRENOM IS NULL) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_MAND_COLUMN_ISNULL, cg$errors.VAL_MAND, P3PRENOM),
                       'E',
                       'API',
                       cg$errors.API_MAND_COLUMN_ISNULL,
                       loc);
    END IF;
    IF (cg$val_rec.TELEPHONE IS NULL) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_MAND_COLUMN_ISNULL, cg$errors.VAL_MAND, P4TELEPHONE),
                       'E',
                       'API',
                       cg$errors.API_MAND_COLUMN_ISNULL,
                       loc);
    END IF;
    IF (cg$val_rec.TYPE_UTILISATEUR IS NULL) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_MAND_COLUMN_ISNULL, cg$errors.VAL_MAND, P5TYPE_UTILISATEUR),
                       'E',
                       'API',
                       cg$errors.API_MAND_COLUMN_ISNULL,
                       loc);
    END IF;
    NULL;
END validate_mandatory;


--------------------------------------------------------------------------------
-- Name:        validate_foreign_keys
--
-- Description: Checks all mandatory columns are not null and raises appropriate
--              error if not satisfied
--
-- Parameters:  cg$rec Record of row to be checked
--------------------------------------------------------------------------------
PROCEDURE validate_foreign_keys_ins(cg$rec IN cg$row_type) IS
    fk_check INTEGER;
BEGIN
NULL;
END;

PROCEDURE validate_foreign_keys_upd( cg$rec IN cg$row_type, 
                                     cg$old_rec IN cg$row_type, 
                                     cg$ind IN cg$ind_type) IS
    fk_check INTEGER;
BEGIN
NULL;
END;

PROCEDURE validate_foreign_keys_del(cg$rec IN cg$row_type) IS
    fk_check INTEGER;
BEGIN
NULL;
END;


--------------------------------------------------------------------------------
-- Name:        slct
--
-- Description: Selects into the given parameter all the attributes for the row
--              given by the primary key
--
-- Parameters:  cg$sel_rec  Record of row to be selected into using its PK
--------------------------------------------------------------------------------
PROCEDURE slct(cg$sel_rec IN OUT cg$row_type) IS

BEGIN

    IF cg$sel_rec.the_rowid is null THEN
       SELECT    CODE_UTILISATEUR
       ,         NOM
       ,         PRENOM
       ,         TELEPHONE
       ,         TYPE_UTILISATEUR
       ,         ADRESSE
       ,         CP
       ,         EMAIL
       ,         ENTREPRISE_ADRESSE
       ,         ENTREPRISE_CONTACT
       ,         ENTREPRISE_CP
       ,         ENTREPRISE_NOM
       ,         ENTREPRISE_PAYS
       ,         ENTREPRISE_VILLE
       ,         PAYS
       ,         VILLE
       , rowid
       INTO      cg$sel_rec.CODE_UTILISATEUR
       ,         cg$sel_rec.NOM
       ,         cg$sel_rec.PRENOM
       ,         cg$sel_rec.TELEPHONE
       ,         cg$sel_rec.TYPE_UTILISATEUR
       ,         cg$sel_rec.ADRESSE
       ,         cg$sel_rec.CP
       ,         cg$sel_rec.EMAIL
       ,         cg$sel_rec.ENTREPRISE_ADRESSE
       ,         cg$sel_rec.ENTREPRISE_CONTACT
       ,         cg$sel_rec.ENTREPRISE_CP
       ,         cg$sel_rec.ENTREPRISE_NOM
       ,         cg$sel_rec.ENTREPRISE_PAYS
       ,         cg$sel_rec.ENTREPRISE_VILLE
       ,         cg$sel_rec.PAYS
       ,         cg$sel_rec.VILLE
       ,cg$sel_rec.the_rowid
       FROM   AUTRE_UTILISATEUR
       WHERE        CODE_UTILISATEUR = cg$sel_rec.CODE_UTILISATEUR;
    ELSE
       SELECT    CODE_UTILISATEUR
       ,         NOM
       ,         PRENOM
       ,         TELEPHONE
       ,         TYPE_UTILISATEUR
       ,         ADRESSE
       ,         CP
       ,         EMAIL
       ,         ENTREPRISE_ADRESSE
       ,         ENTREPRISE_CONTACT
       ,         ENTREPRISE_CP
       ,         ENTREPRISE_NOM
       ,         ENTREPRISE_PAYS
       ,         ENTREPRISE_VILLE
       ,         PAYS
       ,         VILLE
       , rowid
       INTO      cg$sel_rec.CODE_UTILISATEUR
       ,         cg$sel_rec.NOM
       ,         cg$sel_rec.PRENOM
       ,         cg$sel_rec.TELEPHONE
       ,         cg$sel_rec.TYPE_UTILISATEUR
       ,         cg$sel_rec.ADRESSE
       ,         cg$sel_rec.CP
       ,         cg$sel_rec.EMAIL
       ,         cg$sel_rec.ENTREPRISE_ADRESSE
       ,         cg$sel_rec.ENTREPRISE_CONTACT
       ,         cg$sel_rec.ENTREPRISE_CP
       ,         cg$sel_rec.ENTREPRISE_NOM
       ,         cg$sel_rec.ENTREPRISE_PAYS
       ,         cg$sel_rec.ENTREPRISE_VILLE
       ,         cg$sel_rec.PAYS
       ,         cg$sel_rec.VILLE
       ,cg$sel_rec.the_rowid
       FROM   AUTRE_UTILISATEUR
       WHERE  rowid = cg$sel_rec.the_rowid;
    END IF;

EXCEPTION WHEN OTHERS THEN
    cg$errors.push(SQLERRM,
                   'E',
                   'ORA',
                   SQLCODE,
                   'cg$AUTRE_UTILISATEUR.slct.others');
    cg$errors.raise_failure;

END slct;


--------------------------------------------------------------------------------
-- Name:        cascade_update
--
-- Description: Updates all child tables affected by a change to AUTRE_UTILISATEUR 
--
-- Parameters:  cg$rec     Record of AUTRE_UTILISATEUR current values
--              cg$old_rec Record of AUTRE_UTILISATEUR previous values
--------------------------------------------------------------------------------
PROCEDURE cascade_update(cg$new_rec IN OUT cg$row_type,
                         cg$old_rec IN     cg$row_type) IS
BEGIN
  NULL;
END cascade_update;


--------------------------------------------------------------------------------
-- Name:        validate_domain_cascade_update
--
-- Description: Implement the Domain Key Constraint Cascade Updates Resticts rule
--              of each child table that references this tableAUTRE_UTILISATEUR 
--
-- Parameters:  cg$old_rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE validate_domain_cascade_update( cg$old_rec IN cg$row_type ) IS
  dk_check INTEGER;
BEGIN
  NULL;
END validate_domain_cascade_update;


-----------------------------------------------------------------------------------------
-- Name:        domain_cascade_update
--
-- Description: Implement the Domain Key Constraint Cascade Updates rules of each
--              child table that references this table AUTRE_UTILISATEUR 
--
-- Parameters:  cg$new_rec  New values for AUTRE_UTILISATEUR's domain key constraint columns 
--              cg$new_ind  Indicates changed AUTRE_UTILISATEUR's domain key constraint columns
--              cg$old_rec  Current values for AUTRE_UTILISATEUR's domain key constraint columns
-----------------------------------------------------------------------------------------
PROCEDURE domain_cascade_update(cg$new_rec IN OUT cg$row_type,
                                cg$new_ind IN OUT cg$ind_type,
                                cg$old_rec IN     cg$row_type) IS
BEGIN
  NULL;
END domain_cascade_update;


--------------------------------------------------------------------------------
-- Name:        cascade_delete
--
-- Description: Delete all child tables affected by a delete to AUTRE_UTILISATEUR 
--
-- Parameters:  cg$rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE cascade_delete(cg$old_rec IN OUT cg$row_type)
IS
BEGIN
  NULL;
END cascade_delete;

--------------------------------------------------------------------------------
-- Name:        domain_cascade_delete
--
-- Description: Implement the Domain Key Constraint Cascade Delete rules of each
--              child table that references this tableAUTRE_UTILISATEUR 
--
-- Parameters:  cg$old_rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE domain_cascade_delete( cg$old_rec IN cg$row_type )
IS
BEGIN
  NULL;
END domain_cascade_delete;


--------------------------------------------------------------------------------
-- Name:        validate_domain_cascade_delete
--
-- Description: Implement the Domain Key Constraint Cascade Delete Restricts rule
--              of each child table that references this tableAUTRE_UTILISATEUR 
--
-- Parameters:  cg$old_rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE validate_domain_cascade_delete(cg$old_rec IN cg$row_type)
IS
    dk_check INTEGER;
BEGIN
  NULL;
END validate_domain_cascade_delete;



--------------------------------------------------------------------------------
-- Name:        validate_arc
--
-- Description: Checks for adherence to arc relationship 
--
-- Parameters:  cg$rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE validate_arc(cg$rec IN OUT cg$row_type) IS
i NUMBER;
BEGIN
    NULL;
END validate_arc;


--------------------------------------------------------------------------------
-- Name:        validate_domain
--
-- Description: Checks against reference table for values lying in a domain 
--
-- Parameters:  cg$rec     Record of AUTRE_UTILISATEUR current values
--------------------------------------------------------------------------------
PROCEDURE validate_domain(cg$rec IN OUT cg$row_type,
                          cg$ind IN cg$ind_type DEFAULT cg$ind_true)
IS
  dummy NUMBER;
  found BOOLEAN;
  no_tabview EXCEPTION;
  PRAGMA EXCEPTION_INIT(no_tabview, -942); 
BEGIN





    found := false;
    IF (cg$ind.TYPE_UTILISATEUR AND cg$rec.TYPE_UTILISATEUR IS NOT NULL) THEN
      FOR c IN (SELECT RV_LOW_VALUE, RV_HIGH_VALUE FROM CG_REF_CODES WHERE RV_DOMAIN = 'TYPE_UTILISATEUR' )
      LOOP
         IF (    c.RV_HIGH_VALUE IS NULL 
             AND cg$rec.TYPE_UTILISATEUR = c.RV_LOW_VALUE )
         OR (    c.RV_HIGH_VALUE IS NOT NULL
             AND cg$rec.TYPE_UTILISATEUR BETWEEN c.RV_LOW_VALUE AND c.RV_HIGH_VALUE )
         THEN
           found := true;
           EXIT;
         END IF;
      END LOOP;

      IF ( NOT found ) THEN
        cg$errors.push( cg$errors.MsgGetText(cg$errors.API_RV_LOOKUP_FAIL,
                                             cg$errors.APIMSG_RV_LOOKUP_FAIL,
                                             cg$rec.TYPE_UTILISATEUR,'AUTRE_UTILISATEUR','TYPE_UTILISATEUR'),
                        'E',
                        'API',
                        cg$errors.API_RV_LOOKUP_FAIL,
                        'cg$AUTRE_UTILISATEUR.v_domain.no_data_found' );
        cg$errors.raise_failure;
      END IF;
    END IF;













    NULL;

EXCEPTION
    WHEN cg$errors.cg$error THEN 
        cg$errors.raise_failure;
    WHEN no_tabview THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_RV_TAB_NOT_FOUND,
                                            cg$errors.APIMSG_RV_TAB_NOT_FOUND,
                                            'CG_REF_CODES','AUTRE_UTILISATEUR'),
                       'E',
                       'API',
                       cg$errors.API_RV_TAB_NOT_FOUND,
                       'cg$AUTRE_UTILISATEUR.v_domain.no_reftable_found');
        cg$errors.raise_failure;
    WHEN OTHERS THEN
        cg$errors.push(SQLERRM,
                       'E',
                       'ORA',
                       SQLCODE,
                       'cg$AUTRE_UTILISATEUR.v_domain.others');
        cg$errors.raise_failure;
END validate_domain;


--------------------------------------------------------------------------------
-- Name:        err_msg
--
-- Description: Pushes onto stack appropriate user defined error message
--              depending on the rule violated
--
-- Parameters:  msg     Oracle error message
--              type    Type of violation e.g. check_constraint: ERR_CHECK_CON
--              loc     Place where this procedure was called for error 
--                      trapping
--------------------------------------------------------------------------------
PROCEDURE err_msg(msg   IN VARCHAR2,
                  type  IN INTEGER,
                  loc   IN VARCHAR2 DEFAULT '') IS
con_name VARCHAR2(240);
BEGIN
    con_name := cg$errors.parse_constraint(msg, type);
    IF (con_name = 'AAU_PK') THEN
        cg$errors.push(nvl(AAU_PK 
                  ,cg$errors.MsgGetText(cg$errors.API_PK_CON_VIOLATED
					                 ,cg$errors.APIMSG_PK_VIOLAT
                                     ,'AAU_PK' 
                                     ,'AUTRE_UTILISATEUR')),
                       'E',
                       'API',
                       cg$errors.API_PK_CON_VIOLATED,
                       loc);
    ELSIF (con_name = 'AUT_AAU_FK' AND type = cg$errors.ERR_DELETE_RESTRICT) THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_DEL_RESTRICT, cg$errors.ERR_DEL_RESTRICT, 'Autre Utilisateur', 'Authentification'),
                       'E',
                       'API',
                       cg$errors.API_DEL_RESTRICT,
                       loc);

    ELSE
        cg$errors.push(SQLERRM,
                       'E',
                       'ORA',
                       SQLCODE,
                       loc);
    END IF;
END err_msg;




--------------------------------------------------------------------------------
-- Name:        doLobs
--
-- Description: This function is updating lob columns
--
-- Parameters:  cg$rec  Record of row to be inserted
--              cg$ind  Record of columns specifically set
--------------------------------------------------------------------------------
PROCEDURE doLobs(cg$rec IN OUT cg$row_type,
                 cg$ind IN OUT cg$ind_type) IS
BEGIN
   NULL;
END doLobs;


--------------------------------------------------------------------------------
-- Name:        ins
--
-- Description: API insert procedure
--
-- Parameters:  cg$rec  Record of row to be inserted
--              cg$ind  Record of columns specifically set
--              do_ins  Whether we want the actual INSERT to occur
--------------------------------------------------------------------------------
PROCEDURE ins(cg$rec IN OUT cg$row_type,
              cg$ind IN OUT cg$ind_type,
              do_ins IN BOOLEAN DEFAULT TRUE) IS
cg$tmp_rec cg$row_type;

--  Constant default values


BEGIN
--  Application_logic Pre-Insert <<Start>>
--  Application_logic Pre-Insert << End >>

--  Defaulted

--  Auto-generated and uppercased columns

    up_autogen_columns(cg$rec, cg$ind, 'INS', do_ins);

    called_from_package := TRUE;

    IF (do_ins) THEN 
        validate_foreign_keys_ins(cg$rec);
        validate_arc(cg$rec);
        validate_domain(cg$rec);

        INSERT INTO AUTRE_UTILISATEUR
            (CODE_UTILISATEUR
            ,NOM
            ,PRENOM
            ,TELEPHONE
            ,TYPE_UTILISATEUR
            ,ADRESSE
            ,CP
            ,EMAIL
            ,ENTREPRISE_ADRESSE
            ,ENTREPRISE_CONTACT
            ,ENTREPRISE_CP
            ,ENTREPRISE_NOM
            ,ENTREPRISE_PAYS
            ,ENTREPRISE_VILLE
            ,PAYS
            ,VILLE)
        VALUES
            (cg$rec.CODE_UTILISATEUR
            ,cg$rec.NOM
            ,cg$rec.PRENOM
            ,cg$rec.TELEPHONE
            ,cg$rec.TYPE_UTILISATEUR
            ,cg$rec.ADRESSE
            ,cg$rec.CP
            ,cg$rec.EMAIL
            ,cg$rec.ENTREPRISE_ADRESSE
            ,cg$rec.ENTREPRISE_CONTACT
            ,cg$rec.ENTREPRISE_CP
            ,cg$rec.ENTREPRISE_NOM
            ,cg$rec.ENTREPRISE_PAYS
            ,cg$rec.ENTREPRISE_VILLE
            ,cg$rec.PAYS
            ,cg$rec.VILLE
);
        doLobs(cg$rec, cg$ind);
        slct(cg$rec);

        upd_oper_denorm2(cg$rec, cg$tmp_rec, cg$ind, 'INS');
    END IF;

    called_from_package := FALSE;



--  Application logic Post-Insert <<Start>>
--  Application logic Post-Insert << End >>

EXCEPTION
    WHEN cg$errors.cg$error THEN 
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.mandatory_missing THEN
        validate_mandatory(cg$rec, 'cg$AUTRE_UTILISATEUR.ins.mandatory_missing');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.check_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_CHECK_CON, 'cg$AUTRE_UTILISATEUR.ins.check_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.fk_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_FOREIGN_KEY, 'cg$AUTRE_UTILISATEUR.ins.fk_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.uk_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_UNIQUE_KEY, 'cg$AUTRE_UTILISATEUR.ins.uk_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN OTHERS THEN
        cg$errors.push(SQLERRM,
                       'E',
                       'ORA',
                       SQLCODE,
                       'cg$AUTRE_UTILISATEUR.ins.others');
        called_from_package := FALSE;
        cg$errors.raise_failure;
END ins;


--------------------------------------------------------------------------------
-- Name:        upd
--
-- Description: API update procedure
--
-- Parameters:  cg$rec  Record of row to be updated
--              cg$ind  Record of columns specifically set
--              do_upd  Whether we want the actual UPDATE to occur
--------------------------------------------------------------------------------
PROCEDURE upd(cg$rec             IN OUT cg$row_type,
              cg$ind             IN OUT cg$ind_type,
              do_upd             IN BOOLEAN DEFAULT TRUE,
              cg$pk              IN cg$row_type DEFAULT NULL )    
IS
  cg$upd_rec    cg$row_type;
  cg$old_rec    cg$row_type;
  RECORD_LOGGED BOOLEAN := FALSE;
BEGIN
--  Application_logic Pre-Update <<Start>>
--  Application_logic Pre-Update << End >>

 
    IF ( cg$pk.CODE_UTILISATEUR IS NULL ) THEN          
      cg$upd_rec.CODE_UTILISATEUR := cg$rec.CODE_UTILISATEUR;
    ELSE
      cg$upd_rec.CODE_UTILISATEUR := cg$pk.CODE_UTILISATEUR;
    END IF;
    cg$old_rec.CODE_UTILISATEUR := cg$upd_rec.CODE_UTILISATEUR;

    IF ( cg$pk.the_rowid IS NULL ) THEN             
      cg$upd_rec.the_rowid := cg$rec.the_rowid;
    ELSE
      cg$upd_rec.the_rowid := cg$pk.the_rowid;
    END IF;
    cg$old_rec.the_rowid := cg$upd_rec.the_rowid;

    IF ( do_upd ) THEN

        slct(cg$upd_rec);


        --  Report error if attempt to update non updateable Primary Key AAU_PK
        IF (cg$ind.CODE_UTILISATEUR AND cg$rec.CODE_UTILISATEUR != cg$upd_rec.CODE_UTILISATEUR) THEN
            raise_uk_not_updateable('AAU_PK');
        END IF;
        IF NOT (cg$ind.CODE_UTILISATEUR) THEN
            cg$rec.CODE_UTILISATEUR := cg$upd_rec.CODE_UTILISATEUR;
        END IF;
        IF NOT (cg$ind.NOM) THEN
            cg$rec.NOM := cg$upd_rec.NOM;
        END IF;
        IF NOT (cg$ind.PRENOM) THEN
            cg$rec.PRENOM := cg$upd_rec.PRENOM;
        END IF;
        IF NOT (cg$ind.TELEPHONE) THEN
            cg$rec.TELEPHONE := cg$upd_rec.TELEPHONE;
        END IF;
        IF NOT (cg$ind.TYPE_UTILISATEUR) THEN
            cg$rec.TYPE_UTILISATEUR := cg$upd_rec.TYPE_UTILISATEUR;
        END IF;
        IF NOT (cg$ind.ADRESSE) THEN
            cg$rec.ADRESSE := cg$upd_rec.ADRESSE;
        END IF;
        IF NOT (cg$ind.CP) THEN
            cg$rec.CP := cg$upd_rec.CP;
        END IF;
        IF NOT (cg$ind.EMAIL) THEN
            cg$rec.EMAIL := cg$upd_rec.EMAIL;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_ADRESSE) THEN
            cg$rec.ENTREPRISE_ADRESSE := cg$upd_rec.ENTREPRISE_ADRESSE;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_CONTACT) THEN
            cg$rec.ENTREPRISE_CONTACT := cg$upd_rec.ENTREPRISE_CONTACT;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_CP) THEN
            cg$rec.ENTREPRISE_CP := cg$upd_rec.ENTREPRISE_CP;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_NOM) THEN
            cg$rec.ENTREPRISE_NOM := cg$upd_rec.ENTREPRISE_NOM;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_PAYS) THEN
            cg$rec.ENTREPRISE_PAYS := cg$upd_rec.ENTREPRISE_PAYS;
        END IF;
        IF NOT (cg$ind.ENTREPRISE_VILLE) THEN
            cg$rec.ENTREPRISE_VILLE := cg$upd_rec.ENTREPRISE_VILLE;
        END IF;
        IF NOT (cg$ind.PAYS) THEN
            cg$rec.PAYS := cg$upd_rec.PAYS;
        END IF;
        IF NOT (cg$ind.VILLE) THEN
            cg$rec.VILLE := cg$upd_rec.VILLE;
        END IF;
    ELSE
	     -- Perform checks if called from a trigger
	     -- Indicators are only set on changed values
	     null;
        --  Report error if attempt to update non updateable Primary Key AAU_PK
        IF ( cg$ind.CODE_UTILISATEUR ) THEN
          raise_uk_not_updateable('AAU_PK');
        END IF;
    END IF;

    up_autogen_columns(cg$rec, cg$ind, 'UPD', do_upd);  --  Auto-generated and uppercased columns

--  Now do update if updateable columns exist
    IF (do_upd) THEN
        DECLARE
            called_from BOOLEAN := called_from_package;
        BEGIN
          called_from_package := TRUE;

          slct(cg$old_rec);                          
          validate_foreign_keys_upd(cg$rec, cg$old_rec, cg$ind);
          validate_arc(cg$rec);
          validate_domain(cg$rec, cg$ind);
          validate_domain_cascade_update(cg$old_rec);

          IF cg$rec.the_rowid is null THEN
            UPDATE AUTRE_UTILISATEUR
            SET
              NOM = cg$rec.NOM
              ,PRENOM = cg$rec.PRENOM
              ,TELEPHONE = cg$rec.TELEPHONE
              ,TYPE_UTILISATEUR = cg$rec.TYPE_UTILISATEUR
              ,ADRESSE = cg$rec.ADRESSE
              ,CP = cg$rec.CP
              ,EMAIL = cg$rec.EMAIL
              ,ENTREPRISE_ADRESSE = cg$rec.ENTREPRISE_ADRESSE
              ,ENTREPRISE_CONTACT = cg$rec.ENTREPRISE_CONTACT
              ,ENTREPRISE_CP = cg$rec.ENTREPRISE_CP
              ,ENTREPRISE_NOM = cg$rec.ENTREPRISE_NOM
              ,ENTREPRISE_PAYS = cg$rec.ENTREPRISE_PAYS
              ,ENTREPRISE_VILLE = cg$rec.ENTREPRISE_VILLE
              ,PAYS = cg$rec.PAYS
              ,VILLE = cg$rec.VILLE
            WHERE  CODE_UTILISATEUR = cg$rec.CODE_UTILISATEUR;
            null;
          ELSE
            UPDATE AUTRE_UTILISATEUR
            SET
              NOM = cg$rec.NOM
              ,PRENOM = cg$rec.PRENOM
              ,TELEPHONE = cg$rec.TELEPHONE
              ,TYPE_UTILISATEUR = cg$rec.TYPE_UTILISATEUR
              ,ADRESSE = cg$rec.ADRESSE
              ,CP = cg$rec.CP
              ,EMAIL = cg$rec.EMAIL
              ,ENTREPRISE_ADRESSE = cg$rec.ENTREPRISE_ADRESSE
              ,ENTREPRISE_CONTACT = cg$rec.ENTREPRISE_CONTACT
              ,ENTREPRISE_CP = cg$rec.ENTREPRISE_CP
              ,ENTREPRISE_NOM = cg$rec.ENTREPRISE_NOM
              ,ENTREPRISE_PAYS = cg$rec.ENTREPRISE_PAYS
              ,ENTREPRISE_VILLE = cg$rec.ENTREPRISE_VILLE
              ,PAYS = cg$rec.PAYS
              ,VILLE = cg$rec.VILLE
            WHERE rowid = cg$rec.the_rowid;

            null;
          END IF;

          slct(cg$rec);

          upd_denorm2(cg$rec, cg$ind);
          upd_oper_denorm2(cg$rec, cg$old_rec, cg$ind, 'UPD');
          cascade_update(cg$rec, cg$old_rec);
          domain_cascade_update(cg$rec, cg$ind, cg$old_rec);             
          called_from_package := called_from;
        END;
    END IF;



    IF NOT (do_upd) THEN
        cg$table(idx).CODE_UTILISATEUR := cg$rec.CODE_UTILISATEUR;
        cg$tableind(idx).CODE_UTILISATEUR := cg$ind.CODE_UTILISATEUR;
        cg$table(idx).NOM := cg$rec.NOM;
        cg$tableind(idx).NOM := cg$ind.NOM;
        cg$table(idx).PRENOM := cg$rec.PRENOM;
        cg$tableind(idx).PRENOM := cg$ind.PRENOM;
        cg$table(idx).TELEPHONE := cg$rec.TELEPHONE;
        cg$tableind(idx).TELEPHONE := cg$ind.TELEPHONE;
        cg$table(idx).TYPE_UTILISATEUR := cg$rec.TYPE_UTILISATEUR;
        cg$tableind(idx).TYPE_UTILISATEUR := cg$ind.TYPE_UTILISATEUR;
        cg$table(idx).ADRESSE := cg$rec.ADRESSE;
        cg$tableind(idx).ADRESSE := cg$ind.ADRESSE;
        cg$table(idx).CP := cg$rec.CP;
        cg$tableind(idx).CP := cg$ind.CP;
        cg$table(idx).EMAIL := cg$rec.EMAIL;
        cg$tableind(idx).EMAIL := cg$ind.EMAIL;
        cg$table(idx).ENTREPRISE_ADRESSE := cg$rec.ENTREPRISE_ADRESSE;
        cg$tableind(idx).ENTREPRISE_ADRESSE := cg$ind.ENTREPRISE_ADRESSE;
        cg$table(idx).ENTREPRISE_CONTACT := cg$rec.ENTREPRISE_CONTACT;
        cg$tableind(idx).ENTREPRISE_CONTACT := cg$ind.ENTREPRISE_CONTACT;
        cg$table(idx).ENTREPRISE_CP := cg$rec.ENTREPRISE_CP;
        cg$tableind(idx).ENTREPRISE_CP := cg$ind.ENTREPRISE_CP;
        cg$table(idx).ENTREPRISE_NOM := cg$rec.ENTREPRISE_NOM;
        cg$tableind(idx).ENTREPRISE_NOM := cg$ind.ENTREPRISE_NOM;
        cg$table(idx).ENTREPRISE_PAYS := cg$rec.ENTREPRISE_PAYS;
        cg$tableind(idx).ENTREPRISE_PAYS := cg$ind.ENTREPRISE_PAYS;
        cg$table(idx).ENTREPRISE_VILLE := cg$rec.ENTREPRISE_VILLE;
        cg$tableind(idx).ENTREPRISE_VILLE := cg$ind.ENTREPRISE_VILLE;
        cg$table(idx).PAYS := cg$rec.PAYS;
        cg$tableind(idx).PAYS := cg$ind.PAYS;
        cg$table(idx).VILLE := cg$rec.VILLE;
        cg$tableind(idx).VILLE := cg$ind.VILLE;
        idx := idx + 1;
    END IF;

--  Application_logic Post-Update <<Start>>
--  Application_logic Post-Update << End >>
            
EXCEPTION
    WHEN cg$errors.cg$error THEN 
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.upd_mandatory_null THEN
        validate_mandatory(cg$rec, 'cg$AUTRE_UTILISATEUR.upd.upd_mandatory_null');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.check_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_CHECK_CON, 'cg$AUTRE_UTILISATEUR.upd.check_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.fk_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_FOREIGN_KEY, 'cg$AUTRE_UTILISATEUR.upd.fk_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.uk_violation THEN
        err_msg(SQLERRM, cg$errors.ERR_UNIQUE_KEY, 'cg$AUTRE_UTILISATEUR.upd.uk_violation');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN OTHERS THEN
        cg$errors.push(SQLERRM,
                       'E',
                       'ORA',
                       SQLCODE,
                       'cg$AUTRE_UTILISATEUR.upd.others');
        called_from_package := FALSE;
        cg$errors.raise_failure;
END upd;


----------------------------------------------------------------------------------------
-- Name:        domain_cascade_upd
--
-- Description: Update the Domain Constraint Key columns of AUTRE_UTILISATEUR when the
--              Cascade Update rule is Cascades and the domain table has been
--              updated. Called from <Domain Table pkg>.domain_cascade_update().
--
-- Parameters:  cg$rec      New values for AUTRE_UTILISATEUR's domain key constraint columns 
--              cg$ind      Indicates changed AUTRE_UTILISATEUR's domain key constraint columns
--              cg$old_rec  Current values for AUTRE_UTILISATEUR's domain key constraint columns
----------------------------------------------------------------------------------------
PROCEDURE   domain_cascade_upd( cg$rec     IN OUT cg$row_type,
                                cg$ind     IN OUT cg$ind_type,
                                cg$old_rec IN     cg$row_type )
IS
  called_from BOOLEAN := called_from_package;
BEGIN

  null;
END domain_cascade_upd;


--------------------------------------------------------------------------------
-- Name:        upd_denorm
--
-- Description: API procedure for simple denormalization
--
-- Parameters:  cg$rec  Record of row to be updated
--              cg$ind  Record of columns specifically set
--              do_upd  Whether we want the actual UPDATE to occur
--------------------------------------------------------------------------------
PROCEDURE upd_denorm2( cg$rec IN cg$row_type,
                       cg$ind IN cg$ind_type ) IS
BEGIN
  NULL;
END upd_denorm2;


--------------------------------------------------------------------------------
-- Name:        upd_oper_denorm
--
-- Description: API procedure for operation denormalization
--
-- Parameters:  cg$rec  Record of row to be updated
--              cg$ind  Record of columns specifically set
--              do_upd  Whether we want the actual UPDATE to occur
--------------------------------------------------------------------------------
PROCEDURE upd_oper_denorm2( cg$rec IN cg$row_type,
                            cg$old_rec IN cg$row_type,
                            cg$ind IN cg$ind_type,
                            operation IN VARCHAR2 DEFAULT 'UPD'
					           )
IS
BEGIN
















NULL;
END upd_oper_denorm2;

--------------------------------------------------------------------------------
-- Name:        del
--
-- Description: API delete procedure
--
-- Parameters:  cg$pk  Primary key record of row to be deleted
--------------------------------------------------------------------------------
PROCEDURE del(cg$pk IN cg$pk_type,
              do_del IN BOOLEAN DEFAULT TRUE) IS
BEGIN
--  Application_logic Pre-Delete <<Start>>
--  Application_logic Pre-Delete << End >>

--  Delete the record

    called_from_package := TRUE;

    IF (do_del) THEN
        DECLARE
           cg$rec cg$row_type;
           cg$old_rec cg$row_type;
           cg$ind cg$ind_type;
        BEGIN
           cg$rec.CODE_UTILISATEUR := cg$pk.CODE_UTILISATEUR;
           slct(cg$rec);

           validate_foreign_keys_del(cg$rec);
           validate_domain_cascade_delete(cg$rec);    

           IF cg$pk.the_rowid is null THEN
              DELETE AUTRE_UTILISATEUR
              WHERE                    CODE_UTILISATEUR = cg$pk.CODE_UTILISATEUR;
           ELSE
              DELETE AUTRE_UTILISATEUR
              WHERE  rowid = cg$pk.the_rowid;
           END IF;

           upd_oper_denorm2(cg$rec, cg$old_rec, cg$ind, 'DEL');
           cascade_delete(cg$rec);
           domain_cascade_delete(cg$rec);             
        END;
    END IF;

    called_from_package := FALSE;


--  Application_logic Post-Delete <<Start>>
--  Application_logic Post-Delete << End >>

EXCEPTION
    WHEN cg$errors.cg$error THEN 
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN cg$errors.delete_restrict THEN
        err_msg(SQLERRM, cg$errors.ERR_DELETE_RESTRICT, 'cg$AUTRE_UTILISATEUR.del.delete_restrict');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN no_data_found THEN
        cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_DEL, cg$errors.ROW_DEL),
                       'E',
                       'ORA',
                       SQLCODE,
                       'cg$AUTRE_UTILISATEUR.del.no_data_found');
        called_from_package := FALSE;
        cg$errors.raise_failure;
    WHEN OTHERS THEN
        cg$errors.push(SQLERRM,
                       'E',
                       'ORA',
                       SQLCODE,
                       'cg$AUTRE_UTILISATEUR.del.others');
        called_from_package := FALSE;
        cg$errors.raise_failure;
END del;


--------------------------------------------------------------------------------
-- Name:        lck
--
-- Description: API lock procedure
--
-- Parameters:  cg$old_rec  Calling apps view of record of row to be locked
--              cg$old_ind  Record of columns to raise error if modified
--              nowait_flag TRUE lock with NOWAIT, FALSE don't fail if busy
--------------------------------------------------------------------------------
PROCEDURE lck(cg$old_rec IN cg$row_type,
              cg$old_ind IN cg$ind_type,
              nowait_flag IN BOOLEAN DEFAULT TRUE) IS
cg$tmp_rec cg$row_type;
any_modified BOOLEAN := FALSE;

BEGIN
--  Application_logic Pre-Lock <<Start>>
--  Application_logic Pre-Lock << End >>

--  Do the row lock

    BEGIN
        IF (nowait_flag) THEN
            IF cg$old_rec.the_rowid is null THEN
               SELECT       CODE_UTILISATEUR
               ,            NOM
               ,            PRENOM
               ,            TELEPHONE
               ,            TYPE_UTILISATEUR
               ,            ADRESSE
               ,            CP
               ,            EMAIL
               ,            ENTREPRISE_ADRESSE
               ,            ENTREPRISE_CONTACT
               ,            ENTREPRISE_CP
               ,            ENTREPRISE_NOM
               ,            ENTREPRISE_PAYS
               ,            ENTREPRISE_VILLE
               ,            PAYS
               ,            VILLE
               INTO         cg$tmp_rec.CODE_UTILISATEUR
               ,            cg$tmp_rec.NOM
               ,            cg$tmp_rec.PRENOM
               ,            cg$tmp_rec.TELEPHONE
               ,            cg$tmp_rec.TYPE_UTILISATEUR
               ,            cg$tmp_rec.ADRESSE
               ,            cg$tmp_rec.CP
               ,            cg$tmp_rec.EMAIL
               ,            cg$tmp_rec.ENTREPRISE_ADRESSE
               ,            cg$tmp_rec.ENTREPRISE_CONTACT
               ,            cg$tmp_rec.ENTREPRISE_CP
               ,            cg$tmp_rec.ENTREPRISE_NOM
               ,            cg$tmp_rec.ENTREPRISE_PAYS
               ,            cg$tmp_rec.ENTREPRISE_VILLE
               ,            cg$tmp_rec.PAYS
               ,            cg$tmp_rec.VILLE
               FROM      AUTRE_UTILISATEUR
               WHERE              CODE_UTILISATEUR = cg$old_rec.CODE_UTILISATEUR
               FOR UPDATE NOWAIT;
            ELSE
               SELECT       CODE_UTILISATEUR
               ,            NOM
               ,            PRENOM
               ,            TELEPHONE
               ,            TYPE_UTILISATEUR
               ,            ADRESSE
               ,            CP
               ,            EMAIL
               ,            ENTREPRISE_ADRESSE
               ,            ENTREPRISE_CONTACT
               ,            ENTREPRISE_CP
               ,            ENTREPRISE_NOM
               ,            ENTREPRISE_PAYS
               ,            ENTREPRISE_VILLE
               ,            PAYS
               ,            VILLE
               INTO         cg$tmp_rec.CODE_UTILISATEUR
               ,            cg$tmp_rec.NOM
               ,            cg$tmp_rec.PRENOM
               ,            cg$tmp_rec.TELEPHONE
               ,            cg$tmp_rec.TYPE_UTILISATEUR
               ,            cg$tmp_rec.ADRESSE
               ,            cg$tmp_rec.CP
               ,            cg$tmp_rec.EMAIL
               ,            cg$tmp_rec.ENTREPRISE_ADRESSE
               ,            cg$tmp_rec.ENTREPRISE_CONTACT
               ,            cg$tmp_rec.ENTREPRISE_CP
               ,            cg$tmp_rec.ENTREPRISE_NOM
               ,            cg$tmp_rec.ENTREPRISE_PAYS
               ,            cg$tmp_rec.ENTREPRISE_VILLE
               ,            cg$tmp_rec.PAYS
               ,            cg$tmp_rec.VILLE
               FROM      AUTRE_UTILISATEUR
               WHERE rowid = cg$old_rec.the_rowid
               FOR UPDATE NOWAIT;
            END IF;
        ELSE
            IF cg$old_rec.the_rowid is null THEN
               SELECT       CODE_UTILISATEUR
               ,            NOM
               ,            PRENOM
               ,            TELEPHONE
               ,            TYPE_UTILISATEUR
               ,            ADRESSE
               ,            CP
               ,            EMAIL
               ,            ENTREPRISE_ADRESSE
               ,            ENTREPRISE_CONTACT
               ,            ENTREPRISE_CP
               ,            ENTREPRISE_NOM
               ,            ENTREPRISE_PAYS
               ,            ENTREPRISE_VILLE
               ,            PAYS
               ,            VILLE
               INTO         cg$tmp_rec.CODE_UTILISATEUR
               ,            cg$tmp_rec.NOM
               ,            cg$tmp_rec.PRENOM
               ,            cg$tmp_rec.TELEPHONE
               ,            cg$tmp_rec.TYPE_UTILISATEUR
               ,            cg$tmp_rec.ADRESSE
               ,            cg$tmp_rec.CP
               ,            cg$tmp_rec.EMAIL
               ,            cg$tmp_rec.ENTREPRISE_ADRESSE
               ,            cg$tmp_rec.ENTREPRISE_CONTACT
               ,            cg$tmp_rec.ENTREPRISE_CP
               ,            cg$tmp_rec.ENTREPRISE_NOM
               ,            cg$tmp_rec.ENTREPRISE_PAYS
               ,            cg$tmp_rec.ENTREPRISE_VILLE
               ,            cg$tmp_rec.PAYS
               ,            cg$tmp_rec.VILLE
               FROM      AUTRE_UTILISATEUR
               WHERE              CODE_UTILISATEUR = cg$old_rec.CODE_UTILISATEUR
               FOR UPDATE;
            ELSE
               SELECT       CODE_UTILISATEUR
               ,            NOM
               ,            PRENOM
               ,            TELEPHONE
               ,            TYPE_UTILISATEUR
               ,            ADRESSE
               ,            CP
               ,            EMAIL
               ,            ENTREPRISE_ADRESSE
               ,            ENTREPRISE_CONTACT
               ,            ENTREPRISE_CP
               ,            ENTREPRISE_NOM
               ,            ENTREPRISE_PAYS
               ,            ENTREPRISE_VILLE
               ,            PAYS
               ,            VILLE
               INTO         cg$tmp_rec.CODE_UTILISATEUR
               ,            cg$tmp_rec.NOM
               ,            cg$tmp_rec.PRENOM
               ,            cg$tmp_rec.TELEPHONE
               ,            cg$tmp_rec.TYPE_UTILISATEUR
               ,            cg$tmp_rec.ADRESSE
               ,            cg$tmp_rec.CP
               ,            cg$tmp_rec.EMAIL
               ,            cg$tmp_rec.ENTREPRISE_ADRESSE
               ,            cg$tmp_rec.ENTREPRISE_CONTACT
               ,            cg$tmp_rec.ENTREPRISE_CP
               ,            cg$tmp_rec.ENTREPRISE_NOM
               ,            cg$tmp_rec.ENTREPRISE_PAYS
               ,            cg$tmp_rec.ENTREPRISE_VILLE
               ,            cg$tmp_rec.PAYS
               ,            cg$tmp_rec.VILLE
               FROM      AUTRE_UTILISATEUR
               WHERE rowid = cg$old_rec.the_rowid
               FOR UPDATE;
            END IF;
        END IF;

    EXCEPTION 
        WHEN cg$errors.cg$error THEN 
            cg$errors.raise_failure;
        WHEN cg$errors.resource_busy THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_LCK, cg$errors.ROW_LCK),
                           'E',
                           'ORA',
                           SQLCODE,
                           'cg$AUTRE_UTILISATEUR.lck.resource_busy');
            cg$errors.raise_failure;
        WHEN no_data_found THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_DEL, cg$errors.ROW_DEL),
                           'E',
                           'ORA',
                           SQLCODE,
                           'cg$AUTRE_UTILISATEUR.lck.no_data_found');
            cg$errors.raise_failure;
        WHEN OTHERS THEN
            cg$errors.push(SQLERRM,
                           'E',
                           'ORA',
                           SQLCODE,
                           'cg$AUTRE_UTILISATEUR.lck.others');
            cg$errors.raise_failure;
    END;

-- Optional Columns

    IF (cg$old_ind.ADRESSE) THEN
        IF (cg$tmp_rec.ADRESSE IS NOT NULL
        AND cg$old_rec.ADRESSE IS NOT NULL) THEN
            IF (cg$tmp_rec.ADRESSE != cg$old_rec.ADRESSE) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P6ADRESSE
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ADRESSE IS NOT NULL
        OR cg$old_rec.ADRESSE IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P6ADRESSE
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.CP) THEN
        IF (cg$tmp_rec.CP IS NOT NULL
        AND cg$old_rec.CP IS NOT NULL) THEN
            IF (cg$tmp_rec.CP != cg$old_rec.CP) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P7CP
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.CP IS NOT NULL
        OR cg$old_rec.CP IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P7CP
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.EMAIL) THEN
        IF (cg$tmp_rec.EMAIL IS NOT NULL
        AND cg$old_rec.EMAIL IS NOT NULL) THEN
            IF (cg$tmp_rec.EMAIL != cg$old_rec.EMAIL) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P8EMAIL
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.EMAIL IS NOT NULL
        OR cg$old_rec.EMAIL IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P8EMAIL
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_ADRESSE) THEN
        IF (cg$tmp_rec.ENTREPRISE_ADRESSE IS NOT NULL
        AND cg$old_rec.ENTREPRISE_ADRESSE IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_ADRESSE != cg$old_rec.ENTREPRISE_ADRESSE) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P9ENTREPRISE_ADRESSE
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_ADRESSE IS NOT NULL
        OR cg$old_rec.ENTREPRISE_ADRESSE IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P9ENTREPRISE_ADRESSE
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_CONTACT) THEN
        IF (cg$tmp_rec.ENTREPRISE_CONTACT IS NOT NULL
        AND cg$old_rec.ENTREPRISE_CONTACT IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_CONTACT != cg$old_rec.ENTREPRISE_CONTACT) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P10ENTREPRISE_CONTACT
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_CONTACT IS NOT NULL
        OR cg$old_rec.ENTREPRISE_CONTACT IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P10ENTREPRISE_CONTACT
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_CP) THEN
        IF (cg$tmp_rec.ENTREPRISE_CP IS NOT NULL
        AND cg$old_rec.ENTREPRISE_CP IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_CP != cg$old_rec.ENTREPRISE_CP) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P11ENTREPRISE_CP
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_CP IS NOT NULL
        OR cg$old_rec.ENTREPRISE_CP IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P11ENTREPRISE_CP
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_NOM) THEN
        IF (cg$tmp_rec.ENTREPRISE_NOM IS NOT NULL
        AND cg$old_rec.ENTREPRISE_NOM IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_NOM != cg$old_rec.ENTREPRISE_NOM) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P12ENTREPRISE_NOM
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_NOM IS NOT NULL
        OR cg$old_rec.ENTREPRISE_NOM IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P12ENTREPRISE_NOM
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_PAYS) THEN
        IF (cg$tmp_rec.ENTREPRISE_PAYS IS NOT NULL
        AND cg$old_rec.ENTREPRISE_PAYS IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_PAYS != cg$old_rec.ENTREPRISE_PAYS) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P13ENTREPRISE_PAYS
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_PAYS IS NOT NULL
        OR cg$old_rec.ENTREPRISE_PAYS IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P13ENTREPRISE_PAYS
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.ENTREPRISE_VILLE) THEN
        IF (cg$tmp_rec.ENTREPRISE_VILLE IS NOT NULL
        AND cg$old_rec.ENTREPRISE_VILLE IS NOT NULL) THEN
            IF (cg$tmp_rec.ENTREPRISE_VILLE != cg$old_rec.ENTREPRISE_VILLE) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P14ENTREPRISE_VILLE
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.ENTREPRISE_VILLE IS NOT NULL
        OR cg$old_rec.ENTREPRISE_VILLE IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P14ENTREPRISE_VILLE
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.PAYS) THEN
        IF (cg$tmp_rec.PAYS IS NOT NULL
        AND cg$old_rec.PAYS IS NOT NULL) THEN
            IF (cg$tmp_rec.PAYS != cg$old_rec.PAYS) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P15PAYS
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.PAYS IS NOT NULL
        OR cg$old_rec.PAYS IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P15PAYS
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.VILLE) THEN
        IF (cg$tmp_rec.VILLE IS NOT NULL
        AND cg$old_rec.VILLE IS NOT NULL) THEN
            IF (cg$tmp_rec.VILLE != cg$old_rec.VILLE) THEN
                cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P16VILLE
                    ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
                any_modified := TRUE;
            END IF;
        ELSIF (cg$tmp_rec.VILLE IS NOT NULL
        OR cg$old_rec.VILLE IS NOT NULL) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P16VILLE
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;

-- Mandatory Columns

    IF (cg$old_ind.CODE_UTILISATEUR) THEN
        IF (cg$tmp_rec.CODE_UTILISATEUR != cg$old_rec.CODE_UTILISATEUR) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P1CODE_UTILISATEUR
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.NOM) THEN
        IF (cg$tmp_rec.NOM != cg$old_rec.NOM) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P2NOM
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.PRENOM) THEN
        IF (cg$tmp_rec.PRENOM != cg$old_rec.PRENOM) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P3PRENOM
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.TELEPHONE) THEN
        IF (cg$tmp_rec.TELEPHONE != cg$old_rec.TELEPHONE) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P4TELEPHONE
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;
    IF (cg$old_ind.TYPE_UTILISATEUR) THEN
        IF (cg$tmp_rec.TYPE_UTILISATEUR != cg$old_rec.TYPE_UTILISATEUR) THEN
            cg$errors.push(cg$errors.MsgGetText(cg$errors.API_ROW_MOD, cg$errors.ROW_MOD, P5TYPE_UTILISATEUR
                ),'E', 'API', CG$ERRORS.API_MODIFIED, 'cg$AUTRE_UTILISATEUR.lck');
            any_modified := TRUE;
        END IF;
    END IF;

    IF (any_modified) THEN
        cg$errors.raise_failure;
    END IF;

--  Application_logic Post-Lock <<Start>>
--  Application_logic Post-Lock << End >>

END lck;


BEGIN
      cg$ind_true.CODE_UTILISATEUR := TRUE;
      cg$ind_true.NOM := TRUE;
      cg$ind_true.PRENOM := TRUE;
      cg$ind_true.TELEPHONE := TRUE;
      cg$ind_true.TYPE_UTILISATEUR := TRUE;
      cg$ind_true.ADRESSE := TRUE;
      cg$ind_true.CP := TRUE;
      cg$ind_true.EMAIL := TRUE;
      cg$ind_true.ENTREPRISE_ADRESSE := TRUE;
      cg$ind_true.ENTREPRISE_CONTACT := TRUE;
      cg$ind_true.ENTREPRISE_CP := TRUE;
      cg$ind_true.ENTREPRISE_NOM := TRUE;
      cg$ind_true.ENTREPRISE_PAYS := TRUE;
      cg$ind_true.ENTREPRISE_VILLE := TRUE;
      cg$ind_true.PAYS := TRUE;
      cg$ind_true.VILLE := TRUE;
   

END cg$AUTRE_UTILISATEUR;
/

