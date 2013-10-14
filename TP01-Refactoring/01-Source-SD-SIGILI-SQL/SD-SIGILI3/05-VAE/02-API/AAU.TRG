
PROMPT Creating Trigger Logic for Table 'AUTRE_UTILISATEUR'
PROMPT Creating Before Insert Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BIS_AUTRE_UTILISATEUR
BEFORE INSERT ON AUTRE_UTILISATEUR
BEGIN
--  Application_logic Pre-Before-Insert-statement <<Start>>
--  Application_logic Pre-Before-Insert-statement << End >>

    cg$AUTRE_UTILISATEUR.cg$table.DELETE;
    cg$AUTRE_UTILISATEUR.cg$tableind.DELETE;
    cg$AUTRE_UTILISATEUR.idx := 1;

--  Application_logic Post-Before-Insert-statement <<Start>>
--  Application_logic Post-Before-Insert-statement << End >>
END;
/
  

PROMPT Creating Before Insert Row Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BIR_AUTRE_UTILISATEUR
BEFORE INSERT ON AUTRE_UTILISATEUR FOR EACH ROW
DECLARE
    cg$rec cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$ind cg$AUTRE_UTILISATEUR.cg$ind_type;
BEGIN
--  Application_logic Pre-Before-Insert-row <<Start>>
--  Application_logic Pre-Before-Insert-row << End >>

