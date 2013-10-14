PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Insertion tables  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_ADM\csci_adm.tab
@@01-DDL\CSCI_CON\csci_con.tab
@@01-DDL\CSCI_RAP\csci_rap.tab
@@01-DDL\CSCI_SAC\csci_sac.tab
@@01-DDL\CSCI_STA\csci_sta.tab
@@01-DDL\GLOBAL\global.tab

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan ADM  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_ADM\csci_adm.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan CON  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_CON\csci_con.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan RAP  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_RAP\csci_rap.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan SAC  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_SAC\csci_sac.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan STA  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_STA\csci_sta.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation de SIGILI3g ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\GLOBAL\global.sql

PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Contraintes sur les Foreign Keys ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@01-DDL\CSCI_ADM\csci_adm_fk.con
@@01-DDL\CSCI_CON\csci_con_fk.con
@@01-DDL\CSCI_SAC\csci_sac_fk.con


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation des APIs de tables   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
@@02-API\CSCI_ADM\csci_adm.sql
@@02-API\CSCI_RAP\csci_rap.sql
@@02-API\CSCI_SAC\csci_sac.sql
@@02-API\CSCI_STA\csci_sta.sql

COMMIT;