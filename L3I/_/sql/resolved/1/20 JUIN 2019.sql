#Langage SQL 12 JUILLET 2016

-- Client(IdCli, NomCli, TypeCli, VilleCli)
-- Compte(NumCompte, IdType, IdCli, DateOuverture, Depot)
-- TypeCompte(IdType, FraisCompte, TauxInteret)
-- Operation(NumOp, DateOp, NumCompte, TypeOp, Montant)

#Requête "SQL":
	1
	Client, TypeCompte, Compte et Operation.

	2
	CREATE TABLE Compte(
		NumCompte INT PRIMARY KEY,
		IdType INT, IdCli INT,
		DateOuverture DATE, Depot INT,

		CONSTRAINT fk_idType_TypeCompte
		FOREIGN KEY(IdType) REFERENCES TypeCompte(IdType),
		CONSTRAINT fk_idCli_Client
		FOREIGN KEY(IdCli) REFERENCES Client(IdCli)
		);

	3
	CREATE TABLE TypeOperationPossible(
		TypeOp INT PRIMARY KEY);
	INSERT INTO TypeOperationPossible
	VALUES (1),(2);

	ALTER TABLE Operation
	MODIFY TypeOp TINYINT(1);

	ALTER TABLE Operation
	ADD CONSTRAINT fk_typeOperationPossible
	FOREIGN KEY(TypeOp) REFERENCES TypeOperationPossible(TypeOp);

	4
	UPDATE TypeCompte SET TauxInteret = TauxInteret * 2
	WHERE IdType = 2;

	5
	DELETE FROM Compte WHERE Depot = 0;

	6
	SELECT IdCli, count(*) FROM Compte
	GROUP BY IdCli;

	7
	SELECT NumCompte, sum(Montant)
	FROM Operation WHERE TypeOp = 1
	GROUP BY NumCompte;

	8
	SELECT max(DateOp) AS Derniere_Operation
	FROM Operation WHERE NumCompte = 1021;

	9
	SELECT NumCompte FROM Compte
	WHERE NumCompte NOT IN (
		SELECT NumCompte FROM Operation
		WHERE year(DateOp) = 2018);

	10
	SELECT NomCli FROM Client NATURAL JOIN Compte
	WHERE Depot = (SELECT max(Depot) FROM Compte);