--  Load cg$rec/cg$ind values from new

    cg$rec.CODE_UTILISATEUR := :new.CODE_UTILISATEUR;
    cg$ind.CODE_UTILISATEUR := TRUE;
    cg$rec.NOM := :new.NOM;
    cg$ind.NOM := TRUE;
    cg$rec.PRENOM := :new.PRENOM;
    cg$ind.PRENOM := TRUE;
    cg$rec.TELEPHONE := :new.TELEPHONE;
    cg$ind.TELEPHONE := TRUE;
    cg$rec.TYPE_UTILISATEUR := :new.TYPE_UTILISATEUR;
    cg$ind.TYPE_UTILISATEUR := TRUE;
    cg$rec.ADRESSE := :new.ADRESSE;
    cg$ind.ADRESSE := TRUE;
    cg$rec.CP := :new.CP;
    cg$ind.CP := TRUE;
    cg$rec.EMAIL := :new.EMAIL;
    cg$ind.EMAIL := TRUE;
    cg$rec.ENTREPRISE_ADRESSE := :new.ENTREPRISE_ADRESSE;
    cg$ind.ENTREPRISE_ADRESSE := TRUE;
    cg$rec.ENTREPRISE_CONTACT := :new.ENTREPRISE_CONTACT;
    cg$ind.ENTREPRISE_CONTACT := TRUE;
    cg$rec.ENTREPRISE_CP := :new.ENTREPRISE_CP;
    cg$ind.ENTREPRISE_CP := TRUE;
    cg$rec.ENTREPRISE_NOM := :new.ENTREPRISE_NOM;
    cg$ind.ENTREPRISE_NOM := TRUE;
    cg$rec.ENTREPRISE_PAYS := :new.ENTREPRISE_PAYS;
    cg$ind.ENTREPRISE_PAYS := TRUE;
    cg$rec.ENTREPRISE_VILLE := :new.ENTREPRISE_VILLE;
    cg$ind.ENTREPRISE_VILLE := TRUE;
    cg$rec.PAYS := :new.PAYS;
    cg$ind.PAYS := TRUE;
    cg$rec.VILLE := :new.VILLE;
    cg$ind.VILLE := TRUE;

    if not (cg$AUTRE_UTILISATEUR.called_from_package) then
        cg$AUTRE_UTILISATEUR.validate_arc(cg$rec);
        cg$AUTRE_UTILISATEUR.validate_domain(cg$rec);

        cg$AUTRE_UTILISATEUR.ins(cg$rec, cg$ind, FALSE);
        cg$AUTRE_UTILISATEUR.called_from_package := FALSE;
    end if;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).CODE_UTILISATEUR := cg$rec.CODE_UTILISATEUR;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).CODE_UTILISATEUR := cg$ind.CODE_UTILISATEUR;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).NOM := cg$rec.NOM;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).NOM := cg$ind.NOM;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).PRENOM := cg$rec.PRENOM;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).PRENOM := cg$ind.PRENOM;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).TELEPHONE := cg$rec.TELEPHONE;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).TELEPHONE := cg$ind.TELEPHONE;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).TYPE_UTILISATEUR := cg$rec.TYPE_UTILISATEUR;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).TYPE_UTILISATEUR := cg$ind.TYPE_UTILISATEUR;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ADRESSE := cg$rec.ADRESSE;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ADRESSE := cg$ind.ADRESSE;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).CP := cg$rec.CP;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).CP := cg$ind.CP;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).EMAIL := cg$rec.EMAIL;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).EMAIL := cg$ind.EMAIL;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_ADRESSE := cg$rec.ENTREPRISE_ADRESSE;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_ADRESSE := cg$ind.ENTREPRISE_ADRESSE;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CONTACT := cg$rec.ENTREPRISE_CONTACT;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CONTACT := cg$ind.ENTREPRISE_CONTACT;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CP := cg$rec.ENTREPRISE_CP;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CP := cg$ind.ENTREPRISE_CP;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_NOM := cg$rec.ENTREPRISE_NOM;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_NOM := cg$ind.ENTREPRISE_NOM;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_PAYS := cg$rec.ENTREPRISE_PAYS;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_PAYS := cg$ind.ENTREPRISE_PAYS;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_VILLE := cg$rec.ENTREPRISE_VILLE;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_VILLE := cg$ind.ENTREPRISE_VILLE;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).PAYS := cg$rec.PAYS;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).PAYS := cg$ind.PAYS;

    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).VILLE := cg$rec.VILLE;
    cg$AUTRE_UTILISATEUR.cg$tableind(cg$AUTRE_UTILISATEUR.idx).VILLE := cg$ind.VILLE;

    cg$AUTRE_UTILISATEUR.idx := cg$AUTRE_UTILISATEUR.idx + 1;

    :new.CODE_UTILISATEUR := cg$rec.CODE_UTILISATEUR;
    :new.NOM := cg$rec.NOM;
    :new.PRENOM := cg$rec.PRENOM;
    :new.TELEPHONE := cg$rec.TELEPHONE;
    :new.TYPE_UTILISATEUR := cg$rec.TYPE_UTILISATEUR;
    :new.ADRESSE := cg$rec.ADRESSE;
    :new.CP := cg$rec.CP;
    :new.EMAIL := cg$rec.EMAIL;
    :new.ENTREPRISE_ADRESSE := cg$rec.ENTREPRISE_ADRESSE;
    :new.ENTREPRISE_CONTACT := cg$rec.ENTREPRISE_CONTACT;
    :new.ENTREPRISE_CP := cg$rec.ENTREPRISE_CP;
    :new.ENTREPRISE_NOM := cg$rec.ENTREPRISE_NOM;
    :new.ENTREPRISE_PAYS := cg$rec.ENTREPRISE_PAYS;
    :new.ENTREPRISE_VILLE := cg$rec.ENTREPRISE_VILLE;
    :new.PAYS := cg$rec.PAYS;
    :new.VILLE := cg$rec.VILLE;

--  Application_logic Post-Before-Insert-row <<Start>>
--  Application_logic Post-Before-Insert-row << End >>
END;
/


-- No application logic defined for Trigger cg$AIR_AUTRE_UTILISATEUR, so drop it.
-- To avoid an error if there isn't one, create or replace it, and then drop it
CREATE OR REPLACE TRIGGER cg$AIR_AUTRE_UTILISATEUR
AFTER INSERT ON AUTRE_UTILISATEUR FOR EACH ROW
BEGIN
 null;
END;
/
drop trigger cg$AIR_AUTRE_UTILISATEUR
/

PROMPT Creating After Insert Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$AIS_AUTRE_UTILISATEUR
AFTER INSERT ON AUTRE_UTILISATEUR
DECLARE
    idx      BINARY_INTEGER := cg$AUTRE_UTILISATEUR.cg$table.FIRST;
    cg$rec   cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$old_rec   cg$AUTRE_UTILISATEUR.cg$row_type;
    fk_check INTEGER;
