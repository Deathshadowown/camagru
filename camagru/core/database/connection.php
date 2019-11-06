<?php 
	$dsn = 'mysql:host=localhost; dbname=camagru';
	$user = 'root';
	$password = 'root';
 

	try{
		$pdo = new PDO($dsn, $user, $password);
	}catch(PDOException $e){
		echo 'connection error! ' . $e;
	}	
?>