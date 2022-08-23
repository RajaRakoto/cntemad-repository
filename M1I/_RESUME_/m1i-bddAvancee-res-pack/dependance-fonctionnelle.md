### DEPENDANCE FONCTIONNELLE

`Definition`

Mathématiquement, on dit que X détermine Y, ou que Y dépend fonctionnellement de X, si c'est seulement s'il existe une fonction qui à partir de toute valeur de X détermine une valeur unique de Y, on note X→Y. Autrement dit, la connaissance d'une valeur de X permet de déterminer la valeur de Y pour tout tuple, X est donc la source du DF et Y est sa cible. Par conséquent, il est défini à partir des règles réagissant aux informations du système à modéliser et non à partir des exemples.

---

`Exemple de DF`

Soit la relation Eleve(Matricule, Nom, Age, Sexe, Province, Ville)
```
Matricule → Nom, Age, Sexe, Province, Ville
Ville → Province
```

---

`UtilitE` 

La notion de DF a été introduite dès le début du relationnel par Codd afin de caractériser des relations décomposables sans perte d'information.

---

`Demonstration` 

Pout montrer la non DF, il suffit de citer un contre exemple en posant la question suivante: *"Est-ce que 2 valeurs differentes de Y peuvent-elles etre associees a une seule valeur de X ?"*
```
- Si la reponse est "NON" → il y a DF
- Si la reponse est "OUI" → il n y a pas de DF
```

---

`Exemple de demo`

**Soit la relation:**
```
Etudiant(Matricule, Nom, Classe, NumeroDeClasse, Annee, Matiere, DateDS, Note)
```

**Donnez les DF et les non DF de cette relation:**
Nous savons qu'un matricule est un numéro unique à chaque étudiant lorsqu'il entre dans un établissement et que ce numéro ne sera plus jamais attribué à un autre étudiant.

- **DF**
Par conséquent, il peut y avoir deux étudiants différents portant le même nom, dans ce cas, il y aura 2 numéros d'inscription différents pour la même valeur de Nom. Autrement dit, le Nom n'est pas déterminé par Matricule mais l'inverse est possible et que l'on note : `Matricule→Nom`
De même, pour un élève, une matière et une date de DS donnés, il y a une et une seule note. Ce qui donne le DF: `(Matricule, Matiere, DateDS) → Note`

- **Non DF**
Considérons maintenant les attributs Matricule et Classe : Durant l'année académique 2011, l'étudiant avec le matricule 110001 (par exemple) est en classe de 1ère année mais durant l'année 2012, ce même étudiant est en 2ème année pour la même valeur de matricule, on peut alors avoir 2 valeurs de classe différentes. Nous concluons que "Matricule ne détermine pas la classe" `Matricule !→ Classe`. Par inverse, il est évident que `Classe !→ Matricule` car il y a beaucoup d'élèves dans la même classe. **En revanche**, si l'on considère le couple d'attributs (Matriculation, Annee), il est désormais possible de déterminer la classe d'un étudiant au cours d'une année académique par la DF: `(Matriculation, Annee) → Class`

---

`Types de DF`

- **DFE (Dependance Fonctionnelle Elementaire)**
Une DF X→Y est elementaire si et seulement si on enleve une des attributs de la source X et que le reste ne determine plus Y. Autrement dit, si Y est pleinement dependant de l'integralitE de X
*Ex: (Matricule, Annee) → Classe*
>**Note**: Toute DF dont la source X est un seul attribut est alors DFE car si on enleve la source, il n'y aura plus que le vide. Donc plus de DF

- **DFD (Dependance Fonctionnelle Directe)**
Une DF X→Y est DFD si et seulement si, X→Z et Z→Y. On dit alors que Y est directement dependant de X

- **DFPGC (Dependance Fonctionnelle a Partie Gauche ComposEe)**
Une DF X→Y est DFPGC lorsque X est formEe par plusieurs attributs
*Ex: (Matricule, Matiere, DateDs) → Note*

---

`ProprietEs de DF (Axiomes d'Amstrong)`

- **ReflexivitE**
Tout groupe d'attributs se détermine lui même et détermine chacun de ses attributs (ou sous groupe de ses attributs)

Soient X et Y des attributs:
XY→XY `et` XY→X `et` XY→Y

- **Augmentation**
Si un attribut X détermine un attribut Y, alors tout groupe composé de X enrichi avec d'autres attributs détermine un groupe composé de Y et enrichi des mêmes autres attributs.

Soient X, Y et Z des attributs:
Si X→Y `alors` XZ→YZ

- **TransitivitE**
Si un attribut X détermine un attribut Y et que cet attribut Y détermine un autre attribut Z, alors X détermine Z

Soient X, Y et Z des attributs:
Si X→Y et Y→Z, `alors` X→Z

- **Pseudo-transitivitE**
Si un attribut X détermine un autre attribut Y, et que Y appartient à un groupe G qui détermine un troisième attribut Z, alors le groupe G' obtenu en substituant Y par X dans G détermine également Z.

Soient, W, X, Y et Z des attributs:
X→Y `et` WY→Z `alors` WX→Z

> **Note**: Cette propriété est déduite de l'augmentation et de la réflexivité
> X→Y et WY→Z ⇒ WX→WY et WY→Z ⇒ WX→Z

- **Union**
Si un attribut détermine plusieurs autres attributs, alors il détermine tout groupe composé de ces attributs.

Soient X, Y et Z des attributs :
Si X→Y et X→Z `alors` X→YZ

> **Note**: Cette propriété est déduite de la réflexivité, de l'augmentation et de la transitivité 
> X→Y et X→Z ⇒ X→XX et XX→XY et YX→YZ ⇒ X→YZ

- **Decomposition** (inverse de l'union)
Si un attribut détermine un groupe d'attribut, alors il détermine chacun des attributs de ce groupe pris individuellement.

Soient X, Y et Z des attributs :
Si X→YZ `alors` X→Y et X→Z 

> **Note**: Cette propriété est déduite de la réflexivité et de la transitivité 
> X→YZ ⇒ X→YZ et YZ→Z ⇒ X→Z