<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER moyenne" texte="Le but de cette algorithme est de calculer la moyenne des notes des eleves"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#eleves" algoitem="eleves EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#note" algoitem="note EST_DU_TYPE LISTE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer le nombre des eleves :#1" algoitem="AFFICHER &quot;Entrer le nombre des eleves :&quot;"/>
        <item code="2#eleves#pasliste" algoitem="LIRE eleves"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="4#Entrer la note de chaque eleves :#1" algoitem="AFFICHER &quot;Entrer la note de chaque eleves :&quot;"/>
        <item code="12#i#1#eleves" algoitem="POUR i ALLANT_DE 1 A eleves">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrer la note [#0" algoitem="AFFICHER &quot;Entrer la note [&quot;"/>
            <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
            <item code="4#] :#1" algoitem="AFFICHER &quot;] :&quot;"/>
            <item code="2#note#i" algoitem="LIRE note[i]"/>
            <item code="5#somme#somme + note[i]#pasliste" algoitem="somme PREND_LA_VALEUR somme + note[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moyenne#somme/eleves#pasliste" algoitem="moyenne PREND_LA_VALEUR somme/eleves"/>
        <item code="4#MOYENNE = #0" algoitem="AFFICHER &quot;MOYENNE = &quot;"/>
        <item code="3#moyenne#0#pasliste" algoitem="AFFICHER moyenne"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
