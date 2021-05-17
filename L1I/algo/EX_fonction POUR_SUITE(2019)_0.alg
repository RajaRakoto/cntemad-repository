<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;----------------------------------&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#U" algoitem="U EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#U0" algoitem="U0 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Suite Numérique définie par :#0" algoitem="AFFICHER &quot;Suite Numérique définie par :&quot;"/>
        <item code="4# U(0)=1 &amp; U(n+1)=Un+1#0" algoitem="AFFICHER &quot; U(0)=1 &amp; U(n+1)=Un+1&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#U0#1#pasliste" algoitem="U0 PREND_LA_VALEUR 1"/>
        <item code="5#U#n+U0#pasliste" algoitem="U PREND_LA_VALEUR n+U0"/>
        <item code="4#----------------------------------#1" algoitem="AFFICHER &quot;----------------------------------&quot;"/>
        <item code="4#=> La valeur de #0" algoitem="AFFICHER &quot;=> La valeur de &quot;"/>
        <item code="4#U(#0" algoitem="AFFICHER &quot;U(&quot;"/>
        <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
        <item code="4#) est [#0" algoitem="AFFICHER &quot;) est [&quot;"/>
        <item code="3#U#0#pasliste" algoitem="AFFICHER U"/>
        <item code="4#]#1" algoitem="AFFICHER &quot;]&quot;"/>
        <item code="4#----------------------------------#0" algoitem="AFFICHER &quot;----------------------------------&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