BEGIN
--  Application_logic Pre-After-Insert-statement <<Start>>
--  Application_logic Pre-After-Insert-statement << End >>


    IF NOT (cg$AUTRE_UTILISATEUR.called_from_package) THEN
        WHILE idx IS NOT NULL LOOP
            cg$rec.CODE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).CODE_UTILISATEUR;
            cg$rec.NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).NOM;
            cg$rec.PRENOM := cg$AUTRE_UTILISATEUR.cg$table(idx).PRENOM;
            cg$rec.TELEPHONE := cg$AUTRE_UTILISATEUR.cg$table(idx).TELEPHONE;
            cg$rec.TYPE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).TYPE_UTILISATEUR;
            cg$rec.ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ADRESSE;
            cg$rec.CP := cg$AUTRE_UTILISATEUR.cg$table(idx).CP;
            cg$rec.EMAIL := cg$AUTRE_UTILISATEUR.cg$table(idx).EMAIL;
            cg$rec.ENTREPRISE_ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_ADRESSE;
            cg$rec.ENTREPRISE_CONTACT := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CONTACT;
            cg$rec.ENTREPRISE_CP := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CP;
            cg$rec.ENTREPRISE_NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_NOM;
            cg$rec.ENTREPRISE_PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_PAYS;
            cg$rec.ENTREPRISE_VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_VILLE;
            cg$rec.PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).PAYS;
            cg$rec.VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).VILLE;

            cg$AUTRE_UTILISATEUR.validate_foreign_keys_ins(cg$rec);

            cg$AUTRE_UTILISATEUR.upd_oper_denorm2( cg$rec,
                                                cg$old_rec,
                                                cg$AUTRE_UTILISATEUR.cg$tableind(idx),
                                                'INS'
                                              );
	
            idx := cg$AUTRE_UTILISATEUR.cg$table.NEXT(idx);
        END LOOP;
    END IF;

--  Application_logic Post-After-Insert-statement <<Start>>
--  Application_logic Post-After-Insert-statement << End >>

END;
/


    

PROMPT Creating Before Update Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BUS_AUTRE_UTILISATEUR
BEFORE UPDATE ON AUTRE_UTILISATEUR
BEGIN
--  Application_logic Pre-Before-Update-statement <<Start>>
--  Application_logic Pre-Before-Update-statement << End >>

    cg$AUTRE_UTILISATEUR.cg$table.DELETE;
    cg$AUTRE_UTILISATEUR.cg$tableind.DELETE;
    cg$AUTRE_UTILISATEUR.idx := 1;

--  Application_logic Post-Before-Update-statement <<Start>>
--  Application_logic Post-Before-Update-statement << End >>

END;
/
  

PROMPT Creating Before Update Row Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BUR_AUTRE_UTILISATEUR
BEFORE UPDATE ON AUTRE_UTILISATEUR FOR EACH ROW
DECLARE
    cg$rec     cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$ind     cg$AUTRE_UTILISATEUR.cg$ind_type;
    cg$old_rec cg$AUTRE_UTILISATEUR.cg$row_type;  
BEGIN
--  Application_logic Pre-Before-Update-row <<Start>>
--  Application_logic Pre-Before-Update-row << End >>

