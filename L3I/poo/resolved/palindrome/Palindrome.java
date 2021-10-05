import java.util.Scanner;

class Palindrome {
    private static Scanner sc = new Scanner(System.in);

    public static void main (String args[]) {
       System.out.print("Entrez un mot ou une phrase : ");
       String origin = sc.nextLine();

        // convertion de `origin` en minuscules pour eviter les problemes de casse
       String words = origin.toLowerCase();

       /* STEP 1 */
        // on ne garde que les caracteres alphabetiques (les listes de caracteres autorisEs)
       String allowedList = "abcdefghijklmnopqrstuvwxyz";
       String temp = "";
        for (int i = 0; i < words.length(); i++) {
            char c = words.charAt(i); //recupere une a une tout le caracteres du mot en entrE (Si words="Hello" i=0->'H' | i=3->'l')
            if (allowedList.indexOf(c) != -1) { //renvoie la position de la première occurrence de chaque caractere recuperE dans 'c' par rapport a 'allowedlist' (caracteres alphabetiques ) | on fait une test si cette occurrence n'est pas une des caracteres speciaux ou des nombres
                temp += c; // temp = temp + c
            }
        }
        words = temp; //si tout ce passe bien, la var 'words' garde le mot ou la phrase en entrE(e)

        // on teste si 'words' est un palindrome
        int leftPos = 0; //position du 1er element dans 'words'
        int rightPos = words.length() - 1; //position du dernier element dans 'words' (Si words="Hello" | words.length() retourne 5 | reduisE a 1 pour obtenir cette position)
        boolean palindrome = true;
        while ((leftPos < rightPos) && palindrome) { //ici, tant que les 2 valeurs de 'leftPos' et 'RightPos' sont identique, 'Palindrome' sera toujours 'true' | on arrete le boucle si 'leftPos' arrive au meme valeur que 'rightPos'
            if (words.charAt(leftPos) != words.charAt(rightPos)) { 
                palindrome=false;
            }
            leftPos++; //incrementation de 1 de 'leftPos'
            rightPos--; //decrementation de 1 de 'rightPos'
        }

        if (palindrome) {
            System.out.println("Oui, c'est un Palindrome !");
        } else {
            System.out.println("Non, ce n'est pas un Palindrome !");
        }
    }
}