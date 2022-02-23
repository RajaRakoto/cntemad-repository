#Langage SQL 13 JUIN 2017

-- Client(NumClt, NomClt, VilleClt)
-- Contact(NumCnt, NomCnt, NumClt)
-- Réservation(NumRes, NumCnt, Catégorie, DateRes, DateDep, NbRes)

#A. Requête "SQL":
	1
	CREATE TABLE Contact(
		NumCnt INT UNSIGNED PRIMARY KEY,
		NomCnt VARCHAR(50),
		NumClt INT UNSIGNED,

		CONSTRAINT fk_numclt_client FOREIGN KEY(NumClt)
		REFERENCES Client(NumClt)
		);

	2
	CREATE TABLE CategoriePossible
	(Catégorie CHAR(1) PRIMARY KEY);

	INSERT INTO CategoriePossible
	VALUES ('A'),('B'),('C');

	ALTER TABLE Réservation
	ADD CONSTRAINT fk_categoriePossible_categorie
	FOREIGN KEY(Catégorie)
	REFERENCES CategoriePossible(Catégorie);
	
	3
	UPDATE Client SET VilleClt = 'Antsiranana'
	WHERE VilleClt = 'Diego';

	4
	DELECT FROM Réservation
	WHERE DateDep = '2017/05/01';

	5
	SELECT NumClt, count(*) FROM Contact
	GROUP BY NumClt;

	6
	SELECT NomCnt FROM Contact LEFT JOIN 
	Réservation USING NumCnt WHERE Catégorie != 'C';


#B. PL/SQL:
	1
	CREATE FUNCTION ListeContact(n INT)
	RETURNS TEXT
	BEGIN
		DECLARE v_nomCnt, v_nomClt VCHAR(50);
		DECLARE v_liste TEXT DEFAULT '';
		DECLARE v_i, v_nombre_ligne INT DEFAULT 0;
		DECLARE curs_NomCnt CURSOR FOR
			SELECT NomCnt FROM Contact
			WHERE NumClt = n;

		SET v_nombre_ligne = found_rows();

		OPEN curs_NomCnt;
			WHILE v_i < v_nombre_ligne DO
				BEGIN
					FETCH curs_NomCnt INTO v_nomCnt;
					concat_ws(', ',v_liste,v_nomCnt);
					SET v_i = v_i + 1;
				END;
			END WHILE;
		CLOSE curs_NomCnt;

		SELECT NomClt INTO v_nomClt FROM Client
		WHERE NumClt = n;

		RETURN concat_ws(' ', 'Les contact du client',
			v_nomClt, 'sont', v_liste);
	END;

