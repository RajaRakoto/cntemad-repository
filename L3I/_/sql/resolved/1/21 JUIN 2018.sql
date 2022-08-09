#Langage SQL 21 JUIN 2018

-- Ligne(Destination, Prix, Responsable)
-- Billet(Numero, Destination, Date_Billet, Nombre_Place)

#A. Requête "SQL":
	1
	UPDATE Ligne SET Prix = Prix + (Prix*10/100);
	WHERE Destination = 'Toliara';

	2
	ALTER TABLE Billet
	ADD CONSTRAINT fk_destination_ligne
	FOREIGN KEY(Destination) REFERENCES Ligne(Destination);

	3
	SELECT Destination, count(*) FROM Billet
	WHERE date_format(Date_Billet, '%m/%Y') = '05/2018'
	GROUP BY Destination;

	4
	SELECT sum(Prix * Nombre_Place)
	FROM Ligne NATURAL JOIN Billet
	WHERE Responsable = 'Randria';

	5
	SELECT Responsable FROM Ligne NATURAL JOIN Billet
	WHERE Nombre_Place =
		(SELECT max(Nombre_Place) FROM Billet);


#B. PL/SQL:
	1
	CREATE FUNCTION ff(n INT, s TEXT) RETURNS TEXT

	2
	DECLARE v_date Billet.Date_Billet%TYPE;
	DECLARE v_nb_place Billet.Nombre_Place%TYPE;
	DECLARE v_billet Billet%ROWTYPE;

	3
	SELECT Date_Billet INTO v_date FROM Billet
	WHERE Numero = 2501 AND Destination = 'Mahajanga';

	DECLARE v_nb INT DEFAULT year(v_date);
	
	DECLARE v_quinzaine TINYINT(1);
	IF day(v_date) <= 15
	THEN SET v_quinzaine = 1;
	ELSE SET v_quinzaine = 2;

	SELECT * INTO v_billet FROM Billet
	WHERE Numero = n AND Destination = s;

	DECLARE v_cumul INT;
	SELECT Nombre_Place INTO v_cumul FROM v_billet;