--  Load cg$rec/cg$ind values from new

    cg$rec.CODE_UTILISATEUR := :new.CODE_UTILISATEUR;
    cg$ind.CODE_UTILISATEUR :=    (:new.CODE_UTILISATEUR IS NULL AND :old.CODE_UTILISATEUR IS NOT NULL )
                        OR (:new.CODE_UTILISATEUR IS NOT NULL AND :old.CODE_UTILISATEUR IS NULL)
                        OR NOT(:new.CODE_UTILISATEUR = :old.CODE_UTILISATEUR) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).CODE_UTILISATEUR := :old.CODE_UTILISATEUR;
    cg$rec.NOM := :new.NOM;
    cg$ind.NOM :=    (:new.NOM IS NULL AND :old.NOM IS NOT NULL )
                        OR (:new.NOM IS NOT NULL AND :old.NOM IS NULL)
                        OR NOT(:new.NOM = :old.NOM) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).NOM := :old.NOM;
    cg$rec.PRENOM := :new.PRENOM;
    cg$ind.PRENOM :=    (:new.PRENOM IS NULL AND :old.PRENOM IS NOT NULL )
                        OR (:new.PRENOM IS NOT NULL AND :old.PRENOM IS NULL)
                        OR NOT(:new.PRENOM = :old.PRENOM) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).PRENOM := :old.PRENOM;
    cg$rec.TELEPHONE := :new.TELEPHONE;
    cg$ind.TELEPHONE :=    (:new.TELEPHONE IS NULL AND :old.TELEPHONE IS NOT NULL )
                        OR (:new.TELEPHONE IS NOT NULL AND :old.TELEPHONE IS NULL)
                        OR NOT(:new.TELEPHONE = :old.TELEPHONE) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).TELEPHONE := :old.TELEPHONE;
    cg$rec.TYPE_UTILISATEUR := :new.TYPE_UTILISATEUR;
    cg$ind.TYPE_UTILISATEUR :=    (:new.TYPE_UTILISATEUR IS NULL AND :old.TYPE_UTILISATEUR IS NOT NULL )
                        OR (:new.TYPE_UTILISATEUR IS NOT NULL AND :old.TYPE_UTILISATEUR IS NULL)
                        OR NOT(:new.TYPE_UTILISATEUR = :old.TYPE_UTILISATEUR) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).TYPE_UTILISATEUR := :old.TYPE_UTILISATEUR;
    cg$rec.ADRESSE := :new.ADRESSE;
    cg$ind.ADRESSE :=    (:new.ADRESSE IS NULL AND :old.ADRESSE IS NOT NULL )
                        OR (:new.ADRESSE IS NOT NULL AND :old.ADRESSE IS NULL)
                        OR NOT(:new.ADRESSE = :old.ADRESSE) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ADRESSE := :old.ADRESSE;
    cg$rec.CP := :new.CP;
    cg$ind.CP :=    (:new.CP IS NULL AND :old.CP IS NOT NULL )
                        OR (:new.CP IS NOT NULL AND :old.CP IS NULL)
                        OR NOT(:new.CP = :old.CP) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).CP := :old.CP;
    cg$rec.EMAIL := :new.EMAIL;
    cg$ind.EMAIL :=    (:new.EMAIL IS NULL AND :old.EMAIL IS NOT NULL )
                        OR (:new.EMAIL IS NOT NULL AND :old.EMAIL IS NULL)
                        OR NOT(:new.EMAIL = :old.EMAIL) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).EMAIL := :old.EMAIL;
    cg$rec.ENTREPRISE_ADRESSE := :new.ENTREPRISE_ADRESSE;
    cg$ind.ENTREPRISE_ADRESSE :=    (:new.ENTREPRISE_ADRESSE IS NULL AND :old.ENTREPRISE_ADRESSE IS NOT NULL )
                        OR (:new.ENTREPRISE_ADRESSE IS NOT NULL AND :old.ENTREPRISE_ADRESSE IS NULL)
                        OR NOT(:new.ENTREPRISE_ADRESSE = :old.ENTREPRISE_ADRESSE) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_ADRESSE := :old.ENTREPRISE_ADRESSE;
    cg$rec.ENTREPRISE_CONTACT := :new.ENTREPRISE_CONTACT;
    cg$ind.ENTREPRISE_CONTACT :=    (:new.ENTREPRISE_CONTACT IS NULL AND :old.ENTREPRISE_CONTACT IS NOT NULL )
                        OR (:new.ENTREPRISE_CONTACT IS NOT NULL AND :old.ENTREPRISE_CONTACT IS NULL)
                        OR NOT(:new.ENTREPRISE_CONTACT = :old.ENTREPRISE_CONTACT) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CONTACT := :old.ENTREPRISE_CONTACT;
    cg$rec.ENTREPRISE_CP := :new.ENTREPRISE_CP;
    cg$ind.ENTREPRISE_CP :=    (:new.ENTREPRISE_CP IS NULL AND :old.ENTREPRISE_CP IS NOT NULL )
                        OR (:new.ENTREPRISE_CP IS NOT NULL AND :old.ENTREPRISE_CP IS NULL)
                        OR NOT(:new.ENTREPRISE_CP = :old.ENTREPRISE_CP) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_CP := :old.ENTREPRISE_CP;
    cg$rec.ENTREPRISE_NOM := :new.ENTREPRISE_NOM;
    cg$ind.ENTREPRISE_NOM :=    (:new.ENTREPRISE_NOM IS NULL AND :old.ENTREPRISE_NOM IS NOT NULL )
                        OR (:new.ENTREPRISE_NOM IS NOT NULL AND :old.ENTREPRISE_NOM IS NULL)
                        OR NOT(:new.ENTREPRISE_NOM = :old.ENTREPRISE_NOM) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_NOM := :old.ENTREPRISE_NOM;
    cg$rec.ENTREPRISE_PAYS := :new.ENTREPRISE_PAYS;
    cg$ind.ENTREPRISE_PAYS :=    (:new.ENTREPRISE_PAYS IS NULL AND :old.ENTREPRISE_PAYS IS NOT NULL )
                        OR (:new.ENTREPRISE_PAYS IS NOT NULL AND :old.ENTREPRISE_PAYS IS NULL)
                        OR NOT(:new.ENTREPRISE_PAYS = :old.ENTREPRISE_PAYS) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_PAYS := :old.ENTREPRISE_PAYS;
    cg$rec.ENTREPRISE_VILLE := :new.ENTREPRISE_VILLE;
    cg$ind.ENTREPRISE_VILLE :=    (:new.ENTREPRISE_VILLE IS NULL AND :old.ENTREPRISE_VILLE IS NOT NULL )
                        OR (:new.ENTREPRISE_VILLE IS NOT NULL AND :old.ENTREPRISE_VILLE IS NULL)
                        OR NOT(:new.ENTREPRISE_VILLE = :old.ENTREPRISE_VILLE) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).ENTREPRISE_VILLE := :old.ENTREPRISE_VILLE;
    cg$rec.PAYS := :new.PAYS;
    cg$ind.PAYS :=    (:new.PAYS IS NULL AND :old.PAYS IS NOT NULL )
                        OR (:new.PAYS IS NOT NULL AND :old.PAYS IS NULL)
                        OR NOT(:new.PAYS = :old.PAYS) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).PAYS := :old.PAYS;
    cg$rec.VILLE := :new.VILLE;
    cg$ind.VILLE :=    (:new.VILLE IS NULL AND :old.VILLE IS NOT NULL )
                        OR (:new.VILLE IS NOT NULL AND :old.VILLE IS NULL)
                        OR NOT(:new.VILLE = :old.VILLE) ;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).VILLE := :old.VILLE;


    cg$AUTRE_UTILISATEUR.idx := cg$AUTRE_UTILISATEUR.idx + 1;

    if not (cg$AUTRE_UTILISATEUR.called_from_package) then
        cg$AUTRE_UTILISATEUR.validate_arc(cg$rec);
        cg$AUTRE_UTILISATEUR.validate_domain(cg$rec, cg$ind);
        cg$AUTRE_UTILISATEUR.validate_domain_cascade_update(cg$old_rec);   

        cg$AUTRE_UTILISATEUR.upd(cg$rec, cg$ind, FALSE);
        cg$AUTRE_UTILISATEUR.called_from_package := FALSE;
    end if;

    :new.NOM := cg$rec.NOM;
    :new.PRENOM := cg$rec.PRENOM;
    :new.TELEPHONE := cg$rec.TELEPHONE;
    :new.TYPE_UTILISATEUR := cg$rec.TYPE_UTILISATEUR;
    :new.ADRESSE := cg$rec.ADRESSE;
    :new.CP := cg$rec.CP;
    :new.EMAIL := cg$rec.EMAIL;
    :new.ENTREPRISE_ADRESSE := cg$rec.ENTREPRISE_ADRESSE;
    :new.ENTREPRISE_CONTACT := cg$rec.ENTREPRISE_CONTACT;
    :new.ENTREPRISE_CP := cg$rec.ENTREPRISE_CP;
    :new.ENTREPRISE_NOM := cg$rec.ENTREPRISE_NOM;
    :new.ENTREPRISE_PAYS := cg$rec.ENTREPRISE_PAYS;
    :new.ENTREPRISE_VILLE := cg$rec.ENTREPRISE_VILLE;
    :new.PAYS := cg$rec.PAYS;
    :new.VILLE := cg$rec.VILLE;
