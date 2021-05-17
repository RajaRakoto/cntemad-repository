<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" epaisseurLigne="2" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION delta (a,b,c)" code="201#delta #a,b,c">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="formule_delta EST_DU_TYPE NOMBRE" code="1#NOMBRE#formule_delta"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="formule_delta PREND_LA_VALEUR b*b - 4*a*c" code="5#formule_delta#b*b - 4*a*c#pasliste"/>
            <item algoitem="RENVOYER formule_delta" code="205#formule_delta"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="DELTA EST_DU_TYPE NOMBRE" code="1#NOMBRE#DELTA"/>
        <item algoitem="x0 EST_DU_TYPE NOMBRE" code="1#NOMBRE#x0"/>
        <item algoitem="x1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#x1"/>
        <item algoitem="x2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#x2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot; ------------------------------------------------------------------&quot;" code="4# ------------------------------------------------------------------#1"/>
        <item algoitem="AFFICHER &quot;***   RESOLUTION DES EQUATIONS DU SECOND DEGRE   ***&quot;" code="4#***   RESOLUTION DES EQUATIONS DU SECOND DEGRE   ***#1"/>
        <item algoitem="AFFICHER &quot; ------------------------------------------------------------------&quot;" code="4# ------------------------------------------------------------------#1"/>
        <item algoitem="AFFICHER &quot;Entrer la valeur de a, b et c : &quot;" code="4#Entrer la valeur de a, b et c : #1"/>
        <item algoitem="AFFICHER &quot;--------------------------------&quot;" code="4#--------------------------------#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="AFFICHER &quot;--------------------------------&quot;" code="4#--------------------------------#1"/>
        <item algoitem="AFFICHER &quot;L'equation a donc pour fomre => &quot;" code="4#L'equation a donc pour fomre => #0"/>
        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x^2 + &quot;" code="4#x^2 + #0"/>
        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x + &quot;" code="4#x + #0"/>
        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
        <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
        <item algoitem="AFFICHER &quot;--------------------------------&quot;" code="4#--------------------------------#1"/>
        <item algoitem="AFFICHER &quot;Calculons d'abord le discriminant de l'equation : &quot;" code="4#Calculons d'abord le discriminant de l'equation : #1"/>
        <item algoitem="AFFICHER &quot;On sait que : [DELTA = b^2 - 4*a*c] Alors, pour la fonction&quot;" code="4#On sait que : [DELTA = b^2 - 4*a*c] Alors, pour la fonction#1"/>
        <item algoitem="AFFICHER &quot;=> &quot;" code="4#=> #0"/>
        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x^2 + &quot;" code="4#x^2 + #0"/>
        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x + &quot;" code="4#x + #0"/>
        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
        <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
        <item algoitem="AFFICHER &quot;On a,&quot;" code="4#On a,#0"/>
        <item algoitem="AFFICHER &quot;[DELTA = &quot;" code="4#[DELTA = #0"/>
        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
        <item algoitem="AFFICHER &quot;^2 - 4*&quot;" code="4#^2 - 4*#0"/>
        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
        <item algoitem="AFFICHER &quot;*&quot;" code="4#*#0"/>
        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
        <item algoitem="AFFICHER &quot;]&quot;" code="4#]#1"/>
        <item algoitem="// FORMULE DELTA" code="19# FORMULE DELTA"/>
        <item algoitem="DELTA PREND_LA_VALEUR delta(a,b,c)" code="5#DELTA#delta(a,b,c)#pasliste"/>
        <item algoitem="AFFICHER &quot;Ici, la valeur de DELTA est donc => &quot;" code="4#Ici, la valeur de DELTA est donc => #0"/>
        <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
        <item algoitem="AFFICHER &quot;--------------------------------&quot;" code="4#--------------------------------#1"/>
        <item algoitem="AFFICHER &quot;   ~ RAPPEL ~&quot;" code="4#   ~ RAPPEL ~#1"/>
        <item algoitem="AFFICHER &quot;1. Si DELTA&lt;0 => Pas de solution (S=vide)&quot;" code="4#1. Si DELTA&lt;0 => Pas de solution (S=vide)#1"/>
        <item algoitem="AFFICHER &quot;2. Si DELTA=0 => Solution double i-e, x'=x''=-b/2a (S=-b/2a)&quot;" code="4#2. Si DELTA=0 => Solution double i-e, x'=x''=-b/2a (S=-b/2a)#1"/>
        <item algoitem="AFFICHER &quot;3. Si DELTA>0 => Deux (02) solutions distinctes i-e,&quot;" code="4#3. Si DELTA>0 => Deux (02) solutions distinctes i-e,#1"/>
        <item algoitem="AFFICHER &quot;x'= -b - sqrtDELTA / 2a   et   x''= -b + sqrtDELTA / 2a&quot;" code="4#x'= -b - sqrtDELTA / 2a   et   x''= -b + sqrtDELTA / 2a#1"/>
        <item algoitem="AFFICHER &quot;--------------------------------&quot;" code="4#--------------------------------#1"/>
        <item algoitem="// Test DELTA" code="19# Test DELTA"/>
        <item algoitem="SI (DELTA&lt;0) ALORS" code="6#DELTA&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;On a ici un discriminant NEGATIF => &quot;" code="4#On a ici un discriminant NEGATIF => #0"/>
            <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
            <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Donc, il n'y a pas de solution pour l'equation &quot;" code="4#Donc, il n'y a pas de solution pour l'equation #0"/>
            <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x^2 + &quot;" code="4#x^2 + #0"/>
            <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x + &quot;" code="4#x + #0"/>
            <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
            <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
            <item algoitem="AFFICHER &quot;=> S = vide&quot;" code="4#=> S = vide#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (DELTA==0) ALORS" code="6#DELTA==0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;On a ici un discriminant EGAL à Zéro => &quot;" code="4#On a ici un discriminant EGAL à Zéro => #0"/>
                    <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
                    <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
                    <item algoitem="//Calcul solution double x'=x''=-b/2a" code="19#Calcul solution double x'=x''=-b/2a"/>
                    <item algoitem="x0 PREND_LA_VALEUR -1*b/(2*a)" code="5#x0#-1*b/(2*a)#pasliste"/>
                    <item algoitem="AFFICHER &quot;Donc, il y a solution double dont x'=x''=&quot;" code="4#Donc, il y a solution double dont x'=x''=#0"/>
                    <item algoitem="AFFICHER x0" code="3#x0#0#pasliste"/>
                    <item algoitem="AFFICHER &quot; pour l'equation = &quot;" code="4# pour l'equation = #0"/>
                    <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
                    <item algoitem="AFFICHER &quot;x^2 + &quot;" code="4#x^2 + #0"/>
                    <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
                    <item algoitem="AFFICHER &quot;x + &quot;" code="4#x + #0"/>
                    <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
                    <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
                    <item algoitem="AFFICHER &quot;=> S = &quot;" code="4#=> S = #0"/>
                    <item algoitem="AFFICHER x0" code="3#x0#0#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;On a ici un discriminant POSITIF => &quot;" code="4#On a ici un discriminant POSITIF => #0"/>
                        <item algoitem="AFFICHER &quot;DELTA = &quot;" code="4#DELTA = #0"/>
                        <item algoitem="AFFICHER DELTA" code="3#DELTA#1#pasliste"/>
                        <item algoitem="//Calcul x' et x'' (2 solutions distinctes)" code="19#Calcul x' et x'' (2 solutions distinctes)"/>
                        <item algoitem="x1 PREND_LA_VALEUR [-1*b-(sqrt(DELTA))]/(2*a)" code="5#x1#[-1*b-(sqrt(DELTA))]/(2*a)#pasliste"/>
                        <item algoitem="x2 PREND_LA_VALEUR [-1*b+sqrt(DELTA)]/(2*a)" code="5#x2#[-1*b+sqrt(DELTA)]/(2*a)#pasliste"/>
                        <item algoitem="AFFICHER &quot;Donc, il y a Deux (02) solutions distinctes dont:&quot;" code="4#Donc, il y a Deux (02) solutions distinctes dont:#1"/>
                        <item algoitem="AFFICHER &quot;x'=&quot;" code="4#x'=#0"/>
                        <item algoitem="AFFICHER x1" code="3#x1#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; et &quot;" code="4# et #0"/>
                        <item algoitem="AFFICHER &quot;x''=&quot;" code="4#x''=#0"/>
                        <item algoitem="AFFICHER x2" code="3#x2#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; pour l'equation &quot;" code="4# pour l'equation #0"/>
                        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
                        <item algoitem="AFFICHER &quot;x^2 + &quot;" code="4#x^2 + #0"/>
                        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
                        <item algoitem="AFFICHER &quot;x + &quot;" code="4#x + #0"/>
                        <item algoitem="AFFICHER c" code="3#c#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; = 0&quot;" code="4# = 0#1"/>
                        <item algoitem="AFFICHER &quot;=> S = {&quot;" code="4#=> S = {#0"/>
                        <item algoitem="AFFICHER x1" code="3#x1#0#pasliste"/>
                        <item algoitem="AFFICHER &quot;;&quot;" code="4#;#0"/>
                        <item algoitem="AFFICHER x2" code="3#x2#0#pasliste"/>
                        <item algoitem="AFFICHER &quot;}&quot;" code="4#}#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
