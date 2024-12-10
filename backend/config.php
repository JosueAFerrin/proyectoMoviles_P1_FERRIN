<?php
$host = 'localhost';
$dbname = 'miapp';
$user = 'root';
$password = 'password';

$conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);

$secret_key = "mi_clave_secreta";
?>
