<?php
	require 'vendor/autoload.php';
	use Michelf\Markdown;

function chargerArticles() {
	global $linkDB;
	$sql = "SELECT * FROM articles";
	$result = mysqli_query($linkDB, $sql);

	$list = array();
	while ($row = mysqli_fetch_assoc($result))
		$list[]=$row;
	
	return $list;
}

function afficherPagesArticles($table_articles, $lignec)
{
	global $page;

	echo "<section class='contenu'>";
	if ($page=="Actualité"){
		echo "<h1>Catégorie Actualité</h1>";
		echo "<br><br><p>Hey eh bien vous voilà prêts à lire nos articles ! Pour faciliter la navigation dans la page, vous pouvez cliquer sur l'article qui vous intéresse dans la liste ci-dessous. Ils sont classés du plus récent au plus ancien !</p><br><br>";
			echo "<nav><ul>";
			krsort($table_articles);
			foreach ($table_articles as $lignea)
			{
				if ($lignec['c_num'] == $lignea["a_categorie"]){
				
					echo "<li><a href='#".$lignea['a_num']."'><img class='logo' src='Images/open-book.webp'/>".$lignea['a_titre']."</a></li>";
					
				}
			}
			echo "</ul></nav>";
			echo "<br><br><p>Bonne lecture !</p>";
		
	}
	else if ($page=="Découverte"){
		echo "<h1>Catégorie Découverte</h1>";
		echo "<br><br><p>Hey eh bien vous voilà prêts à lire nos articles ! Pour faciliter la navigation dans la page, vous pouvez cliquer sur l'article qui vous intéresse dans la liste ci-dessous. Ils sont classés du plus récent au plus ancien !</p><br><br>";
			echo "<nav><ul>";
			krsort($table_articles);
			foreach ($table_articles as $lignea)
			{
				if ($lignec['c_num'] == $lignea["a_categorie"]){
				
					echo "<li><a href='#".$lignea['a_num']."'><img class='logo' src='Images/open-book.webp'/>".$lignea['a_titre']."</a></li>";
				}
			}
			echo "</ul></nav>";
			echo "<br><br><p>Bonne lecture !</p>";
		
	}
	else if ($page=="IUT_INFO"){
		echo "<h1>Catégorie IUT INFO</h1>";
		echo "<br><br><p>Hey eh bien vous voilà prêts à lire nos articles ! Pour faciliter la navigation dans la page, vous pouvez cliquer sur l'article qui vous intéresse dans la liste ci-dessous. Ils sont classés du plus récent au plus ancien !</p><br><br>";
			echo "<nav><ul>";
			krsort($table_articles);
			foreach ($table_articles as $lignea)
			{
				if ($lignec['c_num'] == $lignea["a_categorie"]){
				
					echo "<li><a href='#".$lignea['a_num']."'><img class='logo' src='Images/open-book.webp'/>".$lignea['a_titre']."</a></li>";
				}
			}
			echo "</ul></nav>";
			echo "<br><br><p>Bonne lecture !</p>";
		
	}
	else if ($page=="Reportage"){
		echo "<h1>Catégorie Reportage</h1>";
		echo "<br><br><p>Hey eh bien vous voilà prêts à lire nos articles ! Pour faciliter la navigation dans la page, vous pouvez cliquer sur l'article qui vous intéresse dans la liste ci-dessous. Ils sont classés du plus récent au plus ancien !</p><br><br>";
			echo "<nav><ul>";
			krsort($table_articles);
			foreach ($table_articles as $lignea)
			{
				if ($lignec['c_num'] == $lignea["a_categorie"]){
				
					echo "<li><a href='#".$lignea['a_num']."'><img class='logo' src='Images/open-book.webp'/>".$lignea['a_titre']."</a></li>";
				}
			}
			echo "</ul></nav>";
			echo "<br><br><p>Bonne lecture !</p>";
	}

	foreach ($table_articles as $ligne) 
	{
		if ($lignec['c_num'] == $ligne['a_categorie'])
		{

				afficherArticles($ligne);
		}
	}
	echo "</section>";
}


function afficherArticles($ligne) 
{

	echo "<article class='articles' id='" .$ligne['a_num']. "'>";
	echo "<div class='toutarticle'>";

	echo "<div>";
	echo "<h2 class='titreArticles'>".$ligne['a_titre']."</h2>";
	echo "</div>";

	echo "<div class='sauf-titre'>";
	echo "<div>";
	echo "<img class='imgArticles' src=Images\\".$ligne['a_image']." alt=".$ligne['a_image'].">";
	echo "<p class='auteur'>".$ligne['a_auteur']."</p>";
	echo "<p class='date'>".$ligne['a_date']."</p>";
	echo "<br><p class='poptop'><a href='#top'>Retourner en haut de la page</a></p><br><br>";
	echo "</div>";

	echo "<div class ='dansArticle'>";	
	echo "<p>".Markdown::defaultTransform($ligne['a_texte'])."</p>";
	echo $ligne['a_autre'];
	echo "</div>";
	echo "</div>";

	echo "</div>";
	echo "</article>";

		
}

