SPOOL 04-proc3_specifique.lst


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation des API spécifiques ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@03-SPECIFIQUE\01-DELTAS\POS.PKS
@@03-SPECIFIQUE\01-DELTAS\POS.PKB
@@03-SPECIFIQUE\01-DELTAS\POS.TRG
@@03-SPECIFIQUE\01-DELTAS\RPOS.PKS
@@03-SPECIFIQUE\01-DELTAS\RPOS.PKB
@@03-SPECIFIQUE\01-DELTAS\RPOS.TRG


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation des fonctions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@03-SPECIFIQUE\02-FONCTIONS\get_authorisationcreerric.sql


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation des procedures ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@03-SPECIFIQUE\03-PROCEDURES\01-MOD\duplication.sql
@@03-SPECIFIQUE\03-PROCEDURES\01-MOD\editer_mc.sql
@@03-SPECIFIQUE\03-PROCEDURES\01-MOD\suppression_modele_competence.sql
@@03-SPECIFIQUE\03-PROCEDURES\01-MOD\maj_mc.sql
@@03-SPECIFIQUE\03-PROCEDURES\01-MOD\import_mc.sql

@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\creer_spc_pos_cap.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\creer_spc_pos_cpt.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\creer_spc_pos_cptt.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\creer_spc_pos_fc.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\creer_spc.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\edition_spc.sql
@@03-SPECIFIQUE\03-PROCEDURES\02-SPC\suppression_spc.sql

@@03-SPECIFIQUE\03-PROCEDURES\03-RIC\creer_ric.sql
@@03-SPECIFIQUE\03-PROCEDURES\03-RIC\editer_ric.sql

@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\ric02_temp_impl.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\ric_temp_impl_cap.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\ric_temp_impl_cpt.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\ric_temp_impl_cptt.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\ric_temp_impl_fc.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\stat01_nbpositionnement_cap.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\stat01_nbpositionnement_cpt.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\stat01_nbpositionnement_cptt.sql
@@03-SPECIFIQUE\03-PROCEDURES\04-STAT\stat01_nbpositionnement_fc.sql


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation des triggers   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BIR_MC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BUR_MC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BIR_DC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BIR_FC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BUR_DC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BUR_FC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BDR_FC.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BDR_CAP.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BDR_CPT.sql
@@03-SPECIFIQUE\04-TRIGGERS\01-MOD\BDR_CPTT.sql

@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\air_capacite.sql
@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\air_competence.sql
@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\air_competence_transversale.sql
@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\air_famille_competence.sql
@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\air_positionnement.sql
@@03-SPECIFIQUE\04-TRIGGERS\02-SPC\bur_journal_suivi_personnel.sql


SPOOL OFF

COMMIT;