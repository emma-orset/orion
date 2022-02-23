<?php 

$page = "accueil";
if (isset($_GET["page"]))
	$page = $_GET["page"];

if (isset($_POST["action"])) 
{
	if($_POST["action"] == "Connexion") 
	{
		if(!empty($_POST["pseudo"]) && !empty($_POST["mdp"]))
		{
			if ($_POST["pseudo"] == 'orion.express.journal' && $_POST["mdp"]=='7iG#Va!5b%&1')
			{
				$_SESSION['co']=true;
				header("Location: .?page=admin");
			}
		}

		else 
		{
			echo "Le pseudo et le mot de passe doivent être saisis.";	
		}
	}

	// if($_POST["action"] == "Envoyer") 
	// {
		
	// 	//Detection erreur
	// 	$erreur=false;
	// 	$msg="Champs non renseigné. Veuillez entrer ";
	// 	if (empty($_POST["nom"]) )
	// 		{$msg .= "votre NOM et Prénom.<br />" ; 
	// 		$erreur = true;}

	// 	if (empty($_POST["email"]) )
	// 		{$msg .= "votre e-mail.<br />" ; 
	// 		$erreur = true;}

	// 	if (empty($_POST["sujet"]) )
	// 		{$msg .= "un sujet pour l'email.<br />" ; 
	// 		$erreur = true;}

	// 	if (empty($_POST["message"]) )
	// 		{$msg .= "bin... l'email quoi...<br />" ; 
	// 		$erreur = true;}

	// 	if ($erreur)
	// 	{
	// 		// header("Location: .?page=gestionArticles");
	// 		echo "<p>".$msg."</p>";
	// 	}

	// 	else 
	// 	{
	// 		$nom=$_POST["nom"];
	// 		$email=$_POST["email"];
	// 		$sujet=$_POST["sujet"];
	// 		$message=$_POST["message"];

	// 		$emailOrion = "thibault.glaude@laposte.net";
	// 		$headers = "From: ". $email;
	// 		$txt ="Vous avez reçu un e-mail de ".$nom ." depuis le site web.\n\n". $message;

	// 		mail($emailOrion, $sujet, $txt, $headers);

	// 		header("Location: .?page=contact");
		
	// 		echo "<p>Votre article a bien été ajouté.</p>"	;

	// 	}
	// }

	if($_POST["action"] == "Ajouter") 
	{
		
		//Detection erreur
		$erreur=false;
		$msg="Champs non renseigné. Veuillez entrer ";
		if (empty($_POST["categorie"]) )
			{$msg .= "la categorie<br />" ; 
			$erreur = true;}

		if (empty($_POST["titre"]) )
			{$msg .= "le titre<br />" ; 
			$erreur = true;}

		if (empty($_POST["texte"]) )
			{$msg .= "le texte<br />" ; 
			$erreur = true;}

		if (empty($_POST["auteur"]) )
			{$msg .= "l'auteur<br />" ; 
			$erreur = true;}

		if (empty($_POST["date"]) )
			{$msg .= "la date<br />" ; 
			$erreur = true;}

		if ($erreur)
		{
			// header("Location: .?page=gestionArticles");
			echo "<p>".$msg."</p>";
		}

		else 
		{
			insererArticle($_POST["categorie"], 
						$_POST["titre"], 
				        $_POST["texte"], 
				        $_POST["image"], 
				        $_POST["auteur"], 
				        $_POST["date"], 
				        $_POST["autre"]);
			// header("Location: .?page=gestionArticles");
		
			echo "<p>Votre article a bien été ajouté.</p>"	;

		}
	}

	if($_POST["action"] == "Modifier") 
	{
		
		//Detection erreur
		$erreur=false;
		$msg="Champs non renseigné. Veuillez entrer ";
		if (empty($_POST["num"]) )
			{$msg .= "l'article<br />" ; 
			$erreur = true;}

		if (empty($_POST["categorie"]) )
			{$msg .= "la categorie<br />" ; 
			$erreur = true;}

		if (empty($_POST["titre"]) )
			{$msg .= "le titre<br />" ; 
			$erreur = true;}

		if (empty($_POST["texte"]) )
			{$msg .= "le texte<br />" ; 
			$erreur = true;}

		if (empty($_POST["auteur"]) )
			{$msg .= "l'auteur<br />" ; 
			$erreur = true;}

		if (empty($_POST["date"]) )
			{$msg .= "la date<br />" ; 
			$erreur = true;}

		if ($erreur)
		{
			// header("Location: .?page=gestionArticles");
			echo "<p>".$msg."</p>";
		}

		else 
		{
			updateArticle($_POST["num"],
						$_POST["categorie"], 
						$_POST["titre"], 
				        $_POST["texte"], 
				        $_POST["image"], 
				        $_POST["auteur"], 
				        $_POST["date"], 
				        $_POST["autre"]);
			// header("Location: .?page=gestionArticles");
		
			echo "<p>Votre article a bien été modifié.</p>"	;

		}
	}

	if($_POST["action"] == "Supprimer") 
	{
		$erreur=false;
		$msg="Champs non renseigné. Veuillez entrer ";
		if (empty($_POST["num"]) )
			{$msg .= "le numéro de l'article<br />" ; 
			$erreur = true;}

		if ($erreur) 
		{
			// header("Location: .?page=gestionArticles");
			echo $msg;
		} 

		else 
		{
			supprimerArticle($_POST["num"]);
			// header("Location: .?page=gestionArticles");
			echo "<p>Votre article a bien été supprimé.</p>"	;
		}
	}


	if($_POST["action"] == "Ajouter un Orion Express") 
	{
		
		//Detection erreur
		$erreur=false;
		$msg="Champs non renseigné. Veuillez entrer ";
		if (empty($_POST["titreE"]) )
			{$msg .= "la titre<br />" ; 
			$erreur = true;}

		if (empty($_POST["imageE"]) )
			{$msg .= "l'image<br />" ; 
			$erreur = true;}

		if (empty($_POST["pdfE"]) )
			{$msg .= "le PDF<br />" ; 
			$erreur = true;}

		if (empty($_POST["dateE"]) )
			{$msg .= "la date<br />" ; 
			$erreur = true;}

		if ($erreur)
		{
			// header("Location: .?page=gestionExpress");
			echo "<p>".$msg."</p>";
		}

		else 
		{
			insererExpress($_POST["titreE"],
				        $_POST["imageE"], 
				        $_POST["pdfE"], 
				        $_POST["dateE"]);
			// header("Location: .?page=gestionExpress");
			echo "<p>Vous avez bien ajouté un Orion Express.</p>"	;

		}
	}

	if($_POST["action"] == "Supprimer un Orion Express") 
	{
		$erreur=false;
		$msg="Champs non renseigné. Veuillez entrer ";
		if (empty($_POST["numE"]) )
			{$msg .= "le numéro de l'Orion Express<br />" ; 
			$erreur = true;}

		if ($erreur) 
		{
			// header("Location: .?page=gestionExpress"); 
			echo $msg;
		} 

		else 
		{
			supprimerExpress($_POST["numE"]);
			// header("Location: .?page=gestionExpress");
			echo "<p>Vous avez bien ajouté un Orion Express.</p>"	;
		}
	}
}



$table_articles = chargerArticles();
$table_categories = chargerCategories();
$table_express = chargerExpress();