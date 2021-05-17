<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Le but de cette algorithme est d'utiliser une fonction qui calcule la somme carre en le multipliant par 2 puis l' ajouter une valeur égale à 1" courant="AFFICHER z"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#SommeCarre #x,y" algoitem="FONCTION SommeCarre (x,y)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION">
                <item code="1#NOMBRE#z" algoitem="z EST_DU_TYPE NOMBRE"/>
            </item>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="5#z#x^2 + y^2#pasliste" algoitem="z PREND_LA_VALEUR x^2 + y^2"/>
            <item code="205#z" algoitem="RENVOYER z"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="5#z#2*SommeCarre(a,b)+1#pasliste" algoitem="z PREND_LA_VALEUR 2*SommeCarre(a,b)+1"/>
        <item code="4#RESULTAT = #0" algoitem="AFFICHER &quot;RESULTAT = &quot;"/>
        <item code="3#z#0#pasliste" algoitem="AFFICHER z"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
