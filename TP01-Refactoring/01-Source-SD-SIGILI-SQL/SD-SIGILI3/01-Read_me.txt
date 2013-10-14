********************************* SIGILI R2 ************************************

Avant de lancer la procédure d'installation de SIGILI R2 :

	- Supprimer les répertoires FAS et RAP présents sur ftp://172.18.3.111/



********************************* SIGILI 3g ************************************

La procédure d'installation se lance sous SQL Plus.
Il faut faire ( Fichier --> Ouvrir ), se placer dans le répertoire contenant la
procédure d'installation, sélectionner l'une des procédure et faire "ouvrir".
Ceci ne fonctionnera pas, il suffira alors de lancer les commandes suivantes :

	--> @@02-PROC1_DESIGNER.sql 
	--> @@03-PROC2_API.sql 
	--> @@04-PROC3_SPECIFIQUE.sql 
	--> @@05-PROC4_INSERT.sql 

Les fichiers de log se créeront automatiquement dans le répertoire.


[!!!] Pour un fonctionnement optimal d'e-Comp@s il est nécessaire de donner
une authorisation spéciale au responsable de formation.
Il suffira, une fois l'installation finie de lancer la commande suivante sous SQL Plus,
en remplaçant le mot 'user' par le login du responsable de formation :

	--> UPDATE "AUTHENTIFICATION" SET TYPE_AUTHENTIFICATION = 'RF' WHERE LOGIN='responsable';


La procédure d'installation du prototype VAE se lance de la même façon par le script :
	--> @@06-PROC5_VAE.sql


Le fichier "07-Purge_tables_temp.sql" permet de vider les tables temporaires
Il se lance de la même manière que le reste.


*********************************************************************************
*********************************************************************************


Si la création d'étudiant pose problème

	--> Vérifier que le trigger STA_BIR a bien été installé

	--> Si ce n'est pas le cas, il suffit de le réinstaller à partir de
		...\03-DELTAS\CSCI_STA\STA_BIR.sql

		--------------------------------------------

Si le cadre référent 'CR001' n'existe pas, dé-commenter la ligne suivante dans le fichier
05-PROC4_INSERT.sql

	" --@@04-INSERT\SIGILI_R2\CADRE_REFERENT.sql "