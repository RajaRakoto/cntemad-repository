<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SI" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="x1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#x1"/>
        <item algoitem="x2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#x2"/>
        <item algoitem="DELTA EST_DU_TYPE NOMBRE" code="1#NOMBRE#DELTA"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;--------------------------------------------------&quot;" code="4#--------------------------------------------------#1"/>
        <item algoitem="AFFICHER &quot;   *** RESOLUTION EQUATION BICARREE ***&quot;" code="4#   *** RESOLUTION EQUATION BICARREE ***#1"/>
        <item algoitem="AFFICHER &quot;--------------------------------------------------&quot;" code="4#--------------------------------------------------#1"/>
        <item algoitem="AFFICHER &quot;Entrer la valeur de a,b et c:&quot;" code="4#Entrer la valeur de a,b et c:#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;FORME Gle => ax^4 + bx^2 + c = 0&quot;" code="4#FORME Gle => ax^4 + bx^2 + c = 0#1"/>
        <item algoitem="AFFICHER &quot;Notre équation bicarrée a donc pour forme => &quot;" code="4#Notre équation bicarrée a donc pour forme => #0"/>
        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
        <item algoitem="AFFICHER &quot;X&quot;" code="4#X#0"/>
        <item algoitem="AFFICHER &quot;^4&quot;" code="4#^4#0"/>
        <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
        <item algoitem="AFFICHER &quot;X&quot;" code="4#X#0"/>
        <item algoitem="AFFICHER &quot;^2&quot;" code="4#^2#0"/>
        <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
        <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
        <item algoitem="AFFICHER &quot;----------------------------------------&quot;" code="4#----------------------------------------#1"/>
        <item algoitem="// Transformation de X = x^2" code="19# Transformation de X = x^2"/>
        <item algoitem="AFFICHER &quot;On transforme notre équation bicarrée en equation du second dégré en remplacant [X par x^2]&quot;" code="4#On transforme notre équation bicarrée en equation du second dégré en remplacant [X par x^2]#1"/>
        <item algoitem="AFFICHER &quot;L'equation devient alors => &quot;" code="4#L'equation devient alors => #0"/>
        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x&quot;" code="4#x#0"/>
        <item algoitem="AFFICHER &quot;^2&quot;" code="4#^2#0"/>
        <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x&quot;" code="4#x#0"/>
        <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
        <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
        <item algoitem="AFFICHER &quot;----------------------------------------&quot;" code="4#----------------------------------------#1"/>
        <item algoitem="// Test de DELTA (Calcul)" code="19# Test de DELTA (Calcul)"/>
        <item algoitem="DELTA PREND_LA_VALEUR b*b-4*a*c" code="5#DELTA#b*b-4*a*c#pasliste"/>
        <item algoitem="SI (DELTA>0) ALORS" code="6#DELTA>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
            <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Il existe deux (02) solutions distinctes.&quot;" code="4#Il existe deux (02) solutions distinctes.#1"/>
            <item algoitem="// Calcul x' et x''" code="19# Calcul x' et x''"/>
            <item algoitem="x1 PREND_LA_VALEUR -b-sqrt(DELTA)/(2*a)" code="5#x1#-b-sqrt(DELTA)/(2*a)#pasliste"/>
            <item algoitem="x2 PREND_LA_VALEUR -b+sqrt(DELTA)/(2*a)" code="5#x2#-b+sqrt(DELTA)/(2*a)#pasliste"/>
            <item algoitem="AFFICHER &quot;x'=&quot;" code="4#x'=#0"/>
            <item algoitem="AFFICHER x1" code="3#x1#0#pasliste"/>
            <item algoitem="AFFICHER &quot; &amp; &quot;" code="4# &amp; #0"/>
            <item algoitem="AFFICHER &quot;x=&quot;" code="4#x=#0"/>
            <item algoitem="AFFICHER x2" code="3#x2#0#pasliste"/>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
            <item algoitem="AFFICHER &quot;>>> OR, l'équation &quot;" code="4#>>> OR, l'équation #0"/>
            <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x&quot;" code="4#x#0"/>
            <item algoitem="AFFICHER &quot;^2&quot;" code="4#^2#0"/>
            <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
            <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x&quot;" code="4#x#0"/>
            <item algoitem="AFFICHER &quot; + &quot;" code="4# + #0"/>
            <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
            <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#0"/>
            <item algoitem="AFFICHER &quot; n'a de SOLUTION que pour [x>=0]&quot;" code="4# n'a de SOLUTION que pour [x>=0]#0"/>
            <item algoitem="SI (x1>=0) ALORS" code="6#x1>=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;La solutuion se trouve en x' => S = {&quot;" code="4#La solutuion se trouve en x' => S = {#0"/>
                <item algoitem="AFFICHER x1" code="3#x1#0#pasliste"/>
                <item algoitem="AFFICHER &quot;}&quot;" code="4#}#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (x2>=0) ALORS" code="6#x2>=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;La solutuion se trouve en x'' => S = {&quot;" code="4#La solutuion se trouve en x'' => S = {#0"/>
                <item algoitem="AFFICHER x2" code="3#x2#0#pasliste"/>
                <item algoitem="AFFICHER &quot;}&quot;" code="4#}#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                    <item algoitem="AFFICHER &quot;>>> Pas de solution car x'&lt;0 &amp; x/&lt;0, S={vide}&quot;" code="4#>>> Pas de solution car x'&lt;0 &amp; x/&lt;0, S={vide}#0"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (DELTA&lt;0) ALORS" code="6#DELTA&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
            <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Pas de solution car DELTA&lt;0, S={vide}&quot;" code="4#Pas de solution car DELTA&lt;0, S={vide}#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (DELTA==0) ALORS" code="6#DELTA==0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
            <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Solution double: x'=x=&quot;" code="4#Solution double: x'=x=#0"/>
            <item algoitem="AFFICHER &quot;S={&quot;" code="4#S={#0"/>
            <item algoitem="x1 PREND_LA_VALEUR -b/Za" code="5#x1#-b/Za#pasliste"/>
            <item algoitem="AFFICHER x1" code="3#x1#0#pasliste"/>
            <item algoitem="AFFICHER &quot;}&quot;" code="4#}#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
