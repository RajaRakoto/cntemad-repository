TABLE REGIONS (region_id, region_name);
TABLE COUNTRIES (country_id, country_name, region_id);
TABLE LOCATIONS (location_id, street_adress, postal_code, city, state_province, country_id);
TABLE DEPARTEMENTS (department_id, department_name, manager_id, location_id);
TABLE EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id);

====================================================

1. Quelles sont les principales fonctions d administration sur oracle #OK
----------
[GGGUSOD]
- Gestion des utilisateurs
- Gestion de la securitE (privilege et audite)
- Gestion des ressources
- Utilitaires import et export
- Sauvegarde et restauration des donnees
- Oracle net: configuration reseau
- Demarrage et arret de la base de donnees oracle

====================================================

2. Quelles sont les composants d une base oracle ? Expliquer brievement chaque composant #OK
----------
-- Composants fichiers: contiennent les informations necessaires au fonctionnement d une BD tel que:
	- fichier de donnees: contient les tables, les indexes, les procedures, fonctions et les dictionnaires de donnees
	- fichier redo-log: constituE de l historique de modification et la structure de la BD
	- fichier de control: determine l etat de la BD lors du demarrage, l arret et au cours du fonctionnemnt
	- fichier admin: sert a l administration courant de la BD oracle
-- Composants programmes: contiennent les fichiers executables qui assurent le fonctionnement de la base de donnees et realisent les actions des composants fichiers
-- Composants memoires: assurent la performance de la base oracle et le stockage des fichiers

====================================================

3. Donner la syntaxe generale d une instrucion SELECT sur oracle #OK
----------
SELECT [*] [<column>, ...] [<table_name>.<column>, ...]
FROM <table_name>
[WHERE <condition>]
[ORDER BY <expression> [ASC/DSC]]
[GROUP BY <expression> HAVING <condition>]

====================================================

4. Comment fait-on pour valider une transaction sur oracle ou dans le cas contraire l annuler ? Illustrer chaque cas a l aide d un example simple avec les tables de la base de donnees HR #OK
----------
-- VALIDATION (principe)
L instruction "COMMIT" permet de valider toutes les operations effectuEs et permet egalement d officialiser une mise a jour (INSERT, SELECT, UPDATE, DELETE, ...)
-- VALIDATION (exemple)
START TRANSACTION
UPDATE employees SET salary=2000 WHERE (first_name = "Rakoto");
COMMIT;
-- ANNULATION (principe)
L instruction "ROLLBACK [TO <savepoint>]" permet d annuler un commit a partir d un point de sauvegarde
-- ANNULATION (exemple)
START TRANSACTION
UPDATE jobs SET max_salary=10000 WHERE (job_title = "Informatique");
COMMIT;
ROLLBACK;

====================================================

5. Quels sont les differents types de requetes disponibles sur oracle ? pour chaque type donner les mots cles #OK
----------
- SELECT: selection des donnees
- INSERT: insertion des donnees
- UPDATE: mise a jour des donnees existantes
- DELETE: suppression des donnees
- CREATE: creation d une BD, table, index ou des vues
- JOIN: jointure entre plusieurs sources

====================================================

6. Pour les requetes SQL suivantes, donner les RU correspondants: #OK
----------
-- RSQL: 
SELECT * FROM employees
-- RU: 
Lister respectivement les employees 

-- RSQL:
SELECT employee_id, last_name FROM employees ORDER BY employee_id ASC;
-- RU:
Lister le nom des employees par ordre alphabetique

-- RSQL:
SELECT * FROM employees NATURAL JOIN departments;
-- RU:
Lister respectivement les employees et les noms du departements associEs

-- RSQL:
SELECT e.employee_id, e.last_name, e.first_name, e.manager_id, department_id, d.department_name, d.manager_id, location_id, l.country_id FROM employees e JOIN departments d USING (department_id) JOIN locations l USING (location_id);
-- RU:
Lister les noms et prenoms des employees avec leurs numeros managers respectifs et les numeros avec noms du departement associEs. Ainsi leurs numeros locaux avec pays

====================================================

7. Pour les RU suivantes, donner les RSQL correspondants: #OK
----------
-- RU1:
Lister les departements avec leurs regions respectives
-- RSQL1:
SELECT department_id, d.department_name, region_id, r.region_name FROM departments d USING (department_id) JOIN regions r USING (region_id)

-- RU2:
Lister les numeros et noms des employes avec leurs departements respectifs
-- RSQL2: 
SELECT e.employee_id, e.first_name, e.last_name, e.phone_number, d.department_id, d.department_name FROM employees e INNER JOIN departments d ON e.department_id = d.department_id

-- RU3:
Lister les noms des regions par ordre alphabetiques
--RSQL3:
SELECT region_id, region_name FROM regions ORDER BY region_name ASC

-- RU4:
Donner les localitEs ou se trouvent les departements
-- RSQL4:
SELECT * FROM departments d INNER JOIN locations l ON d.location_id = l.location_id
