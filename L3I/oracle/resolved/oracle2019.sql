TABLE JOBS (job_id), job_title, min_salary, max_salary);
TABLE EMPLOYEES (employee_id, first_name, last_name, email, phone_number);
TABLE JOB_HISTORY(employee_id, start_date, end_date, job_id, departement_id);

====================================================

1.Specs d oracle par rapport aux autres SGBDR (OFUSCBR) #OK
----------
- Offre une performance ameliorE au stockage de donnees
- FonctionnalitE renforcE pour la securitE
- Utilisation des dico de donnees possible
- SGBD professionnel, plus rependue et plus complet
- Connaitre la cmd de base SQLplus
- BasE sur le GRID computing: stockage economique, traitement plus rapide et fiable
- Supporttant les env plus exigeants

====================================================

2. Les relations semantique entre les tables EMPLOYEES et JOBS #OK
--------- 
-- [[schema MCD]]
-- Un employee peut effectuer q'un et un seul job -> card max = 1
Un job est effectuE par un et plusieurs employee(s) -> card max = N
Du point de vue cardinalitE, jobs contient une cardinalite max de N et employees contient une cardinalite max de 1, puisque la cle primaire de jobs "job_id" se duplique dans la table employees. Autrement dit, la table employees contient une cle etrangere de jobs qui est "job_id". Jobs et employees sont donc une relation de type pere/fils

====================================================

3. RSQL: SELECT * FROM jobs, donner la RU et EAR #OK
--------- 
-- RU: 
liste respectivement les emploies (* -> respectivement)
-- EAR: 
projection(jobs, *)

====================================================

4. RU: liste des employEs avec leurs emplois respectifs, donner sa RSQL #OK
--------- 
-- RSQL: 
SELECT e.employee_id, e.first_name, e.last_name, j.job_id, j.job_title FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id;
-- EAR: 
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
result = projection(r1; e.employee_id, e.first_name, e.last_name, j.job_id, j.job_title)

====================================================

5. Modifier la requete de la question 3 pour avoir: l emploi de 'King' #OK
--------- 
-- RSQL: 
SELECT e.first_name, j.job_id, j.job_title FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id WHERE (e.first_name = "King");
-- EAR: 
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
r2 = restriction(r1; e.first_name = "King")
result = projection(r2; e.first_name, j.job_id, j.job_title)

====================================================

6. RSQL pour avoir les emploies respectifs de King et Lorentz #OK
--------- 
-- RSQL: 
SELECT e.employee_id, e.first_name, j.job_id, j.job_title FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id WHERE (e.first_name = "King" AND e.first_name = "Lorentz");
-- EAR:
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
r2 = restriction(r1; e.first_name = "King")
r3 = restriction(r1; e.first_name = "Lorentz")
r4 = intersection(r2, r3)
result = projection(r4; e.employee_id, e.first_name, j.job_id, j.job_title)

====================================================

7. Peut-on avoir la liste des employEs avec leurs emplois respectifs avec la table employees seule, OUI ou NON et pourquoi ? #OK
--------- 
NON, car l attribut job_title se trouve dans la table jobs mais pas dans la table employees seule, il nous faut donc une jointure entre ces 2 tables pour effectuer ce type de requette

====================================================

8. Quel resultat pour la RSQL: select * from employees, jobs where (employees.job_id = jobs.job_id) et donner l EAR #OK
--------- 
-- RU: 
Liste des employees avec leurs emails et numeros telephones associEs. Ainsi leurs emplois respectifs et leurs marges de salaire 
-- EAR: 
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
result = projection(r1; *)

====================================================

9. Dans quel cas on devrait utiliser une jointure interne et une jointure externe #OK
---------
-- CAS JOINTURE INTERNE (inner join)
On utilise une jointure interne lorsqu on a besoin de selectionner les lignes des 2 tables a joindre dont il y a des informations identique c est a dire retourner les donnees quand la condition apres la clause 'ON' est vraie dans les 2 tables concernées
-- CAS JOINTURE EXTERNE (left/right/full join)
On utilise une jointure externe pour trouver les enregistrements d une table qui ne sont pas référencés par une cle etrangere. Autrement dit, retourner tous les enregistrements des deux tables même s il n y a pas de correspondance avec l autre. 

====================================================

10. Exemple de jointure interne entre les tables employees et jobs en donnant RU, EAR et RSQL #OK
--------- 
-- RU: 
Liste du salaire maximum d un informaticien dont le nom commence par "A"
-- RSQL:
SELECT j.max_salary FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id WHERE (j.job_title = "informatique" AND e.last_name LIKE "A%");
-- EAR:
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
r2 = restriction(r1; j.job_title = "informatique")
r3 = restriction(r1; e.last_name = "A%")
r4 = intersection(r2, r3)
result = project(r4; j.max_salary)

====================================================

11. Exemple de jointure externe entre les tables employees et jobs en donnant RU, EAR et RSQL #OK
--------- 
-- RU: 
Liste les noms et prenoms des employees en marketing possedant un salaire entre 3000 et 5000 euro 
-- RSQL: 
SELECT e.employee_id, e.first_name, e.last_name FROM employees e RIGHT JOIN jobs j ON e.job_id = j.job_id WHERE (j.job_title = "Marketing" AND e.salary BETWEEN 3000 AND 5000) 
-- EAR: 
r1 = join(e=employees, j=jobs; e.job_id=j.job_id)
r2 = restriction(r1; j.job_title = "Marketing")
r3 = restriction(r1; e.salary >= 3000)
r4 = restriction(r1; e.salary <= 5000)
r5 = intersection(r3, r4)
r6 = intersection(r2, r5)
result = projection(r6; e.employee_id, e.first_name, e.last_name)



