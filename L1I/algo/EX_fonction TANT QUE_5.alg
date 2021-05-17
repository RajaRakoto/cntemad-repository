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
        <item code="1#NOMBRE#table" algoitem="table EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#res" algoitem="res EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#val_fin" algoitem="val_fin EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#table#pasliste" algoitem="LIRE table"/>
        <item code="4#Le table de #0" algoitem="AFFICHER &quot;Le table de &quot;"/>
        <item code="3#table#0#pasliste" algoitem="AFFICHER table"/>
        <item code="4# :#1" algoitem="AFFICHER &quot; :&quot;"/>
        <item code="5#n#0#pasliste" algoitem="n PREND_LA_VALEUR 0"/>
        <item code="5#val_fin#table*10#pasliste" algoitem="val_fin PREND_LA_VALEUR table*10"/>
        <item code="15#res&lt;val_fin" algoitem="TANT_QUE (res&lt;val_fin) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#res#table*n#pasliste" algoitem="res PREND_LA_VALEUR table*n"/>
            <item code="3#table#0#pasliste" algoitem="AFFICHER table"/>
            <item code="4# x #0" algoitem="AFFICHER &quot; x &quot;"/>
            <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
            <item code="4# = #0" algoitem="AFFICHER &quot; = &quot;"/>
            <item code="3#res#1#pasliste" algoitem="AFFICHER res"/>
            <item code="5#n#n+1#pasliste" algoitem="n PREND_LA_VALEUR n+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
