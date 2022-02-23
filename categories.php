<?php

require 'vendor/autoload.php';
use Michelf\Markdown;

function chargerCategories() {
	global $linkDB;
	$sql = "SELECT * FROM categories";
	$result = mysqli_query($linkDB, $sql);

	$list = array();
	while ($row = mysqli_fetch_assoc($result))
		$list[]=$row;
	
	return $list;
}

function genererOptionsCategories($table_categories)
{
    echo "<option value=''>--Veuillez choisir une catégorie--</option>";
    foreach ($table_categories as $ligne) {
        echo "<option value=" . $ligne['c_num'] . ">" . $ligne['c_nom'] . "</option>";
    }
}

function afficherCategories($table_categories)
{
	?>
	<section id='categories' class="contenu">
		<h1>Voici nos catégories !</h1>
		<br><br>
		<p>Vous cherchez sûrement nos articles ? Ils sont là ! Bien rangés dans chaque catégorie...</p>
		<article>
			<div id="les4cat">
				<div>
					<h2>Actualité</h2>
					<p><?php
					echo Markdown::defaultTransform("<br>La catégorie _\"Actualité\"_ relate des événements qui se passent autour d'Annecy, ou tout simplement à l'IUT en général (excepté les événements du département INFO).");
				?>
					<a href='?page=Actualité'><img class="logo" src='Images/open-book.webp'/>Lire</a>
				</p>
				</div>

				<div>
					<h2>Découverte</h2>
					<p><?php
					echo Markdown::defaultTransform("<br>Si vous aimez vous tenir au courant des nouvelles sorties de mangas, jeux, BD, films, séries, nouvelles écrites par vos camarades... Jetez un oeil à notre catégorie _\"Découverte\"_.<br>");
				?>
					<a href='?page=Découverte'><img class="logo" src='Images/open-book.webp'/>Lire</a>
				</p>
				</div>
				<div>
					<h2>IUT INFO</h2>
					<p><?php
					echo Markdown::defaultTransform("<br>Justement vous retrouverez les événements organisés par notre BDE ODIN dans la catégorie _\"IUT INFO\"_, mais aussi d'autres actualités essentielles sur notre fabuleux département (le meilleur).<br>");
				?>
					<a href='?page=IUT_INFO'><img class="logo" src='Images/open-book.webp'/>Lire</a>
				</p>
				</div>
				<div>
					<h2>Reportage</h2>
					<p><?php
					echo Markdown::defaultTransform("<br>Enfin, nous proposerons des reportages qui pourraient vous intéresser autant pour votre carrière future que maintenant. N'hésitez pas à les lire (ou les regarder) dans la catégorie _\"Reportage\"_.<br>");
				?>
					<a href='?page=Reportage'><img class="logo" src='Images/open-book.webp'/>Lire</a>
				</p>
				</div>
			</div>

			<p><br>Merci et régalez-vous bien !</p>
				
		</article>
	</section>


	<?php
}

?>
