SPOOL 02-proc1_designer.lst


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan CPT  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@01-DDL\CSCI_CPT\csci_cpt.tab
@@01-DDL\CSCI_CPT\csci_cpt.vw
@@01-DDL\CSCI_CPT\csci_cpt.ind
@@01-DDL\CSCI_CPT\csci_cpt.con
@@01-DDL\CSCI_CPT\csci_cpt.sqs
@@01-DDL\CSCI_CPT\csci_cpt.avt


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Creation du pan CPT  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@01-DDL\CSCI_CPT\TABLES_TEMPORAIRES\csci_cpt_temp.tab
@@01-DDL\CSCI_CPT\TABLES_TEMPORAIRES\csci_cpt_temp.con
@@01-DDL\CSCI_CPT\TABLES_TEMPORAIRES\csci_cpt_temp.sqs
@@01-DDL\CSCI_CPT\TABLES_TEMPORAIRES\csci_cpt_temp.trg


PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
PROMPT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Patch du pan ADM  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

@@01-DDL\CSCI_ADM\csci_adm.sql

SPOOL OFF

COMMIT;