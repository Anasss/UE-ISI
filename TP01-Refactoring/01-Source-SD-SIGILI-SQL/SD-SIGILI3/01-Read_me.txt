********************************* SIGILI R2 ************************************

Avant de lancer la proc�dure d'installation de SIGILI R2 :

	- Supprimer les r�pertoires FAS et RAP pr�sents sur ftp://172.18.3.111/



********************************* SIGILI 3g ************************************

La proc�dure d'installation se lance sous SQL Plus.
Il faut faire ( Fichier --> Ouvrir ), se placer dans le r�pertoire contenant la
proc�dure d'installation, s�lectionner l'une des proc�dure et faire "ouvrir".
Ceci ne fonctionnera pas, il suffira alors de lancer les commandes suivantes :

	--> @@02-PROC1_DESIGNER.sql 
	--> @@03-PROC2_API.sql 
	--> @@04-PROC3_SPECIFIQUE.sql 
	--> @@05-PROC4_INSERT.sql 

Les fichiers de log se cr�eront automatiquement dans le r�pertoire.


[!!!] Pour un fonctionnement optimal d'e-Comp@s il est n�cessaire de donner
une authorisation sp�ciale au responsable de formation.
Il suffira, une fois l'installation finie de lancer la commande suivante sous SQL Plus,
en rempla�ant le mot 'user' par le login du responsable de formation :

	--> UPDATE "AUTHENTIFICATION" SET TYPE_AUTHENTIFICATION = 'RF' WHERE LOGIN='responsable';


La proc�dure d'installation du prototype VAE se lance de la m�me fa�on par le script :
	--> @@06-PROC5_VAE.sql


Le fichier "07-Purge_tables_temp.sql" permet de vider les tables temporaires
Il se lance de la m�me mani�re que le reste.


*********************************************************************************
*********************************************************************************


Si la cr�ation d'�tudiant pose probl�me

	--> V�rifier que le trigger STA_BIR a bien �t� install�

	--> Si ce n'est pas le cas, il suffit de le r�installer � partir de
		...\03-DELTAS\CSCI_STA\STA_BIR.sql

		--------------------------------------------

Si le cadre r�f�rent 'CR001' n'existe pas, d�-commenter la ligne suivante dans le fichier
05-PROC4_INSERT.sql

	" --@@04-INSERT\SIGILI_R2\CADRE_REFERENT.sql "