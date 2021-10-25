#Langage SQL 21 NOV 2019

-- Client(CodeCli, NomCli, Categorie, Localité)
-- Livraison(NumLiv, DateLiv, CodeCli, Responsable)
-- ProdLiv(NumLiv, CodProd, Libelle, PU, Qte)

#A.Requête SQL:
	1
	SELECT Localité, count(*) FROM Client
	GROUP BY Localité;

	2
	SELECT Responsable, sum(Qte)
	FROM Livraison NATURAL JOIN ProdLiv
	WHERE Libelle = 'ciment'
	GROUP BY Responsable;

	3
	SELECT Responsable, sum(PU*Qte)
	FROM Livraison NATURAL JOIN ProdLiv
	GROUP BY Responsable;

	4
	SELECT Responsable FROM Livraison
	NATURAL JOIN Client
	WHERE Localité /*NOT IN (
		SELECT Localité FROM Client
		WHERE Localité = 'Ivato');*/	-- Jamais
					!= 'Ivato';			-- Pas

	5
	SELECT * FROM Livraison
	WHERE NumLiv NOT IN (
		SELECT NumLiv FROM ProdLiv
		WHERE Libelle = 'fer 06');

#B.PL/SQL:
	1
	CREATE FUNCTION ListeProduit(p_numLiv INT)
	RETURNS TEXT AS
	BEGIN
		DECLARE v_libelle ProdLiv.Libelle%TYPE;
		DECLARE v_liste TEXT DEFAULT '';
		DECLARE v_i, v_n INT DEFAULT 0;

		DECLARE curs_libelle CURSOR FOR
			SELECT Libelle FROM ProdLiv
			WHERE NumLiv = p_numLiv;
		SET v_n = found_rows();

		OPEN curs_libelle;
		WHILE v_i < v_n DO
			BEGIN
				FETCH curs_libelle INTO v_libelle;
				SET v_liste =
					concat_ws(', ', v_liste, v_libelle);
			END;
		END WHILE;
		CLOSE curs_libelle;

		RETURN v_liste;
	END;