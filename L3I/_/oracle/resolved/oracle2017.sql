TABLE REGIONS (region_id, region_name);
TABLE COUNTRIES (country_id, country_name, region_id);
TABLE LOCATIONS (location_id, street_adress, postal_code, city, state_province, country_id);
TABLE DEPARTEMENTS (department_id, department_name, manager_id, location_id);
TABLE EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id);

P.S: Ces tables ne sont pas donnEs par le sujet
====================================================

1. Quelles sont les specificitEs d oracle par rapport aux autres SGBD #OK
----------
[OFUSC-BS]
- Offre une performance ameliorE pour le stockage des fichiers
- FonctionnalitE renforcE pour la securitE
- Utilisation des dico. des donnees possible
- SGBD professionnel plus rependue et plus complet en terme de fonctionnalitE
- Connaitre la commande de base SQLplus
- BasE sur le GRID computing: stockage economique, traitement de donnees rapide et fiable
- Supportant les env. plus exigeants
- Large capacitE de stockage grace au tablespace
- Plus souple lors de la creation d un PL/SQL
- Multiples methodes d authentification 
 
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

3. Signification de: #OK
----------
- Redo-log: fait partie des composants fichiers qui consiste a stocker l historique de modification des donnees et la structure de la BD
- PMON: Process Monitor - un thread qui se charge de nettoyer et recuperer les ressources associEs aux defaillances du processus
- Instance: une BD en action qui regroupe les composants fichier, composants programmes et l espace memoire
- Tablespace: une espace de stockage d une BD oracle qui assure son bon fonctionnement

====================================================

5. INDEX oracle: #OK
----------
Def -> c est une requete qui permet d accelerer l acces aux donnees d une table afin d eviter de parcourir sequentiellement du premier enregistrement jusqu au celui visE 
Syntax -> CREATE INDEX <index_name> ON <table_name>(<column>)

====================================================

6. Pour les requetes SQL suivantes, donner les RU correspondants: #OK
----------
-- RSQL: 
SELECT * FROM employees WHERE manager_id = 122 AND job_id = "ST_CLERCK";
-- RU: 
Lister respectivement les employees dont le numero manager est 122 avec un emploi "ST_CLERCK"

-- RSQL: 
SELECT employee_id, last_name, first_name, manager_id FROM employees ORDER BY manager_id DESC;
-- RU: 
Liste les numeros et noms des employees avec leurs numeros manager respectifs par ordre decroissant

-- RSQL: 
SELECT employee_id, last_name, first_name, department_id, department_name, manager_id FRFOM employees NATURAL JOIN departments;
-- RU: 
Liste les numeros et noms des employees avec leurs departements respectifs (numeros et noms) ainsi leurs numeros manager

-- RSQL: 
SELECT e.employee_id, e.last_name, e.first_name, e.manager_id, department_id, d.department_name, d.manager_id, location_id, l.country_id FROM employees e JOIN departments d USING (department_id) JOIN locations l USING (location_id);
-- RU: 
Liste les numeros et noms des employEs avec leurs numeros managers respectifs et leurs departements (numeros et noms). Mais de plus, la requete affiche les numeros des locaux ainsi que leurs pays

====================================================

7. Pour les RU suivantes, donner les RSQL correspondants: #OK
----------
-- RU1:
Liste les numeros et noms des employEs avec leurs managers respectifs (numeros et noms) et leurs departements (numeros et noms). 
-- RSQL1: #test
SELECT e.employee_id, e.first_name, e.last_name, e.phone_number, d.manager_id, d.department_id, d.department_name
FROM employees e INNER JOIN departments d ON e.department_id = d.department_id;

-- RU2:
Liste les numeros et noms des employEs avec leurs managers respectifs (numeros et noms) et leurs departements (numeros et noms). Mais de plus, la requete affiche les numeros des locaux ainsi que leurs pays
-- RSQL2: 
SELECT e.employee_id, e.first_name, e.last_name, e.phone_number, d.manager_id, d.department_id, d.department_name, l.location_id, l.city 
FROM employees e JOIN departments d USING (department_id) JOIN locations l USING (location_id);

-- RU3:
Liste les noms des employees par ordre alphabetiques
--RSQL3:
SELECT employee_id, first_name, last_name FROM employees 
ORDER BY employee_id ASC;

-- RU4:
Donne le salaire journalier a 2 chiffres pres de chaque employE
-- RSQL4: 
SELECT employee_id, CONCAT(last_name,'',first_name) AS full_name, ROUND(salary/30, 2) AS salary_daily FROM employees;