--  Application_logic Post-Before-Update-row <<Start>>
--  Application_logic Post-Before-Update-row << End >>
END;
/

-- No application logic defined for Trigger cg$AUR_AUTRE_UTILISATEUR, so drop it.
-- To avoid an error if there isn't one, create or replace it, and then drop it
CREATE OR REPLACE TRIGGER cg$AUR_AUTRE_UTILISATEUR
AFTER UPDATE ON AUTRE_UTILISATEUR FOR EACH ROW
BEGIN
 null;
END;
/
drop trigger cg$AUR_AUTRE_UTILISATEUR
/






PROMPT Creating After Update Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$AUS_AUTRE_UTILISATEUR
AFTER UPDATE ON AUTRE_UTILISATEUR
DECLARE
    idx        BINARY_INTEGER := cg$AUTRE_UTILISATEUR.cg$table.FIRST;
    cg$old_rec cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$rec     cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$ind     cg$AUTRE_UTILISATEUR.cg$ind_type;
BEGIN
--  Application_logic Pre-After-Update-statement <<Start>>
--  Application_logic Pre-After-Update-statement << End >>

    WHILE idx IS NOT NULL LOOP
        cg$old_rec.CODE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).CODE_UTILISATEUR;
        cg$old_rec.NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).NOM;
        cg$old_rec.PRENOM := cg$AUTRE_UTILISATEUR.cg$table(idx).PRENOM;
        cg$old_rec.TELEPHONE := cg$AUTRE_UTILISATEUR.cg$table(idx).TELEPHONE;
        cg$old_rec.TYPE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).TYPE_UTILISATEUR;
        cg$old_rec.ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ADRESSE;
        cg$old_rec.CP := cg$AUTRE_UTILISATEUR.cg$table(idx).CP;
        cg$old_rec.EMAIL := cg$AUTRE_UTILISATEUR.cg$table(idx).EMAIL;
        cg$old_rec.ENTREPRISE_ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_ADRESSE;
        cg$old_rec.ENTREPRISE_CONTACT := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CONTACT;
        cg$old_rec.ENTREPRISE_CP := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CP;
        cg$old_rec.ENTREPRISE_NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_NOM;
        cg$old_rec.ENTREPRISE_PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_PAYS;
        cg$old_rec.ENTREPRISE_VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_VILLE;
        cg$old_rec.PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).PAYS;
        cg$old_rec.VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).VILLE;

    IF NOT (cg$AUTRE_UTILISATEUR.called_from_package) THEN
        idx := cg$AUTRE_UTILISATEUR.cg$table.NEXT(idx);
        cg$rec.CODE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).CODE_UTILISATEUR;
        cg$ind.CODE_UTILISATEUR := updating('CODE_UTILISATEUR');
        cg$rec.NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).NOM;
        cg$ind.NOM := updating('NOM');
        cg$rec.PRENOM := cg$AUTRE_UTILISATEUR.cg$table(idx).PRENOM;
        cg$ind.PRENOM := updating('PRENOM');
        cg$rec.TELEPHONE := cg$AUTRE_UTILISATEUR.cg$table(idx).TELEPHONE;
        cg$ind.TELEPHONE := updating('TELEPHONE');
        cg$rec.TYPE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).TYPE_UTILISATEUR;
        cg$ind.TYPE_UTILISATEUR := updating('TYPE_UTILISATEUR');
        cg$rec.ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ADRESSE;
        cg$ind.ADRESSE := updating('ADRESSE');
        cg$rec.CP := cg$AUTRE_UTILISATEUR.cg$table(idx).CP;
        cg$ind.CP := updating('CP');
        cg$rec.EMAIL := cg$AUTRE_UTILISATEUR.cg$table(idx).EMAIL;
        cg$ind.EMAIL := updating('EMAIL');
        cg$rec.ENTREPRISE_ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_ADRESSE;
        cg$ind.ENTREPRISE_ADRESSE := updating('ENTREPRISE_ADRESSE');
        cg$rec.ENTREPRISE_CONTACT := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CONTACT;
        cg$ind.ENTREPRISE_CONTACT := updating('ENTREPRISE_CONTACT');
        cg$rec.ENTREPRISE_CP := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CP;
        cg$ind.ENTREPRISE_CP := updating('ENTREPRISE_CP');
        cg$rec.ENTREPRISE_NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_NOM;
        cg$ind.ENTREPRISE_NOM := updating('ENTREPRISE_NOM');
        cg$rec.ENTREPRISE_PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_PAYS;
        cg$ind.ENTREPRISE_PAYS := updating('ENTREPRISE_PAYS');
        cg$rec.ENTREPRISE_VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_VILLE;
        cg$ind.ENTREPRISE_VILLE := updating('ENTREPRISE_VILLE');
        cg$rec.PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).PAYS;
        cg$ind.PAYS := updating('PAYS');
        cg$rec.VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).VILLE;
        cg$ind.VILLE := updating('VILLE');

        cg$AUTRE_UTILISATEUR.validate_foreign_keys_upd(cg$rec, cg$old_rec, cg$ind);

        cg$AUTRE_UTILISATEUR.upd_denorm2( cg$rec,
                                       cg$AUTRE_UTILISATEUR.cg$tableind(idx)
                                     );
        cg$AUTRE_UTILISATEUR.upd_oper_denorm2( cg$rec,
                                            cg$old_rec,
                                            cg$AUTRE_UTILISATEUR.cg$tableind(idx)
								                  );
        cg$AUTRE_UTILISATEUR.cascade_update(cg$rec, cg$old_rec);
        cg$AUTRE_UTILISATEUR.domain_cascade_update(cg$rec, cg$ind, cg$old_rec);             

		cg$AUTRE_UTILISATEUR.called_from_package := FALSE;
	END IF;
        idx := cg$AUTRE_UTILISATEUR.cg$table.NEXT(idx);
    END LOOP;

    cg$AUTRE_UTILISATEUR.cg$table.DELETE;

