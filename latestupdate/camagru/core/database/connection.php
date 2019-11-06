<?php 
	$dsn = 'mysql:host=localhost; dbname=cam';
	$user = 'root';
	$password = 'Gooseberry21';
 

	try{
		$pdo = new PDO($dsn, $user, $password);
	}catch(PDOException $e){
		echo 'connection error! ' . $e;
	}	
?>