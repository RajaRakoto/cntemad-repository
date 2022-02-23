<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER T[n]" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#T" algoitem="T EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Veuillez entrez la taille du tableau:#1" algoitem="AFFICHER &quot;Veuillez entrez la taille du tableau:&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#i#1#pasliste" algoitem="i PREND_LA_VALEUR 1"/>
        <item code="19#Il faut que la taille du tableau soit superieur à la valeur de i i-e 1" algoitem="//Il faut que la taille du tableau soit superieur à la valeur de i i-e 1"/>
        <item code="15#n&lt;2" algoitem="TANT_QUE (n&lt;2) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#La taille du tableau est au minimum egale à 2#1" algoitem="AFFICHER &quot;La taille du tableau est au minimum egale à 2&quot;"/>
            <item code="2#n#pasliste" algoitem="LIRE n"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="19#Saisie de l'element T[i] pour i=1 A n" algoitem="//Saisie de l'element T[i] pour i=1 A n"/>
        <item code="15#i&lt;=n" algoitem="TANT_QUE (i&lt;=n) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Veuillez entrer T[#0" algoitem="AFFICHER &quot;Veuillez entrer T[&quot;"/>
            <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
            <item code="4#] :#0" algoitem="AFFICHER &quot;] :&quot;"/>
            <item code="2#T#i" algoitem="LIRE T[i]"/>
            <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="19#Affichage de l'element T[i] par un boucle POUR" algoitem="//Affichage de l'element T[i] par un boucle POUR"/>
        <item code="4#AFFICHAGE PAR UN BOUCLE POUR:#1" algoitem="AFFICHER &quot;AFFICHAGE PAR UN BOUCLE POUR:&quot;"/>
        <item code="12#i#1#n-1" algoitem="POUR i ALLANT_DE 1 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#T#0#i" algoitem="AFFICHER T[i]"/>
            <item code="4# | #0" algoitem="AFFICHER &quot; | &quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#T#0#n" algoitem="AFFICHER T[n]"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