--  Application_logic Post-After-Update-statement <<Start>>
--  Application_logic Post-After-Update-statement << End >>

END;
/

PROMPT Creating Before Delete Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BDS_AUTRE_UTILISATEUR
BEFORE DELETE ON AUTRE_UTILISATEUR
BEGIN
--  Application_logic Pre-Before-Delete-statement <<Start>>
--  Application_logic Pre-Before-Delete-statement << End >>

    cg$AUTRE_UTILISATEUR.cg$table.DELETE;
    cg$AUTRE_UTILISATEUR.cg$tableind.DELETE;
    cg$AUTRE_UTILISATEUR.idx := 1;

--  Application_logic Post-Before-Delete-statement <<Start>>
--  Application_logic Post-Before-Delete-statement << End >>
END;
/
  

PROMPT Creating Before Delete Row Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$BDR_AUTRE_UTILISATEUR
BEFORE DELETE ON AUTRE_UTILISATEUR FOR EACH ROW
DECLARE
    cg$pk cg$AUTRE_UTILISATEUR.cg$pk_type;
    cg$rec cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$ind cg$AUTRE_UTILISATEUR.cg$ind_type;
BEGIN
--  Application_logic Pre-Before-Delete-row <<Start>>
--  Application_logic Pre-Before-Delete-row << End >>

