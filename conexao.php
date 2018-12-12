<?php
	$host = "localhost";
	$user = "root"; 
	$password = "";
	$db = "pesquisa";

	$conn = mysqli_connect($host, $user, $password, $db);

	if(!$conn){
		print("Falha na conexão com Banco de Dados.");
	}
?>