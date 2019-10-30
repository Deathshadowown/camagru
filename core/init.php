<?php
	include 'database/connection.php';
	include 'classes/user.php';
	include 'classes/camagru.php';
	include 'classes/follow.php';

	global $pdo;

	session_start();

	$getFromU = new User($pdo);
	$getFromC = new Camagru($pdo);
	$getFromF = new Follow($pdo);

	define("BASE_URL", "http://localhost:8080/camagru/");
?>