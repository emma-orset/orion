<!DOCTYPE html>
<html lang="fr">
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="icon" type="image/png" href="Images/logo.png" />
	<title>ORION</title>
</head>
<body>

	<?php 
	echo "<div id='main'>";
	require 'vendor/autoload.php';
	use Michelf\Markdown;

	//header
	//afficherEnTete();

	//div menu
	afficherMenu();

	//section accueil
	if ($page =="accueil")
		afficherAccueil();

	//section articles pas encore créé
	else if ($page == "articles")
		afficherCategories($table_categories);

	else if ($page == "express")
		afficherExpress($table_express);

	else if ($page == "team")
		afficherPageTeam();

	else if ($page == "contact")
		afficherPageContact();

	else if ($page == "connexion")
		formConnexion();

	else if ($page =="déconnexion")
	{
		$_SESSION['co']=false;
		header("Location: .?page=connexion");
	}

	else if ($page == "gestionArticles"){
		if($_SESSION['co'])
		{
			afficherPageGestionArticles();
		}
		else
		{
			afficher404();
		}
	}

	else if ($page == "gestionExpress"){
		if($_SESSION['co'])
		{
			afficherPageGestionExpress();
		}
		else
		{
			afficher404();
		}
	}



	else if ($page == "admin")
	{
		if($_SESSION['co'])
		{
			echo "<section class='contenu'>";
			echo "<h1>BRAVO !!</h1>";
			echo "<br><br><p>Et voilà tu es connecté ! Tu peux maintenant gérer plus facilement les articles et les maquettes de l'Orion Express !</p>";
			echo "</section>";
		}
		else
		{
			afficher404();
		}
	}
		

	else
	{
		$categorieActuelle = null;

		foreach ($table_categories as $ligne)
		{
			if ($page == $ligne['c_nom'] )
				$categorieActuelle=$ligne;

		}

		if($categorieActuelle != null)
		{
			afficherPagesArticles($table_articles,$categorieActuelle);
		}

		else
			afficher404();	
	}
	
	//footer
	afficherFooter();
		
	?>
	
	<script src="main.js"></script>
	</div>
</body>
</html>