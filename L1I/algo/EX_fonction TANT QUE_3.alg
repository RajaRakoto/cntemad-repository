<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; [[[ HACKED! ]]]&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre compris entre 10 et 20#1" algoitem="AFFICHER &quot;Entrer un nombre compris entre 10 et 20&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="15#n&lt;=10 OU n>=20" algoitem="TANT_QUE (n&lt;=10 OU n>=20) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#n>20" algoitem="SI (n>20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Ce nombre est plus grand, ressayez !#1" algoitem="AFFICHER &quot;Ce nombre est plus grand, ressayez !&quot;"/>
                <item code="2#n#pasliste" algoitem="LIRE n"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#n==20" algoitem="SI (n==20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Cenombre est exactement égale à 20, ressayez !#1" algoitem="AFFICHER &quot;Cenombre est exactement égale à 20, ressayez !&quot;"/>
                <item code="2#n#pasliste" algoitem="LIRE n"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#n&lt;10" algoitem="SI (n&lt;10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Ce nombre est plus petit, ressayez !#1" algoitem="AFFICHER &quot;Ce nombre est plus petit, ressayez !&quot;"/>
                <item code="2#n#pasliste" algoitem="LIRE n"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#n==10" algoitem="SI (n==10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Ce nombre est exactement égale à 10, ressayez !#1" algoitem="AFFICHER &quot;Ce nombre est exactement égale à 10, ressayez !&quot;"/>
                <item code="2#n#pasliste" algoitem="LIRE n"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4# [[[ HACKED! ]]]#1" algoitem="AFFICHER &quot; [[[ HACKED! ]]]&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