--  Load cg$rec/cg$ind values from new

    cg$pk.CODE_UTILISATEUR  := :old.CODE_UTILISATEUR;
    cg$rec.CODE_UTILISATEUR := :old.CODE_UTILISATEUR;
    cg$AUTRE_UTILISATEUR.cg$table(cg$AUTRE_UTILISATEUR.idx).CODE_UTILISATEUR := :old.CODE_UTILISATEUR;


    cg$AUTRE_UTILISATEUR.idx := cg$AUTRE_UTILISATEUR.idx + 1;

    if not (cg$AUTRE_UTILISATEUR.called_from_package) then
        cg$AUTRE_UTILISATEUR.validate_domain_cascade_delete(cg$rec);   
        cg$AUTRE_UTILISATEUR.del(cg$pk, FALSE);
        cg$AUTRE_UTILISATEUR.called_from_package := FALSE;
    end if;

--  Application_logic Post-Before-Delete-row <<Start>>
--  Application_logic Post-Before-Delete-row << End >>
END;
/

-- No application logic defined for Trigger cg$ADR_AUTRE_UTILISATEUR, so drop it.
-- To avoid an error if there isn't one, create or replace it, and then drop it
CREATE OR REPLACE TRIGGER cg$ADR_AUTRE_UTILISATEUR
AFTER DELETE ON AUTRE_UTILISATEUR FOR EACH ROW
BEGIN
 null;
