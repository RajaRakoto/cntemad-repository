<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER SB" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="SA EST_DU_TYPE NOMBRE" code="1#NOMBRE#SA"/>
        <item algoitem="SB EST_DU_TYPE NOMBRE" code="1#NOMBRE#SB"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="SA PREND_LA_VALEUR 10000000" code="5#SA#10000000#pasliste"/>
        <item algoitem="SB PREND_LA_VALEUR 5000000" code="5#SB#5000000#pasliste"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SA PREND_LA_VALEUR SA+500000" code="5#SA#SA+500000#pasliste"/>
            <item algoitem="SB PREND_LA_VALEUR SB+150000" code="5#SB#SB+150000#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;SA = &quot;" code="4#SA = #0"/>
        <item algoitem="AFFICHER SA" code="3#SA#1#pasliste"/>
        <item algoitem="AFFICHER &quot;SB = &quot;" code="4#SB = #0"/>
        <item algoitem="AFFICHER SB" code="3#SB#0#pasliste"/>
        <item algoitem="TANT_QUE (SB>SA) FAIRE" code="15#SB>SA">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SB PREND_LA_VALEUR 5000000+150000" code="5#SB#5000000+150000#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER SB" code="3#SB#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
