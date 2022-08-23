# CONTRAINTE D'INTEGRITE

`Definition` 

Quel que soit le modèle de données (entité association, relationnel ou autre), il existe toujours des règles du monde réel qui ne peuvent pas être exprimées par les concepts du modèle. Certaines de ces règles restreignent les valeurs que peuvent prendre les données de la base. Elles sont appelées Contraintes d intégrité.

---

`Differents types de contrainte d'integritE`

- **Contraintes de domaine** 
Qui restreignent l'ensemble des valeurs que peut prendre un attribut dans une table 
  
- **Contraintes d'integrite d'entite**
Qui precisent qu une table doit toujours avoir une cle primaire 
  
- **Contraintes d'integrite referentielle**
Qui precisent les conditions dans lesquelles peuvent etre ajoutEs ou supprimEs des enregistrements lorsqu il existe des associations entre tables par l'intermediaire de cles etrangeres
  
- **Contraintes d'integrite quelconque**: 
Qui permet de spécifier que lors de toute insertion (ou suppression ou modification) d'un tuple dans telle relation telle condition doit être satisfaite sinon telle action doit être entreprise automatiquement par le SGBD, comme par exemple refuser l'insertion ou envoyer un message d'alerte.

---

`Exemples pour chaque type de contrainte d'integritE`

- **Contraintes de domaine**
Domaine de valeurs particulier d'un attribut: clause CHECK 

- **Contraintes d'integrite d entite**
Identifiant: clauses PRIMARY KEY et UNIQUE 
Attribut obligatoire: clause NOT NULL 

- **Contraintes d'integrite referentielle**
Clause FOREIGN KEY

- **contrainte d intégrité quelconque**
Clause TRIGGER