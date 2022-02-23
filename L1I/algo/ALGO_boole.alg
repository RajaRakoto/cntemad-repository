<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Choissisez le numero qui correspond à chaque théorème:&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="rep_ch_1 EST_DU_TYPE CHAINE" code="1#CHAINE#rep_ch_1"/>
        <item algoitem="rep_nbr_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#rep_nbr_1"/>
        <item algoitem="rep_ch_2 EST_DU_TYPE CHAINE" code="1#CHAINE#rep_ch_2"/>
        <item algoitem="rep_nbr_2 EST_DU_TYPE CHAINE" code="1#CHAINE#rep_nbr_2"/>
        <item algoitem="Dij EST_DU_TYPE CHAINE" code="1#CHAINE#Dij"/>
        <item algoitem="Conj EST_DU_TYPE CHAINE" code="1#CHAINE#Conj"/>
        <item algoitem="rep_Dij EST_DU_TYPE CHAINE" code="1#CHAINE#rep_Dij"/>
        <item algoitem="rep_Conj EST_DU_TYPE CHAINE" code="1#CHAINE#rep_Conj"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;---------------------------------&quot;" code="4#---------------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ ALGEBRE DE BOOLE ~&quot;" code="4#~ ALGEBRE DE BOOLE ~#1"/>
        <item algoitem="AFFICHER &quot;---------------------------------&quot;" code="4#---------------------------------#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;QUESTION: Quelle est la signe de la dijonction et de la conjonction dans l'algebre de boole ?&quot;" code="4#QUESTION: Quelle est la signe de la dijonction et de la conjonction dans l'algebre de boole ?#1"/>
        <item algoitem="AFFICHER &quot;1.DIJONCTION:&quot;" code="4#1.DIJONCTION:#1"/>
        <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
        <item algoitem="rep_ch_2 PREND_LA_VALEUR &quot;addition&quot;" code="5#rep_ch_2#&quot;addition&quot;#pasliste"/>
        <item algoitem="TANT_QUE (rep_ch_1!=rep_ch_2) FAIRE" code="15#rep_ch_1!=rep_ch_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot;Que signifie ce signe ?&quot;" code="4#Que signifie ce signe ?#1"/>
        <item algoitem="rep_ch_2 PREND_LA_VALEUR &quot;ou&quot;" code="5#rep_ch_2#&quot;ou&quot;#pasliste"/>
        <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
        <item algoitem="TANT_QUE (rep_ch_1!=rep_ch_2) FAIRE" code="15#rep_ch_1!=rep_ch_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot;2.CONJONCTION:&quot;" code="4#2.CONJONCTION:#1"/>
        <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
        <item algoitem="rep_ch_2 PREND_LA_VALEUR &quot;multiplication&quot;" code="5#rep_ch_2#&quot;multiplication&quot;#pasliste"/>
        <item algoitem="TANT_QUE (rep_ch_1!=rep_ch_2) FAIRE" code="15#rep_ch_1!=rep_ch_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot;Que signifie ce signe ?&quot;" code="4#Que signifie ce signe ?#1"/>
        <item algoitem="rep_ch_2 PREND_LA_VALEUR &quot;et&quot;" code="5#rep_ch_2#&quot;et&quot;#pasliste"/>
        <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
        <item algoitem="TANT_QUE (rep_ch_1!=rep_ch_2) FAIRE" code="15#rep_ch_1!=rep_ch_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI&quot;" code="4#VRAI#1"/>
        <item algoitem="AFFICHER &quot;------------------------------&quot;" code="4#------------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ EVALUATION&#x9;DES EXPRESSIONS BOOLEENNES ~&quot;" code="4#~ EVALUATION&#x9;DES EXPRESSIONS BOOLEENNES ~#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;Completez les POSTULATS suivantes :&quot;" code="4#Completez les POSTULATS suivantes :#1"/>
        <item algoitem="//A barre (symbole) = Ā //A double barre (symbole) = Ā' et ainsi de suite" code="19#A barre (symbole) = Ā //A double barre (symbole) = Ā' et ainsi de suite"/>
        <item algoitem="AFFICHER &quot;Ā'=&quot;" code="4#Ā'=#1"/>
        <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
        <item algoitem="rep_ch_2 PREND_LA_VALEUR &quot;A&quot;" code="5#rep_ch_2#&quot;A&quot;#pasliste"/>
        <item algoitem="TANT_QUE (rep_ch_1!=rep_ch_2) FAIRE" code="15#rep_ch_1!=rep_ch_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_ch_1" code="2#rep_ch_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;1.DIJONCTION (+/OU)&quot;" code="4#1.DIJONCTION (+/OU)#1"/>
        <item algoitem="AFFICHER &quot;>>> 1+1=?&quot;" code="4#>>> 1+1=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 1" code="5#rep_nbr_2#1#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 1+0=0+1=?&quot;" code="4#>>> 1+0=0+1=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 1" code="5#rep_nbr_2#1#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 0+0=?&quot;" code="4#>>> 0+0=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 0" code="5#rep_nbr_2#0#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 1barre=?&quot;" code="4#>>> 1barre=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 0" code="5#rep_nbr_2#0#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;1.CONJONCTION (*/ET)&quot;" code="4#1.CONJONCTION (*/ET)#1"/>
        <item algoitem="AFFICHER &quot;>>> 1*1=?&quot;" code="4#>>> 1*1=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 1" code="5#rep_nbr_2#1#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 1*0=0*1=?&quot;" code="4#>>> 1*0=0*1=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 0" code="5#rep_nbr_2#0#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 0*0=?&quot;" code="4#>>> 0*0=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 0" code="5#rep_nbr_2#0#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="//-----------------------------------------" code="19#-----------------------------------------"/>
        <item algoitem="AFFICHER &quot;>>> 0barre=?&quot;" code="4#>>> 0barre=?#1"/>
        <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
        <item algoitem="rep_nbr_2 PREND_LA_VALEUR 1" code="5#rep_nbr_2#1#pasliste"/>
        <item algoitem="TANT_QUE (rep_nbr_1!=rep_nbr_2) FAIRE" code="15#rep_nbr_1!=rep_nbr_2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
            <item algoitem="LIRE rep_nbr_1" code="2#rep_nbr_1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;------------------------------&quot;" code="4#------------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ LES AXIOMES ~&quot;" code="4#~ LES AXIOMES ~#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;Donner la propriété des axiomes suivantes:&quot;" code="4#Donner la propriété des axiomes suivantes:#1"/>
        <item algoitem="AFFICHER &quot;1.COMMUTATIVITE&quot;" code="4#1.COMMUTATIVITE#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+B=B+A&quot;" code="5#Dij#&quot;A+B=B+A&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*B=B*A&quot;" code="5#Conj#&quot;A*B=B*A&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;2.DISTRIBUTIVITE&quot;" code="4#2.DISTRIBUTIVITE#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+(B*C)=(A+B)*(A+C)&quot;" code="5#Dij#&quot;A+(B*C)=(A+B)*(A+C)&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A(B+C)=AB+AC&quot;" code="5#Conj#&quot;A(B+C)=AB+AC&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;3.ASSOCIATIVITE&quot;" code="4#3.ASSOCIATIVITE#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+(B+C)=(A+B)+C=A+B+C&quot;" code="5#Dij#&quot;A+(B+C)=(A+B)+C=A+B+C&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*(B*C)=(A*B)*C=A*B*C&quot;" code="5#Conj#&quot;A*(B*C)=(A*B)*C=A*B*C&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;4.ELEMENT NEUTRE:&quot;" code="4#4.ELEMENT NEUTRE:#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+0=A&quot;" code="5#Dij#&quot;A+0=A&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*1=A&quot;" code="5#Conj#&quot;A*1=A&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;5.ELEMENT ABSORBANT:&quot;" code="4#5.ELEMENT ABSORBANT:#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+1=1&quot;" code="5#Dij#&quot;A+1=1&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*0=0" code="5#Conj#&quot;A*0=0#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;6.COMPLEMENTATION:&quot;" code="4#6.COMPLEMENTATION:#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+Ā=1&quot;" code="5#Dij#&quot;A+Ā=1&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*Ā=0&quot;" code="5#Conj#&quot;A*Ā=0&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;7.IDEMPOTENCE:&quot;" code="4#7.IDEMPOTENCE:#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;A+A=A&quot;" code="5#Dij#&quot;A+A=A&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;A*A=A&quot;" code="5#Conj#&quot;A*A=A&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//----------------------------------------------" code="19#----------------------------------------------"/>
        <item algoitem="AFFICHER &quot;8.INVOLUTION:&quot;" code="4#8.INVOLUTION:#1"/>
        <item algoitem="Dij PREND_LA_VALEUR &quot;Ā'=A&quot;" code="5#Dij#&quot;Ā'=A&quot;#pasliste"/>
        <item algoitem="Conj PREND_LA_VALEUR &quot;Ā''=Ā&quot;" code="5#Conj#&quot;Ā''=Ā&quot;#pasliste"/>
        <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
        <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
        <item algoitem="TANT_QUE (rep_Dij!=Dij OU rep_Conj!=Conj) FAIRE" code="15#rep_Dij!=Dij OU rep_Conj!=Conj">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (rep_Dij!=Dij) ALORS" code="6#rep_Dij!=Dij">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Dij" code="2#rep_Dij#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (rep_Conj!=Conj) ALORS" code="6#rep_Conj!=Conj">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;FAUX!&quot;" code="4#FAUX!#1"/>
                <item algoitem="LIRE rep_Conj" code="2#rep_Conj#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;VRAI!&quot;" code="4#VRAI!#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;------------------------------&quot;" code="4#------------------------------#1"/>
        <item algoitem="AFFICHER &quot;~ LES THEOREMES ~&quot;" code="4#~ LES THEOREMES ~#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;1.(A-barre*B-barre) = A-barre+B-barre&quot;" code="4#1.(A-barre*B-barre) = A-barre+B-barre#1"/>
        <item algoitem="AFFICHER &quot;2.A*B + A*B-barre = A&quot;" code="4#2.A*B + A*B-barre = A#1"/>
        <item algoitem="AFFICHER &quot;3.(A+B)*(A+B-barre) = A&quot;" code="4#3.(A+B)*(A+B-barre) = A#1"/>
        <item algoitem="AFFICHER &quot;4.(A-barre+B-barre) = A-barre * B-barre&quot;" code="4#4.(A-barre+B-barre) = A-barre * B-barre#1"/>
        <item algoitem="AFFICHER &quot;5.A+A*B = A&quot;" code="4#5.A+A*B = A#1"/>
        <item algoitem="AFFICHER &quot;6.A*(A-barre+B) = A*B&quot;" code="4#6.A*(A-barre+B) = A*B#1"/>
        <item algoitem="AFFICHER &quot;7.A*(A+B) = A&quot;" code="4#7.A*(A+B) = A#1"/>
        <item algoitem="AFFICHER &quot;8.A+A-barre*B = A+B&quot;" code="4#8.A+A-barre*B = A+B#1"/>
        <item algoitem="AFFICHER &quot;9.A = B+'C alors B = A+'C&quot;" code="4#9.A = B+'C alors B = A+'C#1"/>
        <item algoitem="AFFICHER &quot;10.A+A*B=A &lt;=> A*(A+B)=A ; A+1=1 &lt;=> A*0=0&quot;" code="4#10.A+A*B=A &lt;=> A*(A+B)=A ; A+1=1 &lt;=> A*0=0#1"/>
        <item algoitem="AFFICHER &quot;Choissisez le numero qui correspond à chaque théorème:&quot;" code="4#Choissisez le numero qui correspond à chaque théorème:#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
