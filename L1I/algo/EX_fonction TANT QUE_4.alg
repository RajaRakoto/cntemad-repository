<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_TANT_QUE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#depart" algoitem="depart EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#arriver" algoitem="arriver EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre comme départ#1" algoitem="AFFICHER &quot;Entrer un nombre comme départ&quot;"/>
        <item code="2#depart#pasliste" algoitem="LIRE depart"/>
        <item code="4#Voici les 10 premiers nombres:#1" algoitem="AFFICHER &quot;Voici les 10 premiers nombres:&quot;"/>
        <item code="5#arriver#depart+10#pasliste" algoitem="arriver PREND_LA_VALEUR depart+10"/>
        <item code="15#depart&lt;arriver" algoitem="TANT_QUE (depart&lt;arriver) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#depart#depart+1#pasliste" algoitem="depart PREND_LA_VALEUR depart+1"/>
            <item code="3#depart#1#pasliste" algoitem="AFFICHER depart"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
