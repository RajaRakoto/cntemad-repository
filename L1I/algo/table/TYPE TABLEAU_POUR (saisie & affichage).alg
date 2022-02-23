<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Parcours d'un tableau, saisie des elements et affichage des elements dans un boucle POUR&#xa;" courant="AFFICHER T[n]"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="T EST_DU_TYPE LISTE" code="1#LISTE#T"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Saisie de la taille dy tableau &quot;n&quot; = nombre de colonne" code="19#Saisie de la taille dy tableau &quot;n&quot; = nombre de colonne"/>
        <item algoitem="AFFICHER &quot;Veuillez entrer la taille du tableau:&quot;" code="4#Veuillez entrer la taille du tableau:#1"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrer T[&quot;" code="4#Entrer T[#0"/>
            <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
            <item algoitem="AFFICHER &quot;] :&quot;" code="4#] :#1"/>
            <item algoitem="//Saisie des elements T[i] &amp; i varie de 1 A n" code="19#Saisie des elements T[i] &amp; i varie de 1 A n"/>
            <item algoitem="LIRE T[i]" code="2#T#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 1 A n-1" code="12#i#1#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="//Affichage des elements T[i] &amp; i varie de 1 A n-1" code="19#Affichage des elements T[i] &amp; i varie de 1 A n-1"/>
            <item algoitem="AFFICHER T[i]" code="3#T#0#i"/>
            <item algoitem="AFFICHER &quot; | &quot;" code="4# | #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER T[n]" code="3#T#0#n"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
