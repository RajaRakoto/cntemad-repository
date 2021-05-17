<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_POUR"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#U0" algoitem="U0 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#U" algoitem="U EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre positif : #0" algoitem="AFFICHER &quot;Entrer un nombre positif : &quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#U0#1#pasliste" algoitem="U0 PREND_LA_VALEUR 1"/>
        <item code="12#i#0#n" algoitem="POUR i ALLANT_DE 0 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#U#i+U0#pasliste" algoitem="U PREND_LA_VALEUR i+U0"/>
            <item code="4#Valeur de la suite -> #0" algoitem="AFFICHER &quot;Valeur de la suite -> &quot;"/>
            <item code="3#U#0#pasliste" algoitem="AFFICHER U"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