function afficherPageGestionArticles(){
	echo "<section class='contenu'>";
	echo "<h1>Gestionnaire des Articles</h1>";
	echo "<br><br><p>Bienvenue sur votre gestionnaire de gestion des articles du journal Orion. Vous pouvez <a href='#ajoutArticle'>ajouter</a>, <a href='#supArticle'>supprimer</a> ou <a href='#modifArticle'>modifier</a> des articles. A vous de jouer !</p><br><br>";
	ajoutArticleForm();
	modifArticleForm();
	supArticleForm();
	echo "</section>";
}

function ajoutArticleForm() {
global $table_categories;
?>
		
		<div id='ajoutArticle'>
			<h2>Ajouter un Article :</h2>

			<form method='post' action='.'>

				<div class="row">
					<div class="col-25">
						<label for="categorie">Catégorie :</label>
					</div>
					<div class="col-75">
			    		<select name="categorie" id="categorie" title="Choisissez une catégorie. Champ obligatoire" required>
			      		<?php genererOptionsCategories($table_categories) ?>
			    		</select>
			    	</div>
			    </div>

				<div class="row">
					<div class="col-25">
						<label for="titre">Titre :</label>
					</div>
					<div class="col-75">
						<input id="titre" type="text" name="titre" placeholder="Titre de l'article" title="Entrez un titre pour l'article. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="texte">Texte :</label>
					</div>
					<div class="col-75">
						<textarea id="texte" name="texte" style="height: 400px" placeholder="Contenu de l'article" title="Entrez un contenu pour l'article. Champ obligatoire" required></textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="image">Image :</label>
					</div>
					<div class="col-75">
						<input id="image" type="text" name="image" placeholder="Image" title="Entrez le nom de l'image et son extension (.webp)">
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="auteur">Auteur :</label>
					</div>
					<div class="col-75">
						<input id="auteur" type="text" name="auteur" placeholder="NOM Prénom" title="Entrez l'auteur ou les auteurs de l'article séparés d'une virgule (,). Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="date">Date :</label>
					</div>
					<div class="col-75">
						<input id="date" type="date" name="date" title="Entrez la date de l'écriture finale de l'article. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="autre">Autre :</label>
					</div>
					<div class="col-75">
						<input id="autre" type="text" name="autre" placeholder="Autre texte ou document"  title="Vous pouvez ajouter un lien (<a href='lien.extension' target='_blank'>Nom du lien</a>), un pdf, une image (<img src='Images\image.extension' alt='titre de l'image>)... ">
					</div>
				</div>

				<div class="row">
					<input  type="submit" 
							name="action" 
							value="Ajouter">
				</div>
			</form>
		</div>
		

<?php

}

function modifArticleForm() {
global $table_categories;
global $table_articles;
?>
		
		<div id='modifArticle'>
			<h2>Modifier un Article :</h2>

			<form method='post' action='.'>

				<div class="row">
					<div class="col-25">
						<label for="num">Article à modifier :</label>
					</div>
					<div class="col-75">
		    			<select name="num" id="num" title="Choisissez un numéro d'article. Champ obligatoire" required>
		      			<?php genererOptionsNumArticles($table_articles) ?>
		    			</select>
		    		</div>
		    	</div>

				<div class="row">
					<div class="col-25">
						<label for="categorie">Catégorie :</label>
					</div>
					<div class="col-75">
			    		<select name="categorie" id="categorie" title="Choisissez une catégorie. Champ obligatoire" required>
			      		<?php genererOptionsCategories($table_categories) ?>
			    		</select>
			    	</div>
			    </div>

				<div class="row">
					<div class="col-25">
						<label for="titre">Titre :</label>
					</div>
					<div class="col-75">
						<input id="titre" type="text" name="titre" placeholder="Titre de l'article" title="Entrez un titre pour l'article. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="texte">Texte :</label>
					</div>
					<div class="col-75">
						<textarea id="texte" name="texte" style="height: 400px" placeholder="Contenu de l'article" title="Entrez un contenu pour l'article. Champ obligatoire" required></textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="image">Image :</label>
					</div>
					<div class="col-75">
						<input id="image" type="text" name="image" placeholder="Image" title="Entrez le nom de l'image et son extension (.webp)">
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="auteur">Auteur :</label>
					</div>
					<div class="col-75">
						<input id="auteur" type="text" name="auteur" placeholder="NOM Prénom" title="Entrez l'auteur ou les auteurs de l'article séparés d'une virgule (,). Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="date">Date :</label>
					</div>
					<div class="col-75">
						<input id="date" type="date" name="date" title="Entrez la date de l'écriture finale de l'article. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="autre">Autre :</label>
					</div>
					<div class="col-75">
						<input id="autre" type="text" name="autre" placeholder="Autre texte ou document"  title="Vous pouvez ajouter un lien (<a href='lien.extension' target='_blank'>Nom du lien</a>), un pdf, une image (<img src='Images\image.extension' alt='titre de l'image'>)... ">
					</div>
				</div>

				<div class="row">
					<input  type="submit" 
							name="action" 
							value="Modifier">
				</div>
			</form>
		</div>
		

<?php

}

