<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#depart" algoitem="depart EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#arriver" algoitem="arriver EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Veuillez entrer un nombre comme depart#1" algoitem="AFFICHER &quot;Veuillez entrer un nombre comme depart&quot;"/>
        <item code="2#depart#pasliste" algoitem="LIRE depart"/>
        <item code="5#arriver#depart+9#pasliste" algoitem="arriver PREND_LA_VALEUR depart+9"/>
        <item code="4#Les 10 premiers nombres suivants sont:#1" algoitem="AFFICHER &quot;Les 10 premiers nombres suivants sont:&quot;"/>
        <item code="12#i#depart#arriver" algoitem="POUR i ALLANT_DE depart A arriver">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#depart#depart+1#pasliste" algoitem="depart PREND_LA_VALEUR depart+1"/>
            <item code="3#depart#1#pasliste" algoitem="AFFICHER depart"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
