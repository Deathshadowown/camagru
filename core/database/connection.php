<?php
	$dest = 'mysql:host=localhost; dbname=camagru';
	$user = 'root';
	$pass = 'Gooseberry211';

	try{
		$pdo = new PDO($dest, $user, $pass);
	}catch(PDOException $error){
		echo 'Connection error! ' . $error->getMessage();
	}
?>