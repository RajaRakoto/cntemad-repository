#Langage SQL 25 OCT 2018

-- Etudiant(Matricule, Nom, AnneeDeNaissance, SérieBac)
-- Inscrire(NumIns, Matricule, AnneeU, Niveau, Filiere)
-- Payement(NumPai, NumIns, DatePai, Montant)

#A. Requête "SQL":
	1
	SELECT Matricule, Nom FROM Etudiant
	NATURAL JOIN Inscrire NATURAL JOIN Payement
	WHERE Montant = 20000
	AND DatePai = '2018/01/15';
	
	2
	SELECT SérieBac, count(*) FROM Etudiant
	GROUP BY SérieBac;

	3
	SELECT sum(Montant) AS Total_payement
	FROM Payement NATURAL JOIN Inscrire
	WHERE Matricule = 15450
	AND AnneeU = 2017;

	4
	SELECT Matricule, Filiere, Niveau
	FROM Inscrire JOIN Payement
	WHERE Montant =
		(SELECT max(Montant) FROM Payement);

	5
	SELECT Matricule, Nom FROM Etudiant
	NATURAL LEFT JOIN Inscrire
	WHERE Matricule NOT IN
		(SELECT Matricule FROM Inscrire
		 WHERE Niveau = 'L1');


#B. PL/SQL:
	1
	CREATE FUNCTION a_double(p_matricule INT)
	RETURNS VARCHAR(30)
	BEGIN
		CREATE VIEW vue_redoublant AS
			SELECT Matricule, Filiere, Niveau, count(*) AS nb
			FROM Inscrire ORDER BY AnneeU
			GROUP BY Matricule, Filiere, Niveau
			HAVING nb > 1;

		IF p_matricule IN (SELECT Matricule FROM vue_redoublant)
		THEN RETURN 'Il a déjà redoublé';
		ELSE RETURN 'Il n''a pas redoublé';
		END IF;