function supArticleForm()
{
	global $table_articles;
	?>
	<div id='supArticle'>
			<h2>Supprimer un article</h2>

			<form method='post' action='.'>
				
				<div class="row">
					<div class="col-25">
						<label for="num">Article :</label>
					</div>
					<div class="col-75">
		    			<select name="num" id="num" title="Choisissez un numéro d'article. Champ obligatoire" required>
		      			<?php genererOptionsNumArticles($table_articles) ?>
		    			</select>
		    		</div>
		    	</div>
				
				<div class="row">
					<input  type="submit" 
							name="action" 
							value="Supprimer">
				</div>
			</form>
		</div>
	<?php

}

function insererArticle($a_categorie, $a_titre,$a_texte, $a_image, $a_auteur, $a_date, $a_autre) {

	global $linkDB;

	$requete = "INSERT INTO articles(a_titre, a_texte, a_image, a_auteur, a_date, a_autre, a_categorie) VALUES (?,?,?,?,?,?,?)";

	$stmt=mysqli_prepare($linkDB, $requete);

	mysqli_stmt_bind_param($stmt, "sssssss", $titre,$texte,$image,$auteur,$a_date,$autre,$a_categorie);

	$titre = mysqli_escape_string($linkDB, $a_titre);
    $auteur = mysqli_escape_string($linkDB, $a_auteur);
    $image = mysqli_escape_string($linkDB, $a_image);
    $texte = mysqli_escape_string($linkDB, $a_texte);
    $autre = mysqli_escape_string($linkDB, $a_autre);

	mysqli_stmt_execute($stmt);

}

function updateArticle($a_num,$a_categorie, $a_titre,$a_texte, $a_image, $a_auteur, $a_date, $a_autre) {

	global $linkDB;

	$requete = "UPDATE articles SET a_titre=?, a_texte=?, a_image=?, a_auteur=?, a_date=?, a_autre=?, a_categorie=? WHERE a_num=$a_num";

	$stmt=mysqli_prepare($linkDB, $requete);

	mysqli_stmt_bind_param($stmt, "sssssss", $titre,$texte,$image,$auteur,$a_date,$autre,$a_categorie);

	$titre = mysqli_escape_string($linkDB, $a_titre);
    $auteur = mysqli_escape_string($linkDB, $a_auteur);
    $image = mysqli_escape_string($linkDB, $a_image);
    $texte = mysqli_escape_string($linkDB, $a_texte);
    $autre = mysqli_escape_string($linkDB, $a_autre);

	mysqli_stmt_execute($stmt);

}

function supprimerArticle($a_num) {
	global $linkDB;

	mysqli_query($linkDB, "DELETE FROM articles WHERE a_num = $a_num");

}

function genererOptionsNumArticles($table_articles)
{
    echo "<option value=''>--Veuillez choisir un numéro d'article--</option>";
    foreach ($table_articles as $ligne) {
        echo "<option value=" . $ligne['a_num'] . ">" . $ligne['a_num'] ." - " . $ligne['a_titre'] . "</option>";
    }
}



/*	//mysqli_escape_string permet de rendre un string safe a inserer dans la bdd, ca empeche l'injection de code
    $titre = mysqli_escape_string($linkDB, $a_titre);
    $auteur = mysqli_escape_string($linkDB, $a_auteur);
    $image = mysqli_escape_string($linkDB, $a_image);
    $texte = mysqli_escape_string($linkDB, $a_texte);
    $autre = mysqli_escape_string($linkDB, $a_autre);

    $params = array($a_categorie,$titre, $texte, $image, $auteur, $a_date,$autre);
    var_dump($params);

    pg_query_params($linkDB, $requete, $params);*/

/*<label for="num">Numéro de l'article :</label>
			<input id="num" type="number" name="num" min="0" placeholder="Numéro de l'article à supprimer" title="Entrez le numéro de l'article à supprimer" required>*/