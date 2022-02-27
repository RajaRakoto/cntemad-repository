 <?php
 	$server = 'localhost';
 	$database = 'cntemad';
 	$user = 'root';
 	$password = '';
 	
 	try {
 		$conn = new PDO("mysql:host=$server;dbname=$database", $user, $password);
 		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 		echo "connexion reussi !";
 	}catch (PDOException $e) {
 		echo "erreur de connexion: ". $e->getMessage();
 	}
 ?>
 

