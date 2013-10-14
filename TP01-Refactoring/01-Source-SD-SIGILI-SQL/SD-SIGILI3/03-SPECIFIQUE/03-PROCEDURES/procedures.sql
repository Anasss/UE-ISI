SPOOL procedure.lst

PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT~~~~~~~~~~~~~~~~~~~ Creation des developpements specifiques ~~~~~~~~~~~~~~~~~~~~~~~~~~;

PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PROCEDURES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@01-MOD\duplication.sql
@@01-MOD\suppression_modele_competence.sql
@@01-MOD\editer_mc.sql

@@02-SPC\creer_spc.sql
@@02-SPC\creer_spc_pos_cap.sql
@@02-SPC\creer_spc_pos_cpt.sql
@@02-SPC\creer_spc_pos_cptt.sql
@@02-SPC\creer_spc_pos_fc.sql
@@02-SPC\v_edition_spc.sql

@@03-RIC\creer_ric.sql
@@03-RIC\editer_ric.sql

@@04-STAT\ric_temp_impl_cap.sql
@@04-STAT\ric_temp_impl_cpt.sql
@@04-STAT\ric_temp_impl_cptt.sql
@@04-STAT\ric_temp_impl_fc.sql
@@04-STAT\ric02_temp_impl.sql
@@04-STAT\stat01_nbpositionnement_cap.sql
@@04-STAT\stat01_nbpositionnement_cpt.sql
@@04-STAT\stat01_nbpositionnement_cptt.sql
@@04-STAT\stat01_nbpositionnement_fc.sql


SPOOL OFF

COMMIT;