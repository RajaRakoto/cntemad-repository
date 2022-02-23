#Langage SQL 21 SEP 2017

-- Employé (Matricule, NomAgent, Sexe, SalaireJournalier)
-- Pointage (NUmPointag, DatePointage, Matricule, NumSentier)

#A. Requête "SQL":
	1
	SELECT NomAgent FROM Employé
	JOIN Pointage USING Matricule
	WHERE NumSentier = 201703;

	2
	SELECT NomAgent FROM Employé
	WHERE SalaireJournalier =
		(SELECT max(SalaireJournalier) FROM Employé);

	3
	SELECT NumSentier, count(*)
	FROM Pointage
	GROUP BY NumSentier;

	4
	SELECT count(*) FROM Pointage
	WHERE date_format(DatePointage, '%M/%Y') = '08/2017'
	AND Matricule = (SELECT Matricule FROM Employé
					 WHERE NomAgent = 'Sitraka');

	5
	SELECT NomAgent FROM Employé
	NATURAL LEFT JOIN Pointage
	WHERE NumSentier != 201703;

#B. PL/SQL:
	1
	CREATE FUNCTION Mafonc(mt INT)
	RETURNS INT

	2
	DECLARE vpt Pointage%ROWTYPE;

	3
	SELECT * INTO vpt FROM Pointage
	WHERE Matricule = 17005;

	UPDATE vpt SET DatePointage = '2017/08/20';

	4
	DECLARE vns INT;
	SELECT NumSentier INTO vns
	FROM vpt;

	5
	DECLARE cpt INT DEFAULT 0;
	IF vns = 201701
	THEN SET cpt = cpt+1;
	END IF;