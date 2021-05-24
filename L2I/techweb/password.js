
			function login(user, password){

				//login par defaut
					let userDefault = "Rakoto";
					let passwordDefault = "motdepasse2020";


					if (user === userDefault && passwordDefault === password) {
						alert("connected !");
						document.write("Bienvenue sur ma page !")
					}
					else if (user != userDefault) {
						alert("pseudo incorrect, ressayez !");
					}
					else if (password != userPasswd) {
						alert("mot de passe incorrect, ressayez !");
					}
			}