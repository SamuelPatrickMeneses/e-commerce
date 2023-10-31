<?php

$host = $_ENV['DB_HOST'];
$name = $_ENV['DB_NAME'];
$user = $_ENV['DB_USER'];
$password = $_ENV['DB_PASSWORD'];
$port = $_ENV['DB_PORT'];

try {
	$pdo = new PDO("mysql:host=$host;port=$port;dbname=$name", $user, $password);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch( PDOException $exception ) {
	echo "Connection error :" . $exception->getMessage();
}