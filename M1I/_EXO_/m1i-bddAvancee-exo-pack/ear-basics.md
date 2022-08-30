# EAR BASICS

**`Relations`**

```
EMP (#ENO, ENOM, PROF, SAL, COMM, DNO=>DEPT(DNO)) 
DEPT (#DNO, DNOM, DIR=>EMP(ENO), VILLE) 
```

---

**`Description`**

ENO : numéro d'employé, clé
ENOM : nom de l'employé
PROF : profession (directeur n'est pas une profession)
SAL : salaire
COMM : commission (un employé peut ne pas avoir de commission)
DNO : numéro de département auquel appartient l'employé
DNO : numéro de département, clé
DNOM : nom du département
DIR : numéro d'employé du directeur du département
VILLE : lieu du département (ville)

---

**`Questions`**

Écrire en algèbre relationnelle les requêtes permettant d'obtenir les informations suivantes.

1. Lister les employés ayant des revenus supérieurs à 10.000 euros.
2. Trouver le nom et la profession de l'employé  numéro 10.
3. Lister les noms des employés qui travaillent à Paris.
4. Trouver le nom du directeur du département .
5. Trouver les professions des directeurs des départements.
6. Trouver le nom des directeurs de département ayant comme profession .

---

**`Reponses`**

> note: revenu = salaire + commission

1. Les employés ayant des revenus supérieurs à 10.000 euros.
```
R1 = RESTRICT(EMP, EMP.SAL+EMP.COMM > 10000)
R = PROJECT(R1, R1.ENOM)
```

2. Le nom et la profession de l'employé  numéro 10.
```
R1 = RESTRICT(EMP, EMP.ENO = 10)
R = PROJECT(R1, R1.ENOM, R1.PROF)
```

3. Les noms des employés qui travaillent à Paris.
```
R1 = JOIN(EMP, DEPT, EMP.DNO = DEPT.DNO)
R2 = RESTRICT(R1, R1.VILLE = 'Paris')
R = PROJECT(R2, R2.ENOM)
```

4. Le nom du directeur du département Commercial.
```
R1 = RESTRICT(DEPT, DEPT.DNOM = 'Commercial')
R2 = JOIN(R1, EMP, EMP.ENO = R1.DIR)
R = PROJECT(R2, R2.ENOM)
```

5. Les professions des directeurs des départements.
```
R1 = JOIN(DEPT, EMP, DEPT.DIR = EMP.ENO)
R = PROJECT(R1, R1.PROF)
```

6. Le nom des directeurs de département ayant comme profession Ingénieur.
```
R1 = JOIN(DEPT, EMP, DEPT.DIR = EMP.ENO)
R2 = RESTRICT(R1, R1.PROF = 'Ingenieur')
R = PROJECT(R2, R2.ENOM)
```

