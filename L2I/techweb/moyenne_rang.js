
		//objet eleve
    class eleves {
      constructor(){
         this.name = prompt("Entrer le nom de l'eleve : ");
         this.maths = Number(prompt("Maths : "));
         this.anglais = Number(prompt("Anglais : "));
         this.svt = Number(prompt("Svt : "));
         this.physique = Number(prompt("Physique : "));
         this.moyenne = (this.maths +  this.svt +  this.physique + this.anglais)/4;
      }
    }

  //nombre d'eleve (ici 2)

  alert("BIENVENUE! vous pouvez saisir des notes jusqu'a 3 eleves");

  const eleve1 = new eleves;
  const eleve2 = new eleves;
  const eleve3 = new eleves;


  //affichage + moyenne (cotE html)
  document.write(`

    <center>
    <table border="1">
      <caption><h1> ${eleve1.name}</h1></caption>
      <thead>
        <th style="background-color:grey"></th>
        <th> Maths </th>
        <th> Anglais </th>
        <th> Svt </th>
        <th> Physique </th>
      </thead>
      <tr>
        <th> Note(/20) </th>
        <td> ${eleve1.maths} </td>
        <td> ${eleve1.anglais} </td>
        <td> ${eleve1.svt} </td>
        <td> ${eleve1.physique} </td>
      </tr>

    </table><br>

    <p style="color:green"> => MOYENNE = ${eleve1.moyenne}

    <br>
    <br>
    </center>

    `);

  document.write(`
    <center>
    <table border="1">
      <caption><h1> ${eleve2.name}</h1></caption>
      <thead>
        <th style="background-color:grey"></th>
        <th> Maths </th>
        <th> Anglais </th>
        <th> Svt </th>
        <th> Physique </th>
      </thead>
      <tr>
        <th> Note(/20) </th>
        <td> ${eleve2.maths} </td>
        <td> ${eleve2.anglais} </td>
        <td> ${eleve2.svt} </td>
        <td> ${eleve2.physique} </td>
      </tr>

    </table><br>

    <p style="color:green"> => MOYENNE = ${eleve2.moyenne}

    <br>
    <br>
    <br>
    </center>


    `);

  document.write(`
    <center>
    <table border="1">
      <caption><h1> ${eleve3.name}</h1></caption>
      <thead>
        <th style="background-color:grey"></th>
        <th> Maths </th>
        <th> Anglais </th>
        <th> Svt </th>
        <th> Physique </th>
      </thead>
      <tr>
        <th> Note(/20) </th>
        <td> ${eleve3.maths} </td>
        <td> ${eleve3.anglais} </td>
        <td> ${eleve3.svt} </td>
        <td> ${eleve3.physique} </td>
      </tr>

    </table><br>

    <p style="color:green"> => MOYENNE = ${eleve3.moyenne}

    <br>
    <br>
    <br>
    </center>


    `);

  //rang

    //transforme l'objet en tableau (Ici, on a 2 elements)
    let tabEleves = [eleve1,eleve2,eleve3];

    //taille du tableau
    let n = tabEleves.length;

    //trie de moyenne (ordre decroissant) et trie des eleves par rapport au nom
    for (var i = 0; i < n - 1; i++) {
      for (var j = i + 1; j < n; j++) {
        if (tabEleves[i].moyenne < tabEleves[j].moyenne) {
          let temp0 = tabEleves[i].moyenne;
            tabEleves[i].moyenne = tabEleves[j].moyenne;
            tabEleves[j].moyenne = temp0;
          let temp1 = tabEleves[i].name;
            tabEleves[i].name = tabEleves[j].name;
            tabEleves[j].name = temp1;
        }
      
      }
    }

    document.write(`<center><h3 style="background-color:red"> ~ RANG des eleves ~ </h3><br></center>`);

    //affichage rang (apres trie decroissant)
      for (var k = 0; k < n; k++) {
        if (k == 0) {
          document.write(`

            <center>
            <strong>
            <p>
            ${tabEleves[k].name} est le ${k+1}er (moyenne => ${tabEleves[k].moyenne})
              <br>
            </p>
            </strong>
            </center>

            `);

        }
        else
        {
          document.write(`

            <center>
            <strong>
            <p>
            ${tabEleves[k].name} est le ${k+1}eme (moyenne => ${tabEleves[k].moyenne})
              <br>
            </p>
            </strong>
            </center>

            `);
        }
      
      }
