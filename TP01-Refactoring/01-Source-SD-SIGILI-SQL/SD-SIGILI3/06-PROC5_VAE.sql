SPOOL 06-proc5_vae.lst


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Modification du CSCI_ADM  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@05-VAE\01-DDL\csci_adm.sql


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Modification du CSCI_ADM  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@05-VAE\01-DDL\csci_cpt.sql

PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Lancement des API ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@05-VAE\02-API\csci_adm.sql
@@05-VAE\02-API\csci_cpt.sql

PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Lancement des Deltas ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@05-VAE\03-DELTAS\AUT.PKS
@@05-VAE\03-DELTAS\AUT.PKB
@@05-VAE\03-DELTAS\AUT.TRG


PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Lancement des Procedures ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@05-VAE\04-PROCEDURES\creer_spc_vae.sql


SPOOL OFF

COMMIT;