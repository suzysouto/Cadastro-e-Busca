<?php
	include_once("conexao.php");

	$filtro = isset($_GET['filtro'])?$_GET['filtro']:"";

	$sql = "select * from pessoas where profissao like '%$filtro%' order by nome";
	$consulta = mysqli_query($conn, $sql);
	$registros = mysqli_num_rows($consulta);

	
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8" />
	<title>Sistema de Cadastro</title>
	<link rel="stylesheet" type="text/css" href="estilo.css" />
</head>
<body>
	<div class="container">
		<nav>
			<ul class="menu">
				<a href="index.php"><li>Cadastro</li></a>
				<a href="consultas.php"><li>Consultas</li></a>
			</ul>
		</nav>
		<section>
			<h1>Consultas</h1>
			<hr><br>

			<form method="get" action="">
				Filtrar por profissão: <input type="text" name="filtro" class="campo" required autofocus />
				<input type="submit" value="Pesquisar" class="btn" />
			</form>
			<article>
				<?php

				print("Resultado da pesquisa com a palavra <strong>$filtro</strong><br><br>");

				print("$registros registros encontrados.");

				print("<br><br>");

				while ($exibirRegistros = mysqli_fetch_array($consulta)){
					$codigo = $exibirRegistros[0];
					$nome = $exibirRegistros[1];
					$email = $exibirRegistros[2];
					$profissao = $exibirRegistros[3];

					
					echo "<article>";

					echo "$codigo<br>";
					echo "$nome<br>";
					echo "$email<br>";
					echo "$profissao";

					echo "</article>";
				}
				mysqli_close($conn);
			?>
			</article>
		</section>
	</div>
</body>
</html>