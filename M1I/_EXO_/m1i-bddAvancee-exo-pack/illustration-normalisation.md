# ILLUSTRATION NORMALISATION

**`Questions`**
- 1 - Comment peut-on faire pour que (Nom, Prenom ) soit en 1FN, de même pour la fourchette de prix ? 

- 2 - La relation Fournisseur (nom, code-article, adresse, prix) est-elle en 2FN ? Corriger-la éventuellement. 

- 3 - La relation Voiture (num_immat, marque, type, puissance, couleur) est-elle en 3FN ? Corriger-la éventuellement.

---

**`Reponses`**
1 - Pour que (Nom, Prenom ) soit en 1FN, on le casse en deux attributs, Nom et Prénom. De même pour la fourchette de prix, il suffit de le casser en deux attributs : Prix_mini et Prix_maxi.

2 - La relation Fournisseur (nom, code-article, adresse, prix) n’est pas en 2FN puisque ‘adresse’ ne dépend que d’une partie de la clé, à savoir ‘nom’. On casse donc la relation en deux :
```
Fournisseur(nom-fourni, adresse)
Produit(nom-fourni, code-article, prix).
```
=> Ces relations sont en 2FN

3 - La relation Voiture(num_immat, marque, type, puissance, couleur) n’est pas en 3NF puisque ‘type’ attribut non clé permet de déterminer ‘puissance’. On casse donc la relation en deux:
```
Voiture(num_immat, marque, type, couleur)
Type(type, puissance)
```
=> Ces relations sont en 3FN