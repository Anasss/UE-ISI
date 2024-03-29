create or replace TRIGGER AIR_AUR_EVAE AFTER INSERT OR UPDATE ON EVALUATION_ENTREPRISE
FOR EACH ROW
DECLARE
  CODE_NOTATION NUMBER;
  NO_ETUDIANT VARCHAR(50);
  CURSOR LISTE_CRITERES IS SELECT crite_id FROM CRITERE_ENTREPRISE,STRUCTURE_EVALUATION WHERE STRUCTURE_EVALUATION.no_evaluation = CRITERE_ENTREPRISE.no_evaluation AND STRUCTURE_EVALUATION.etat = 'APP';
  CODE_CRITERE LISTE_CRITERES%ROWTYPE;
BEGIN
  IF (:old.etat != :new.etat) THEN
    SELECT codn_id INTO CODE_NOTATION FROM CODE_NOTATION WHERE code_note = '-';
    SELECT COUNT(no_etudiant_nat) INTO NO_ETUDIANT FROM NOTE_ENTREPRISE WHERE no_etudiant_nat = :old.no_etudiant_nat;
    IF (NO_ETUDIANT = 0 AND :new.etat = 'EC') THEN
      OPEN LISTE_CRITERES;
      LOOP
        FETCH LISTE_CRITERES INTO CODE_CRITERE;
        EXIT WHEN LISTE_CRITERES%NOTFOUND;
        INSERT INTO NOTE_ENTREPRISE (no_etudiant_nat,annee_pro,crite_id,codn_id) VALUES (:old.no_etudiant_nat,:old.annee_pro,CODE_CRITERE.crite_id,CODE_NOTATION);
      END LOOP;
      CLOSE LISTE_CRITERES;
    END IF;
  END IF;
END;
/
