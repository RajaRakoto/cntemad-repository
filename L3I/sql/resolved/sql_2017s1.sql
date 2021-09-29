#CREATION DE BD et TABLES (Client, Contact, Reservation)
#BD *
CREATE DATABASE sujet2017s1
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
#table client *
CREATE TABLE Client (
	NumClt int NOT NULL AUTO_INCREMENT, #pk
	NomClt varchar(50) NOT NULL,
	VilleClt varchar(60) NOT NULL,

	PRIMARY KEY (NumClt)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

#1) Creer la table Contact ayant NumCnt pour cle primaire et NumClt pour cle etrangere liee a Client
#table contact *
CREATE TABLE Contact (
	NumCnt int NOT NULL AUTO_INCREMENT, #pk
	NomCnt varchar(20) NOT NULL,
	NumClt int NOT NULL, #fk

	PRIMARY KEY (NumCnt),
	FOREIGN KEY (NumClt) REFERENCES Client(NumClt)  
)ENGINE=INNODB DEFAULT CHARSET=utf8;

#table reservation *
CREATE TABLE reservation (
	NumRes int NOT NULL AUTO_INCREMENT, #pk
	NumCnt int NOT NULL, #fk
	Categorie varchar(1) NOT NULL,
	DateRes date NOT NULL DEFAULT current_timestamp(),
	DateDep date NOT NULL DEFAULT current_timestamp(),
	NbRes int UNSIGNED NOT NULL,

	PRIMARY KEY (NumRes),
	FOREIGN KEY (NumCnt) REFERENCES Contact(NumCnt)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

#===================================================

#2) Ajoute la contrainte qui limite les valeurs possibles de categorie a "A", "B" ou "C" *
#Pour test: 
#-> INSERT INTO `Client`(`NumClt`, `NomClt`, `VilleClt`) VALUES (1,'Rakoto','Antananarivo')
#-> INSERT INTO `Contact`(`NumCnt`, `NomCnt`, `NumClt`) VALUES (1,'Contact Rakoto','1')
#-> INSERT INTO reservation (NumRes,NumCnt,Categorie,NbRes) VALUES (1,1,"D",7) //erreur

ALTER TABLE reservation 
	ADD CHECK (Categorie="A" OR Categorie="B" OR Categorie="C");

#===================================================

#DEP question 3
INSERT INTO Client (NumClt,NomClt,VilleClt) VALUES (2,"Rabe","Diego");
INSERT INTO Client (NumClt,NomClt,VilleClt) VALUES (3,"Rasoa","Diego");
INSERT INTO Client (NumClt,NomClt,VilleClt) VALUES (4,"Randria","Antananarivo");
INSERT INTO Client (NumClt,NomClt,VilleClt) VALUES (5,"Rason","Fianarantsoa");

#3) Remplace tous les noms de ville "Diego" par "Antsiranana" *

UPDATE Client SET VilleClt="Antsiranana" WHERE VilleClt="Diego";

#===================================================

#DEP question 4 *
INSERT INTO reservation (NumRes,NumCnt,Categorie,DateDep,NbRes) VALUES (2,1,"A",'2017-05-01',3);
INSERT INTO reservation (NumRes,NumCnt,Categorie,DateDep,NbRes) VALUES (3,1,"B",'2017-05-01',2);
INSERT INTO reservation (NumRes,NumCnt,Categorie,DateDep,NbRes) VALUES (4,1,"C",'2017-06-12',5);

#4) Supprime tous les reservations au depart du 01/05/17 *
DELETE FROM reservation 
	WHERE DateDep = '2017-05-01';

#===================================================

#DEP question 5 *
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (2,"0341564899",2);
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (3,"0321640010",2);
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (4,"0345041016",3);
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (5,"0336670224",4);
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (6,"0321180522",5);
INSERT INTO Contact (NumCnt,NomCnt,NumClt) VALUES (7,"0341050177",5);

#5) Affiche l'effectif des contacts par clients *
SELECT count(*) as EffectifContact FROM Contact GROUP BY NumClt;

#===================================================
#JOINTURE

#6) Affiche les noms des contacts qui n'ont pas fait de reservation pour la categorie C


#===================================================
#PLSQL

#7) Ecrire une fonction plsql nommee ListeContact(n), ou n est un numero de client, qui renvoie un texte qui cite les noms des contacts de ce client.

