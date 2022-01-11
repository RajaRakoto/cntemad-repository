	//fonction test nombre ou lettre
	function numLetter(valeur){
		//convertion si valeur est un entier
		valeur = parseInt(valeur);
		if (isNaN(valeur)) {
			alert("C'est une lettre");
		}
		else{
			alert("C'est un nombre");
		}
	}