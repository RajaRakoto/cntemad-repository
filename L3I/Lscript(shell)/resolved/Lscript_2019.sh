#!/bin/bash

#1) qu'est-ce qu'un chemin relatif ? donnez un exemple ?
=> Un chemin relatif est un chemin qui dépend du dossier dans lequel vous vous trouvez, c'est a dire un chemin qui est relatif a  un repertoire specifique de l'arborescence Linux.

Exemple: lors de l'ecriture d'un script, il est toujours fiable d'utiliser un chemin relatif pour ne pas faire des erreurs au niveau du chemin d'acces. Si l'utilisateur utilise le chemin absolu (/home/rakoto/mon_script), et que le script contient le nom du dossier personnel de celui qui l'a ecrit (ici c'est "rakoto"), il est fort probable que le script ne fonctionne plus pour les autres utilisateurs (a part "rakoto") car ce dernier a mis le chemin qui lui est propre mais pas le chemin relatif au script (~/mon_script).

#2) dans quel cas doit on utilisE le chemin absolu, expliquer ?
=> Un chemin absolu est utilisE lorsque qu'on est obligE de manipuler une ou plusieurs commande(s) a partir de la racine "/" du systeme de fichier.

Explication:

#3) dans quel dossier se trouve la planification des taches ?
=> La planification des taches se trouve dans le dossier de configuration "/etc/". En utilisant la commande "contab" avec l'option -e, -l et -r, on peut lire, ecrire ou supprimer des taches dans un fichier appelé "crontab", ce fichier contient la liste des programmes que l'utilisateur souhaitait executer regulierement en fonction du temps d'execution specifiE. Un processus demon (qui s'execute en arriere plan) se charge d'executer les programmes qui se trouvent dans le fichier crontab.

#4) comment on fait pour chercher un fichier d'extension ".mp3" dans le systeme ?
=> Pour chercher un fichier d'extension ".mp3" dans le systeme, on doit utiliser l'expression suivante: find / -iname "*.mp3" (on peut changer "/" pour cibler l'emplacement qu'on veut mettre comme point de localisation)


#5) ecrire un script qui affiche tous les fichiers ".c" et leur chemin d'acces respectif apres avoir fait la recherche dans le systeme


#### Ecrire un programme en interaction avec l'utilisateur pour connaitre si un nombre est pair ou impaire et en calculant son factoriel s'il est pair

#TITLE
echo "
#######################################
#### CALCUL FACTORIEL - script shell ####
#######################################
"




