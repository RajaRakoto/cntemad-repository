#Langage SQL 12 JUILLET 2016

-- Membre(IdMembre, NomMembre, Sexe, Age)
-- Formation(IdFormation, Designation, Duree, FraisDeParticipation)
-- Participation(NumParticipation, IdMembre, IdFormation)

#A. Requête "SQL":
	1
	CREATE TABLE Participation(
		NumParticipation INT PRIMARY KEY,
		IdMembre INT, IdFormation INT,
		CONSTRAINT fk_idMembre_membre
		FOREIGN KEY(IdMembre) REFERENCES Membre(IdMembre),
		CONSTRAINT fk_idFormation_formation
		FOREIGN KEY(IdFormation) REFERENCES Formation(IdFormation)
		)

	2
	UPDATE Formation SET FraisDeParticipation =
		FraisDeParticipation + (FraisDeParticipation*20/100)
	WHERE Duree > 5;

	3
	SELECT IdFormation, count(*) FROM Participation
	GROUP BY IdFormation;

	4
	SELECT IdMembre, NomMembre FROM Membre
	WHERE IdMembre NOT IN
		(SELECT IdMembre FROM Participation);

	5
	SELECT NomMembre FROM Membre
	NATURAL JOIN Participation NATURAL JOIN Formation
	WHERE Duree = (SELECT max(Duree) FROM Formation);


#B. PL/SQL:
	1
	DECLARE v_part Formation.FraisDeParticipation%TYPE;

	2
	DECLARE v_form Formation%ROWTYPE;

	3
	SELECT FraisDeParticipation INTO v_part
	FROM Formation WHERE IdFormation = 5;

	4
	DECLARE curs_formation CURSOR FOR
		SELECT * FROM Formation;

	OPEN curs_formation;
		FETCH curs_formation INTO v_form;
	CLOSE curs_formation;

	5
	DECLARE varDuree Formation.Duree%TYPE;
	OPEN curs_formation;
		FETCH curs_formation INTO v_form;
		SELECT Duree INTO varDuree FROM v_form;
	CLOSE curs_formation;