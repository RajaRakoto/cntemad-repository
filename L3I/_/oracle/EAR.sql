#PROJECTION (selection)

----[syntax]----
project(table; colonne; calcul)

----[exemple]----
-- RU: 
liste des cours (titre; nombre)
-- RSQL: 
SELECT titre, COUNT(*) AS nbr_cours FROM cours
-- EAR: 
project(cours; titre; COUNT(*)nbr_cours)

====================================================

#RESTRICTION (condition)

----[principe]----
une restriction permet de creer une condition, elle doit etre accompagnE au moins par une projection pour effectuer une selection

----[syntax]----
restrict(table; condition; calcul; expression)

----[exemple1]----
-- RU: 
liste des cours par titre pour l an 2012
-- RSQL: 
SELECT titre FROM cours WHERE (annee=2012)
-- EAR: 
r1 = restrict(cours; annee=2012) 
result = project(r1; titre)

----[exemple2]----
-- RU: 
liste des cours (titres) dans les annees 2011 ou 2012 de categorie 'I' dont le titre commence par 'M'
-- RSQL:
SELECT titre FROM cours WHERE (titre LIKE 'M%' AND annee=2011 OR annee=2012 AND categorie='I')
-- EAR:
r1 = restrict(cours; annee=2011)
r2 = restrict(cours; annee=2012)
r3 = restrict(cours; categorie='I')
r4 = union(r1; r2)
r5 = intersect(r4; r3) //r1 ou r2 et r3
r6 = restrict(cours; titre='M%')
r7 = intersect(r5; r6) //r1 ou r2 et r3 et r6
result = project(r7; titre)

====================================================

#JOINTURE (fusion)

----[syntax]----
join(tables; condition)

----[exemple]----
-- On possede 2 tables: 
etudiants(id_etu, nom, prenom) 
stages(id_stage, annee, id_etu)
-- RU: 
Lister le nom et prenom de l etudiant qui font leur stage en annee 2013
-- RSQL: 
SELECT e.nom,e.prenom FROM etudiants e, stages s WHERE (annee=2013 AND e.id_etu=s.id_etu);
-- EAR: 
r1 = restrict(stage; annee=2013)
r2 = join(r1, e=etudiants; r1.id_etu=e.id_etu)
result = project(r2; nom, prenom)

====================================================

#PRATIQUE

ACTEUR(NA,NOM,PRENOM,ADRESSE,SEXE)
VESTE(NV,MARQUE,COULEUR,TAILLE)
PORTE(NA,NV,DATE,DUREE)

Q1 : Donner les marques des vestes de taille 32 et de couleur rouge
R1 = RESTRICT(VESTE,TAILLE=32)
R2 = RESTRICT(VESTE,COULEUR=‘ROUGE’)
R3 = INTERSECT(R1,R2)
RESULT=PROJECT(R3,MARQUE)

Q2 : Donner les noms et prénoms des acteurs qui ont mis des vestes rouges ou bleues
R1 = RESTRICT(VESTE,COULEUR=‘ROUGE’)
R2 = RESTRICT(VESTE,COULEUR=‘BLEU’)
R3 = UNION(R1,R2)
R4 = JOIN(R3,PORTE)
R5 = JOIN(R4,ACTEUR)
RESULT=PROJECT(R5,NOM,PRENOM)

Q3 : Donner les noms et prénoms des acteurs qui ont mis des vestes de taille 32 plus de
deux heures, avec la marque de la veste.
R1 = RESTRICT(VESTE,TAILLE=32)
R2 = RESTRICT(PORTE,DUREE>2)
R3 = JOIN(R1,R2)
R4 = PROJECT(R3,NA,MARQUE)
R5 = JOIN(R4,ACTEUR)
RESULT=PROJECT(R5,NOM,PRENOM,MARQUE)

