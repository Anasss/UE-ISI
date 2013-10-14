-- Certaines sequences doivent etre incrementees
-- Pour cela, il est necessaire de supprimer la sequence puis de la recreer

PROMPT~~~~~~~~~~~~~~~~~~~~~~~ modification des séquences ~~~~~~~~~~~~~~~~~~~~~
PROMPT~~~~~~~~~~~~~~~~~~~~~~~~~~~ séquences SEQ_JSP ~~~~~~~~~~~~~~~~~~~~~~~~~~

DROP sequence SEQ_JSP;
CREATE SEQUENCE SEQ_JSP MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 6;

