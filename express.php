<?php

function chargerExpress() {
	global $linkDB;
	$sql = "SELECT * FROM express";
	$result = mysqli_query($linkDB, $sql);

	$list = array();
	while ($row = mysqli_fetch_assoc($result))
		$list[]=$row;
	
	return $list;
}

function afficherExpress(){
	
	global $table_express;
	echo "<section class='express contenu' >";
	echo "<h1>L'Orion Express</h1>";
	echo "<br><br><p>Oh ? Vous voulez lire nos maquettes papier ? Allez-y ! L'Orion Express n'attend que vous. On a rangé les numéros du plus récent au plus ancien. Sympa non ?</p>";

	$table_express=array_reverse($table_express);

	foreach ($table_express as $ligne)
	{
		echo "<div>";
		echo "<h2>" .$ligne['e_titre'] ."</h2>";
		echo "<p>" .$ligne['e_date'] ."</p>";
		echo "<a href='Express/".$ligne['e_pdf'] ."' target='_blank'><img class='logo' src='Images/open-book.webp'/>Lien PDF</a><br><br>";
		echo "<img class='imgExpress' src='Express/" .$ligne['e_image'] . "' alt='Première page de l'Orion Express du mois'/>";
		echo "</div>";
	}

	echo "</section>";
}

function afficherPageGestionExpress(){
	echo "<section class='contenu'>";
	echo "<h1>Gestionnaire des maquettes Orion Express</h1>";
	echo "<br><br><p>Bienvenue sur votre gestionnaire de gestion des maquettes de l'Orion Express. Vous pouvez <a href='#ajoutExpress'>ajouter</a>, <a href='#supExpress'>supprimer</a> ou <a href='#'>modifier</a> des maquettes de l'Orion Express. A vous de jouer !</p><br><br>";
	ajoutExpressForm();
	supExpressForm();
	echo "</section>";
}

function ajoutExpressForm() {
global $table_categories;
?>
		
		<div id='ajoutExpress'>
			<h2>Ajouter une maquette de l'Orion Express:</h2>

			<form method='post' action='.'>

				<div class="row">
					<div class="col-25">
						<label for="titreE">Titre :</label>
					</div>
					<div class="col-75">
						<input id="titreE" type="text" name="titreE" placeholder="Titre de l'Orion Express"  title="Entrez un titre pour l'Orion Express. Exemple : Orion Express n°X. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="imageE">Image :</label>
					</div>
					<div class="col-75">
						<input id="imageE" type="text" name="imageE" placeholder="Image"  title="Entrez le nom de l'image et son extension (.webp)" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="pdfE">Lien PDF :</label>
					</div>
					<div class="col-75">
						<input id="pdfE" type="text" name="pdfE" placeholder="PDF de l'Orion Express" title="Entrez le nom du PDF et son extension (.pdf)" required>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="dateE">Date :</label>
					</div>
					<div class="col-75">
						<input id="dateE" type="date" name="dateE" title="Entrez la date de sortie de l'Orion Express. Champ obligatoire" required>
					</div>
				</div>

				<div class="row">
					<input  type="submit" 
							name="action" 
							value="Ajouter un Orion Express">
				</div>
			</form>
		</div>
		

<?php

}

function supExpressForm()
{
	global $table_express;
	?>
	<div id='supExpress'>
			<h2>Supprimer une maquette de l'Orion Express</h2>

			<form method='post' action='.'>
				<div class="row">
					<div class="col-25">
						<label for="numE">Orion Express :</label>
					</div>
					<div class="col-75">
		    			<select name="numE" id="numE" title="Choisissez un numéro de l'Orion Express. Champ obligatoire" required>
		      			<?php genererOptionsNumExpress($table_articles) ?>
		    			</select>
		    		</div>
		    	</div>
				
				<div class="row">
					<input  type="submit" 
							name="action" 
							value="Supprimer un Orion Express">
				</div>
			</form>
		</div>
	<?php

}

function insererExpress($e_titre, $e_image,$e_pdf, $e_date) {

	global $linkDB;

	$requete = "INSERT INTO express(e_titre, e_image,e_pdf, e_date) VALUES (?,?,?,?)";

	$stmt=mysqli_prepare($linkDB, $requete);
	mysqli_stmt_bind_param($stmt, "ssss", $titreE, $imageE, $pdfE, $e_date);

	$titreE = mysqli_escape_string($linkDB, $e_titre);
    $imageE = mysqli_escape_string($linkDB, $e_image);
    $pdfE = mysqli_escape_string($linkDB, $e_pdf);

	mysqli_stmt_execute($stmt);

}

function supprimerExpress($e_num) {
	global $linkDB;

	mysqli_query($linkDB, "DELETE FROM express WHERE e_num = $e_num");

}

function genererOptionsNumExpress()
{
	global $table_express;
    echo "<option value=''>--Veuillez choisir un numéro de l'Orion Express--</option>";
    foreach ($table_express as $ligne) {
        echo "<option value=" . $ligne['e_num'] . ">" . $ligne['e_num'] ." - " . $ligne['e_titre'] . "</option>";
    }
}


?>