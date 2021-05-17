<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; dans son compte.&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Somme" algoitem="Somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Annif" algoitem="Annif EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Unit" algoitem="Unit EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#Unit#&quot;£&quot;#pasliste" algoitem="Unit PREND_LA_VALEUR &quot;£&quot;"/>
        <item code="4#Entrer l'âge : #0" algoitem="AFFICHER &quot;Entrer l'âge : &quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#Somme#100+(2*i)#pasliste" algoitem="Somme PREND_LA_VALEUR 100+(2*i)"/>
            <item code="5#Annif#i#pasliste" algoitem="Annif PREND_LA_VALEUR i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Lors du #0" algoitem="AFFICHER &quot;Lors du &quot;"/>
        <item code="3#Annif#0#pasliste" algoitem="AFFICHER Annif"/>
        <item code="4#ème anniversaire. Il y a,#0" algoitem="AFFICHER &quot;ème anniversaire. Il y a,&quot;"/>
        <item code="3#Somme#0#pasliste" algoitem="AFFICHER Somme"/>
        <item code="3#Unit#0#pasliste" algoitem="AFFICHER Unit"/>
        <item code="4# dans son compte.#0" algoitem="AFFICHER &quot; dans son compte.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
