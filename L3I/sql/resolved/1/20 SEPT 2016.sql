#Langage SQL 20 SEPT 2016

-- Compte(NumCpt, NomTitutaire)
-- Operation(NumOp, TypeOp, NumCpt, Montant, Auteur)

#A. Requête SQL:
	1
	CREATE TABLE TypeOpPossible(
		TypeOp TINYINT(1) PRIMARY KEY );

	INSERT INTO TypeOpPossible VALUES (1),(2);

	ALTER TABLE Operation ADD CONSTRAINT fk_TypeOpPossible
	FOREIGN KEY(TypeOp) REFERENCES TypeOpPossible(TypeOp);

	2
	ALTER TABLE Operation
	DROP COLUMN Auteur;

	3
	SELECT * FROM Operation
	WHERE TypeOp = 1 AND
	NumCpt = (SELECT NumCpt FROM Compte
		WHERE NomTitutaire = 'Rangory');

	4
	SELECT NomTitutaire, avg(Montant) FROM Operation
	NATURAL JOIN Compte WHERE TypeOp = 2
	GROUP BY NomTitutaire;

	5
	SELECT * FROM Compte WHERE NumCpt NOT IN
		(SELECT NumCpt FROM Operation WHERE TypeOp = 2);


#B. PL/SQL:
	1
	CREATE FUNCTION Genre(p_nom VARCHAR(50))
	RETURNS CHAR(8) AS
	BEGIN
		IF Substr(p_nom,1,7) = 'madame'
			THEN RETURN 'Feminin';
		ELSEIF Substr(p_nom,1,8) = 'monsieur'
			THEN RETURN 'Masculin';
		ELSE
			RETURN 'Erreur';
		END IF;
	END;

	2
	SELECT *, Genre(NomTitutaire) AS Genre FROM Compte;