#creation de la base de donnee *
CREATE DATABASE sujet2019s1 
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

#1) Citer l'ordre dans lequel ces tables doivent etre crees *
1 => Client 
2 => TypeCompte
3 => Compte (dep = Client and TypeCompte)
4 => Operation (dep = Compte)

#Les instructions SQL pour:

#===============================================

#DEP question 2 * - creation de la table Client
CREATE TABLE Client (
	IdCli int(11) NOT NULL AUTO_INCREMENT, #pk
	NomCli varchar(50) NOT NULL,
	TypeCli text(12) NOT NULL,
	VilleCli varchar(50) NOT NULL,

	PRIMARY KEY (IdCli)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE TypeCompte (
	IdType int(11) AUTO_INCREMENT, #pk
	FraisCompte int(11) NOT NULL,
	TauxInteret FLOAT(255,3) NOT NULL,

	PRIMARY KEY (IdType)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

#2) Creer de la table Compte *
CREATE TABLE Compte (
	NumCompte int(11) NOT NULL AUTO_INCREMENT, #pk
	DateOuverture date NOT NULL,
	Depot int(11) NOT NULL,
	IdType int NOT NULL, #fk
	IdCli int NOT NULL, #fk

	PRIMARY KEY (NumCompte),
	FOREIGN KEY (IdType) REFERENCES TypeCompte(IdType),
	FOREIGN KEY (IdCli) REFERENCES Client(IdCli)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Operation 
	MODIFY OpType int(1)

#===============================================

#DEP question 3 * - creation de la table Operation
CREATE TABLE Operation (
	NumOp int NOT NULL AUTO_INCREMENT, #pk
	DateOp date NOT NULL DEFAULT current_timestamp(),
	NumCompte int NOT NULL,
	TypeOp int NOT NULL,
	Montant int NOT NULL,

	PRIMARY KEY (NumOp)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

#3) Modifier le type de TypeOp en entier dont les seuls valeurs possibles sont 1 et 2
#La CHECK contrainte est utilisée pour limiter la plage de valeurs pouvant être placée dans une colonne.
#info_link: https://www.w3schools.com/sql/sql_check.asp

ALTER TABLE Operation 
	ADD CHECK (TypeOp=1 OR TypeOp=2);

#TEST CONTRAINTS *
INSERT INTO Operation (NumCompte,TypeOp,Montant
) VALUES (1,3,10000) #requette refuser

#===============================================

#DEP question 4 * - creation de type de compte d'un client
INSERT INTO TypeCompte (IdType,FraisCompte,TauxInteret) VALUES (2,5000,20)

#4) Doubler le taux d'interet de TypeCompte 2 *
UPDATE TypeCompte
	SET TauxInteret = TauxInteret * 2
	WHERE IdType = 2;

#===============================================

#DEP question 5 * enregistrement d'un client
#IdType = 2 (dep Fk) => question 4
#IdCli = 3 (dep Fk) => INSERT INTO Client (idCli,NomCli,TypeCli,VilleCli) VALUES (3,"Rakoto","V.I.P","Antananarivo")
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (5,2,3,0); 

#5) Supprimer les comptes dont le premier depot et 0 *
DELETE FROM Compte WHERE Depot=0;

#===============================================

#DEP question 6 - enregistrement de 2 clients (pour test)
#CLient Rakoto
INSERT INTO Client (idCli,NomCli,TypeCli,VilleCli) VALUES (1,"Rakoto","V.I.P","Antananarivo"); #possede 3 comptes
INSERT INTO TypeCompte (IdType,FraisCompte,TauxInteret) VALUES (3,2000,30); 
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (5,3,1,10000);
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (6,3,1,5000);
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (7,3,1,3500);
#Client Rasoa
INSERT INTO Client (idCli,NomCli,TypeCli,VilleCli) VALUES (2,"Rasoa","Simple","Antananarivo"); #possede 2 comptes
INSERT INTO TypeCompte (IdType,FraisCompte,TauxInteret) VALUES (4,1000,15); 
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (8,4,2,3500);
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (9,4,2,2000);

#6) Le nombre de compte par client
#other syntax: SELECT COUNT(*) NumCompte as Total FROM Compte;
SELECT COUNT(*) NumCompte FROM Compte GROUP BY IdCli;

#===============================================

#DEP question 7 - creation operation type 1 (*3) type 2 (*2) [total=10000] *
#RattachE a Rakoto (id = 1)
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (1,5,1,5000);
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (2,6,2,5000);
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (3,7,2,5000);

#RattachE a Rasoa (id = 2)
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (4,8,1,2000);
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (5,9,1,3000);

#7) Le montant total des depots par compte sachant qu'un depot est une operation de type 1 *
SELECT SUM(Montant)
	FROM Operation
	WHERE TypeOp=1;

#===============================================

#DEP question 7 - creation compte 1021 *
#RattachE a Rabe (id = 3)
INSERT INTO Client (idCli,NomCli,TypeCli,VilleCli) VALUES (3,"Rabe","Simple","Antsirabe");
INSERT INTO Compte (NumCompte,IdType,IdCli,Depot) VALUES (1021,4,3,20000);
INSERT INTO Operation (NumOp,NumCompte,TypeOp,Montant) VALUES (6,1021,2,15000);
#Pour test => UPDATE Operation SET `DateOp` = '2020-08-30' WHERE Numcompte = 1021;


#8) La date de la derniere operation sur le compte 1021 *
SELECT DateOp FROM Operation WHERE NumCompte=1021;

#===============================================

#9) La liste des numeros de compte qui n'ont pas ete touchE durant l'annee 2018
SELECT NumCompte FROM Compte WHERE DateOp in (
	SELECT DateOp FROM Operation WHERE DateOp='2018'
);


#===============================================

#10) Le nom du client qui a fait le plus grand depot a l'ouverture du compte
SELECT NomCli FROM Client WHERE Depot in (
	SELECT Depot FROM Compte WHERE Depot=20000
);