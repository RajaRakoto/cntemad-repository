# BD REPARTIE

`Differences entre BD repartie et BD parallele`

- **BD parallèles**
Les données peuvent être réparties sur plusieurs disques d'un même site, et l'exécution des requêtes peut être parallélisée sur les différentes unités de traitement (CPU) du site.
 
- **BD réparties**
Les données sont diffusées et/ou dupliquées sur différents sites du réseau (ex: internet) qui disposent d'une certaine degré d'autonomie. Chaque site peut avoir une BD parallèle.

---

`Les Avantages d'une BD repartie par rapport a une architecture centralisEe`

- **Performance** 
En rapprochant les données des applications utilisant ces données (ex: stockant les comptes des clients montréalais dans un site localisé à Montréal), on peut réduire les coûts de transfert sur le réseau et, ainsi, augmenter la performance des requêtes sur ces données. 

- **Fiabilité**
En dupliquant certaines données importantes sur plusieurs sites, on minimise l’impact d’une panne sur un site. De même, en cas de panne, on peut rediriger le traitement d’une requête vers un autre site disponible. 

- **Extensibilité**
Si les besoins en espace de stockage et en puissance de traitement augmentent on peut facilement rajouter un nouveau nœud (site), sans avoir à remplacer le serveur (ex : approche Google).

---

`Le principe de la strategie d'optimisation par semi-jointure`

La stratégie par semi-jointure permet de réduire le coût d'une jointure en limitant la quantité de données transférées sur le réseau. Supposons que l'on veuille calculer T1 T2 où la table Ti est située sur le site i. Au lieu de transférer une table complète d'un site à un autre, on envoie seulement les colonnes nécessaires à la jointure (la clé). Par exemple, on envoie π clé(T2) au site 1 et on fait la jointure avec T1: R = T1 π clé (T2) Ceci correspond à faire la semi-jointure entre T1 et T2. Ensuite, on envoie le résultat R au site 2 pour faire la jointure avec T2: T = R T2 = T1 T2 Les données transférées sont celles de π clé (T2) et de R, et ont une taille potentiellement moins grande que celle de T1 ou de T2

---

`Role de la répartition cyclique par bloc employée dans certaines architectures RAID`

Au lieu de disposer les blocs d'une table séquentiellement sur un même disque, la répartition
cyclique les dispose en alternance sur plusieurs disques. Par exemple,
Disque 1 Disque 2 Disque 3
bloc 1 bloc 2 bloc 3
bloc 4 bloc 5 bloc 6
... ... ...
Le but de cette stratégie est de permettre la lecture / écriture de plusieurs blocs en parallèle
(un dans chaque disque).

---

`La différence entre la fragmentation horizontale et verticale d’une table`

- **Fragmentation horizontale**
Chaque fragment contient un sous-ensemble de lignes de la table. Par exemple, on découpe la table Client selon la provenance (ex : province, état, etc.) d’un client.

- **Fragmentation verticale**
Chaque fragment contient un sous-ensemble de colonnes de la table. En pratique, ce type de fragmentation est rarement employé.

---

`Avantages de la fragmentation dans le contexte des bases de données réparties`

• La fragmentation horizontale permet de répartir les lignes d'une table sur les sites où le traitement de ces lignes est souvent fait, réduisant ainsi les temps de transfert sur le réseau.

• En cas de panne d’un site, l’information stockée sur les autres sites reste disponible.

---

`Avantages de la duplication dans les BD réparties`

• Réduit les coûts de transfert en dupliquant sur les différentes l’information globale à tous les sites. Par exemple, les codes et les frais associés aux transactions bancaires.

• Assure la disponibilité des données dupliquées dans le cas où un ou plusieurs sites tombent en panne.

---

`La différence entre la duplication répartie synchrone et asynchrone`

- **Duplication synchrone**
Une transaction modifiant des données de plusieurs sites n’est confirmée qu’au moment ou tous les sites ont confirmés les changements.

- **Duplication asynchrone**
Les mises à jour sont d’abord faites sur la copie primaire des tables, et les autres copies sont mises à jour en différé.

---

`le rôle des vues matérialisées (MATERIALIZED VIEW) dans les BD réparties`

Permet de créer une copie locale d’une table située sur un autre site distant. En somme, elles permettent d’implémenter le concept de la duplication (synchrone ou asynchrone).

---

`Différences entre l’optimisation de requêtes dans les BD centralisées et dans les BD réparties`

• Coût de communication: Contrairement aux BD centralisées, l’optimisation de requêtes utilisant des données sur plusieurs sites doit également tenir compte du coût de transfert
sur le réseau.

• Ressources multiples: L’optimiseur doit également tenir compte de la localisation des données et des diverses ressources à sa disposition. Par exemple, plusieurs sites peuvent contribuer en parallèle à répondre à la requête selon les données qu’ils
renferment.

---

`La différence entre les architectures RAID 1 et RAID 5. Dites comment ces architectures se comparent en termes de fiabilité et de performance`

- **RAID 1**
Le niveau RAID 1 est basé sur la duplication des données sur des disques miroirs. Cette architecture est robuste aux pannes survenant sur un ou plusieurs disques. De plus, elle permet la lecture en parallèle sur les différents disques (mais pas l’écriture). Par contre, cette architecture est plutôt gourmande en termes d’espace.

- **RAID 5**
Contrairement au niveau RAID 1, le niveau RAID 5 ne duplique pas les données. En revanche, ce niveau emploi la répartition cyclique par bloc ce qui permet de faire des lectures ET des écritures en parallèle. Par ailleurs, elle permet une certaine forme de fiabilité à l’aide de bits de parité stockés séparément des données.

---

`Comment l’opération de sélection peut être accélérée dans les BD parallèles`

En supposant que la table sur laquelle opère la sélection est fragmentée, on peut effectuer en parallèle une recherche sur chacun des fragments et ensuite combiner les résultats de ces recherches. Par ailleurs, si la fragmentation est faite selon la clé de sélection, on peut limiter la recherche aux fragments correspondants.

---

`La différence entre les architectures à mémoire partagée et à disque partagés | un avantage et un inconvénient pour chacune d’elles`

- **Mémoire partagée**
Plusieurs processeurs (CPU) partagent la même mémoire vive (RAM). L’avantage est que les processeurs peuvent communiquer efficacement à travers la mémoire RAM. Cependant, la mémoire RAM constitue un goulot d’étranglement qui limite le nombre de CPU possibles.

- **Disques partagés**
Contrairement à la précédente, les CPU de cette architecture ont chacun leur propre RAM. Cela facilité l’extension de l’architecture (ajout de nouveau CPU) mais complexifie un peu la communication entre les processeurs. En pratique, cette architecture est celle employée le plus souvent.

---

`Precaution pour sauver et/ou resituer les donnees lors d'une catastrophe`

À mon avis, la meilleure façon de sauvegarder et de restaurer des données et d'éviter l'utilisation d'une architecture centralisée en adoptant une base de données distribuée et de dupliquer les données sensibles sur plusieurs bases de données des sites différents. De ce fait, le traitement d'une requete peut être redirigé vers un autre site disponible lors d'une catastrophe.