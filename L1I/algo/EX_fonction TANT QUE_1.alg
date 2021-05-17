<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;[[[ HACKED! ]]]&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="reponse_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#reponse_1"/>
        <item algoitem="reponse_2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#reponse_2"/>
        <item algoitem="reponse_3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#reponse_3"/>
        <item algoitem="reponse_4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#reponse_4"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Question_1: Quelle est le nombre compris entre 1 et 3 ?&quot;" code="4#Question_1: Quelle est le nombre compris entre 1 et 3 ?#1"/>
        <item algoitem="LIRE reponse_1" code="2#reponse_1#pasliste"/>
        <item algoitem="TANT_QUE (reponse_1!=2) FAIRE" code="15#reponse_1!=2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;ACCES DENIED!&quot;" code="4#ACCES DENIED!#1"/>
            <item algoitem="LIRE reponse_1" code="2#reponse_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;****25%-------------------&quot;" code="4#****25%-------------------#1"/>
        <item algoitem="AFFICHER &quot;Question_2: Quelle est la somme de 1 et 3 ?&quot;" code="4#Question_2: Quelle est la somme de 1 et 3 ?#1"/>
        <item algoitem="LIRE reponse_2" code="2#reponse_2#pasliste"/>
        <item algoitem="TANT_QUE (reponse_2!=4) FAIRE" code="15#reponse_2!=4">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;ACCES DENIED!&quot;" code="4#ACCES DENIED!#1"/>
            <item algoitem="LIRE reponse_2" code="2#reponse_2#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;***********50%------------&quot;" code="4#***********50%------------#1"/>
        <item algoitem="AFFICHER &quot;Question_3: Quelle est le produit de 1 et 3 ?&quot;" code="4#Question_3: Quelle est le produit de 1 et 3 ?#1"/>
        <item algoitem="LIRE reponse_3" code="2#reponse_3#pasliste"/>
        <item algoitem="TANT_QUE (reponse_3!=3) FAIRE" code="15#reponse_3!=3">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;ACCES DENIED!&quot;" code="4#ACCES DENIED!#1"/>
            <item algoitem="LIRE reponse_3" code="2#reponse_3#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;*******************75%----&quot;" code="4#*******************75%----#1"/>
        <item algoitem="AFFICHER &quot;Question_4: Quelle est la division de 3 sur 1 ?&quot;" code="4#Question_4: Quelle est la division de 3 sur 1 ?#1"/>
        <item algoitem="LIRE reponse_4" code="2#reponse_4#pasliste"/>
        <item algoitem="TANT_QUE (reponse_4!=3) FAIRE" code="15#reponse_4!=3">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;ACCES DENIED!&quot;" code="4#ACCES DENIED!#1"/>
            <item algoitem="LIRE reponse_4" code="2#reponse_4#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;[[[ HACKED! ]]]&quot;" code="4#[[[ HACKED! ]]]#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