END;
/
drop trigger cg$ADR_AUTRE_UTILISATEUR
/

PROMPT Creating After Delete Statement Trigger on 'AUTRE_UTILISATEUR'
CREATE OR REPLACE TRIGGER cg$ADS_AUTRE_UTILISATEUR
AFTER DELETE ON AUTRE_UTILISATEUR
DECLARE
    idx        BINARY_INTEGER := cg$AUTRE_UTILISATEUR.cg$table.FIRST;
    cg$rec   cg$AUTRE_UTILISATEUR.cg$row_type;
    cg$old_rec   cg$AUTRE_UTILISATEUR.cg$row_type;
BEGIN
--  Application_logic Pre-After-Delete-statement <<Start>>
--  Application_logic Pre-After-Delete-statement << End >>

    IF NOT (cg$AUTRE_UTILISATEUR.called_from_package) THEN
        WHILE idx IS NOT NULL LOOP
            cg$rec.CODE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).CODE_UTILISATEUR;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).CODE_UTILISATEUR := TRUE;
            cg$rec.NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).NOM;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).NOM := TRUE;
            cg$rec.PRENOM := cg$AUTRE_UTILISATEUR.cg$table(idx).PRENOM;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).PRENOM := TRUE;
            cg$rec.TELEPHONE := cg$AUTRE_UTILISATEUR.cg$table(idx).TELEPHONE;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).TELEPHONE := TRUE;
            cg$rec.TYPE_UTILISATEUR := cg$AUTRE_UTILISATEUR.cg$table(idx).TYPE_UTILISATEUR;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).TYPE_UTILISATEUR := TRUE;
            cg$rec.ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ADRESSE;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ADRESSE := TRUE;
            cg$rec.CP := cg$AUTRE_UTILISATEUR.cg$table(idx).CP;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).CP := TRUE;
            cg$rec.EMAIL := cg$AUTRE_UTILISATEUR.cg$table(idx).EMAIL;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).EMAIL := TRUE;
            cg$rec.ENTREPRISE_ADRESSE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_ADRESSE;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_ADRESSE := TRUE;
            cg$rec.ENTREPRISE_CONTACT := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CONTACT;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_CONTACT := TRUE;
            cg$rec.ENTREPRISE_CP := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_CP;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_CP := TRUE;
            cg$rec.ENTREPRISE_NOM := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_NOM;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_NOM := TRUE;
            cg$rec.ENTREPRISE_PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_PAYS;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_PAYS := TRUE;
            cg$rec.ENTREPRISE_VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).ENTREPRISE_VILLE;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).ENTREPRISE_VILLE := TRUE;
            cg$rec.PAYS := cg$AUTRE_UTILISATEUR.cg$table(idx).PAYS;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).PAYS := TRUE;
            cg$rec.VILLE := cg$AUTRE_UTILISATEUR.cg$table(idx).VILLE;
            cg$AUTRE_UTILISATEUR.cg$tableind(idx).VILLE := TRUE;

            cg$AUTRE_UTILISATEUR.validate_foreign_keys_del(cg$rec);
            cg$AUTRE_UTILISATEUR.upd_oper_denorm2( cg$rec,
                                                cg$old_rec,
                                                cg$AUTRE_UTILISATEUR.cg$tableind(idx),
                                                'DEL'
                                              );
	
            cg$AUTRE_UTILISATEUR.cascade_delete(cg$rec);
            cg$AUTRE_UTILISATEUR.domain_cascade_delete(cg$rec);             

            idx := cg$AUTRE_UTILISATEUR.cg$table.NEXT(idx);
        END LOOP;
    END IF;

--  Application_logic Post-After-Delete-statement <<Start>>
--  Application_logic Post-After-Delete-statement << End >>

END;
/



