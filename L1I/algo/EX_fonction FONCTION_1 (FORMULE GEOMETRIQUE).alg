<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER triangle_bissectrice" texte="le but de cette algorithme est de calculer les differents formules géometriques AIRE, PERIMETRE, MEDIANE et BISSECTRICE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION formule_triangle_aire (x,y)" code="201#formule_triangle_aire #x,y">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="triangle_aire EST_DU_TYPE NOMBRE" code="1#NOMBRE#triangle_aire"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="triangle_aire PREND_LA_VALEUR (x*y)/2" code="5#triangle_aire#(x*y)/2#pasliste"/>
            <item algoitem="RENVOYER triangle_aire" code="205#triangle_aire"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION formule_triangle_perimetre (x,y,z)" code="201#formule_triangle_perimetre #x,y,z">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="triangle_perimetre EST_DU_TYPE NOMBRE" code="1#NOMBRE#triangle_perimetre"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="triangle_perimetre PREND_LA_VALEUR x+y+z" code="5#triangle_perimetre#x+y+z#pasliste"/>
            <item algoitem="RENVOYER triangle_perimetre" code="205#triangle_perimetre"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION formule_triangle_mediane (x,y,z)" code="201#formule_triangle_mediane #x,y,z">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="triangle_mediane EST_DU_TYPE NOMBRE" code="1#NOMBRE#triangle_mediane"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="triangle_mediane PREND_LA_VALEUR sqrt(2*x^2+2*y^2-z^2)/2" code="5#triangle_mediane#sqrt(2*x^2+2*y^2-z^2)/2#pasliste"/>
            <item algoitem="RENVOYER triangle_mediane" code="205#triangle_mediane"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION formule_triangle_bissectrice (x,y,z,x1)" code="201#formule_triangle_bissectrice #x,y,z,x1">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="triangle_bissectrice EST_DU_TYPE NOMBRE" code="1#NOMBRE#triangle_bissectrice"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="triangle_bissectrice PREND_LA_VALEUR (2/x+y)*sqrt(x*y*z*(z-x1))" code="5#triangle_bissectrice#(2/x+y)*sqrt(x*y*z*(z-x1))#pasliste"/>
            <item algoitem="RENVOYER triangle_bissectrice" code="205#triangle_bissectrice"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;~ CAlCUL AIRE TRIANGLE ~&quot;" code="4#~ CAlCUL AIRE TRIANGLE ~#1"/>
        <item algoitem="AFFICHER &quot;Entrez la base (b)&quot;" code="4#Entrez la base (b)#1"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la hauteur (h)&quot;" code="4#Entrez la hauteur (h)#1"/>
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="triangle_aire PREND_LA_VALEUR formule_triangle_aire(b,h)" code="5#triangle_aire#formule_triangle_aire(b,h)#pasliste"/>
        <item algoitem="AFFICHER &quot;AIRE = &quot;" code="4#AIRE = #0"/>
        <item algoitem="AFFICHER triangle_aire" code="3#triangle_aire#1#pasliste"/>
        <item algoitem="AFFICHER &quot;------------------------&quot;" code="4#------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ CAlCUL PERIMETRE TRIANGLE ~&quot;" code="4#~ CAlCUL PERIMETRE TRIANGLE ~#1"/>
        <item algoitem="AFFICHER &quot;Entrez (a)&quot;" code="4#Entrez (a)#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez (b)&quot;" code="4#Entrez (b)#1"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez (c)&quot;" code="4#Entrez (c)#1"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="SI (a>0 ET b>0 ET c>0) ALORS" code="6#a>0 ET b>0 ET c>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="triangle_perimetre PREND_LA_VALEUR formule_triangle_perimetre(a,b,c)" code="5#triangle_perimetre#formule_triangle_perimetre(a,b,c)#pasliste"/>
            <item algoitem="AFFICHER &quot;PERIMETRE = &quot;" code="4#PERIMETRE = #0"/>
            <item algoitem="AFFICHER triangle_perimetre" code="3#triangle_perimetre#1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="TANT_QUE (a&lt;=0 OU b&lt;=0 OU c&lt;=0) FAIRE" code="15#a&lt;=0 OU b&lt;=0 OU c&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (a&lt;=0) ALORS" code="6#a&lt;=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;La valeur de (a) doit être strictement supérieur à 0&quot;" code="4#La valeur de (a) doit être strictement supérieur à 0#1"/>
                <item algoitem="LIRE a" code="2#a#pasliste"/>
                <item algoitem="triangle_perimetre PREND_LA_VALEUR formule_triangle_perimetre(a,b,c)" code="5#triangle_perimetre#formule_triangle_perimetre(a,b,c)#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (b&lt;=0) ALORS" code="6#b&lt;=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;La valeur de (b) doit être strictement supérieur à 0&quot;" code="4#La valeur de (b) doit être strictement supérieur à 0#1"/>
                <item algoitem="LIRE b" code="2#b#pasliste"/>
                <item algoitem="triangle_perimetre PREND_LA_VALEUR formule_triangle_perimetre(a,b,c)" code="5#triangle_perimetre#formule_triangle_perimetre(a,b,c)#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (c&lt;=0) ALORS" code="6#c&lt;=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;La valeur de (c) doit être strictement supérieur à 0&quot;" code="4#La valeur de (c) doit être strictement supérieur à 0#1"/>
                <item algoitem="LIRE c" code="2#c#pasliste"/>
                <item algoitem="triangle_perimetre PREND_LA_VALEUR formule_triangle_perimetre(a,b,c)" code="5#triangle_perimetre#formule_triangle_perimetre(a,b,c)#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;PERIMETRE = &quot;" code="4#PERIMETRE = #0"/>
        <item algoitem="AFFICHER triangle_perimetre" code="3#triangle_perimetre#1#pasliste"/>
        <item algoitem="AFFICHER &quot;------------------------&quot;" code="4#------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ CAlCUL MEDIANE TRIANGLE ~&quot;" code="4#~ CAlCUL MEDIANE TRIANGLE ~#1"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de a:&quot;" code="4#Entrez la valeur de a:#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de b:&quot;" code="4#Entrez la valeur de b:#1"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de c&quot;" code="4#Entrez la valeur de c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="TANT_QUE (b>a ET b>c) FAIRE" code="15#b>a ET b>c">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;ERREUR!: la valeur de (b) doit être inférieur à la valeur de (a) et (c)&quot;" code="4#ERREUR!: la valeur de (b) doit être inférieur à la valeur de (a) et (c)#1"/>
            <item algoitem="LIRE b" code="2#b#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (b&lt;a ET b&lt;c) ALORS" code="6#b&lt;a ET b&lt;c">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="triangle_mediane PREND_LA_VALEUR formule_triangle_mediane(a,c,b)" code="5#triangle_mediane#formule_triangle_mediane(a,c,b)#pasliste"/>
            <item algoitem="AFFICHER &quot;MEDIANE = &quot;" code="4#MEDIANE = #0"/>
            <item algoitem="AFFICHER triangle_mediane" code="3#triangle_mediane#1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (b>=a OU b&lt;=c) ALORS" code="6#b>=a OU b&lt;=c">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="triangle_mediane PREND_LA_VALEUR formule_triangle_mediane(a,c,b)" code="5#triangle_mediane#formule_triangle_mediane(a,c,b)#pasliste"/>
            <item algoitem="AFFICHER &quot;MEDIANE = &quot;" code="4#MEDIANE = #0"/>
            <item algoitem="AFFICHER triangle_mediane" code="3#triangle_mediane#1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;------------------------&quot;" code="4#------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ CAlCUL BISSECTRICE TRIANGLE ~&quot;" code="4#~ CAlCUL BISSECTRICE TRIANGLE ~#1"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de a:&quot;" code="4#Entrez la valeur de a:#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de b:&quot;" code="4#Entrez la valeur de b:#1"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la valeur de c&quot;" code="4#Entrez la valeur de c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="s PREND_LA_VALEUR (a+b+c)/2" code="5#s#(a+b+c)/2#pasliste"/>
        <item algoitem="AFFICHER &quot;la surface (s) = &quot;" code="4#la surface (s) = #0"/>
        <item algoitem="AFFICHER s" code="3#s#1#pasliste"/>
        <item algoitem="triangle_bissectrice PREND_LA_VALEUR formule_triangle_bissectrice(a,c,s,b)" code="5#triangle_bissectrice#formule_triangle_bissectrice(a,c,s,b)#pasliste"/>
        <item algoitem="AFFICHER &quot;BISSECTRICE = &quot;" code="4#BISSECTRICE = #0"/>
        <item algoitem="AFFICHER triangle_bissectrice" code="3#triangle_bissectrice#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
