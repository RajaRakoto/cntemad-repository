#CREATION DE BD et TABLES (Etudiant, Inscrire, Payement)

#BD
CREATE DATABASE sql_2018s1
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

#TABLE Etudiant
CREATE TABLE Etudiant (
    Matricule int NOT NULL AUTO_INCREMENT,
    Nom varchar(50) NOT NULL,
    AnneeDeNaissance date NOT NULL,
    SerieBac varchar(2) NOT NULL,

    PRIMARY KEY (Matricule)
)engine=INNODB default CHARSET=utf8;

#TABLE Inscrire
CREATE TABLE Inscrire (
    NumIns int NOT NULL AUTO_INCREMENT,
    Matricule int NOT NULL,
    AnneeU date NOT NULL,
    Niveau varchar(5) NOT NULL,
    Filiere varchar(20) NOT NULL,

    PRIMARY KEY (NumIns),
    FOREIGN KEY (Matricule) REFERENCES Etudiant(Matricule)
)engine=INNODB default CHARSET=utf8;

#TABLE Payement
CREATE TABLE Payement (
    NumPai int NOT NULL AUTO_INCREMENT,
    NumIns int NOT NULL,
    DatePai date NOT NULL DEFAULT current_timestamp(),
    Montant int(6) NOT NULL,

    PRIMARY KEY (NumPai),
    FOREIGN KEY (NumIns) REFERENCES Inscrire(NumIns)
)engine=INNODB default CHARSET=utf8;

#========================================================================

#DEP1: creation etudiant dont montant = 20.000ar le 15 jan 2018
#Q1: Afficher l'etudiant qui a payE 20.000ar le 15/01/2018

#DEP2: creation de 4 listes d'etudiants avec serieBac different dont AnneeU = 2017
#Q2: Afficher l'effectif des etudiants par SerieBac

#DEP3: creation d'un etudiant de matricule = 15450 avec N payement
#Q3: Afficher le total des payements de l'etudiant de matricule 15450 au cours de l'annee universitaire 2017

#Q4: Afficher le matricule, la filiere et le niveau de l'etudiant qui fait le plus gros paiement

#Q5: Afficher la liste des etudiants qui ont fait leurs premieres annees ailleurs

#========================================================================

PLSQL
