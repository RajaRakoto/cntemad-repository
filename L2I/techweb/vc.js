//fonction pour tester si lettre est consone ou voyelle
function control(letter){
  //conversion en miniscule si letter est majuscule
  letter = letter.toLowerCase();

  //test 
  if (letter == 'a' || letter == 'o' || letter == 'i' || letter =='y' || letter == 'e' || letter == 'u') {
    alert("C'est une voyelle !");
  }
  else
  {
    alert("C'est une consone !");
  }

}