 -- NOTES:
 -- La commande CREATE OR REPLACE VIEW permet de creer une vue si elle n'existe pas encore OU de mettre a jour une vue existante
 -- La clause AS permet de creer un sous requete utilisE par un VIEW
 -- WITH READ ONLY sert a restreindre la modification d'une vue

 -- Creation d'une vue pour limiter l'acces a un champ
 -- [explication]: on creer une vue sur la table "employees" afin de limiter l'acces aux seules lignes dont le department a la valeur 100
 CREATE VIEW emp_view
 AS (SELECT emp_id, name, department, hire_date)
 FROM hr_database.employees
 WHERE department = 100);
 
 -- Creation d'une vue pour joindre deux tables
 -- [explication]: on creer une vue emp_reg_view pour joindre la table employees et la table region
 CREATE VIEW emp_reg_view
 AS (SELECT e.emp_name, e.emp_id, r.rname, r.objectid, r.region
 FROM employees e, region r
 WHERE e.emp_id = r.emp_id);
