### NOMENCLATURE

- **Table** = relation = entité
- **Colonnes** = champs = attributs = propriétés des lignes dans une table 
- **Lignes** = Tuples = objets = enregistrements (données).
- **Schema** = ensembles des attributs
- **Contrainte d'intégrité référentielle** = clé étrangère (foreign key)

---

`Clé primaire (primary key)`

Une clé, c'est un groupe d'attributs (= un groupe de colonnes).

Pour qu'un groupe d'attribut soit une clé, il faut être sûr que deux tuples (= deux lignes) n'auront jamais des valeurs identiques pour ces attributs.

Ce groupe d'attributs doit être minimal, c'est-à-dire que si on retire l'un des attributs de ce groupe, la phrase précédente n'est plus vérifiée.

---

`Clé candidate`

Quand plusieurs clés sont possibles sur une table, on les appelle des clés candidates. Parmi les clés candidates, on en choisit une qui servira de référence: ce sera alors la clé primaire de cette table.

---

`Clé artificielle`

Si aucune clé candidate n'est simple et intelligible, on crée une clé artificielle, souvent appelée identifiant.

>**Note**: on utilise parfois les cles artificielles dans les SGBDR pour des questions de performance

---

`Clé étrangère (foreign key)`

Une clé étrangère sert à lier des relations (= des tables) entre elles.

On dit qu'une clé étrangère d'une table A référence la clé primaire d'une table B.

---

`Redondance de données`

Désigne le fait de répéter une information sous plusieurs formes sans que cela soit nécessaire

Si une table contient de la redondance, mieux vaut la séparer en plusieurs tables avant de la stocker dans la base de données.

Il y a une règle pour savoir comment séparer une table redondante, on appelle cette regle "normalisation".



