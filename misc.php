<?php
	require 'vendor/autoload.php';
	use Michelf\Markdown;

function afficherMenu() {
	?>

	<nav class="nav flex-row">
        <div class="nav-menu">
            <div class="nav-brand">
				
                <a href="?page=accueil" >ORION</a>
            </div>
        </div>
        <div class="toggle-collapse">
            <div class="toggle-icons ">
                <!--<span><i class="fas fa-bars"></i></span>-->
                <span class="icon"></span>
            </div>
        </div>
        <div>
            <ul class="nav-items flex-row">

                <li class="nav-link">
                    <a href="?page=accueil">Accueil</a>
                </li>
                <li class="nav-link">
                    <a href="?page=articles">Les articles</a>
                </li>
                <li class="nav-link">
                    <a href="?page=express">Orion Express</a>
                </li>                
                <li class="nav-link">
                    <a href="?page=team">La Team Orion</a>
                </li>
                <li class="nav-link">
                	<?php
                		if (!$_SESSION['co'])
                		{
                			echo "<a href='?page=contact'>Nous contacter</a>";
                		}
                		else{
                			echo "<a href='?page=gestionArticles'>Gestion des articles</a>";
                		}
                	?>
                </li>
                <?php
                	if ($_SESSION['co'])
                	{
                			echo "<li class='nav-link'>";
                			echo "<a href='?page=gestionExpress'>Gestion Orion Express</a>";
                			echo "</li>";
                	}
                	?>
                <li class="nav-link">
                	<?php
                		if (!$_SESSION['co'])
                		{
                			echo "<a href='?page=connexion'>Se connecter</a>";
                		}
                		else{
                			echo "<a href='?page=déconnexion'>Se déconnecter</a>";
                		}
                	?>  
                </li>
            </ul>
        </div>
    </nav>

	<?php	
}


function afficherAccueil() {
	?>
	<section id='accueil' class="contenu">
		<h1>Bienvenue !</h1>
		<article>
			<div>
				<?php
				echo Markdown::defaultTransform("<br><br>Salut les mordus d'actu, vous vous trouvez sur le fabuleux site du journal _ORION_, le journal des <b class='red'>INFOs</b> de l'IUT d'Annecy-le-Vieux !<br><br> Nous vous préparons chaque semaine des articles en tout genre sur la vie étudiante, les nouveautés (Informatique, jeux, livres, mangas...), les événements de l'IUT et encore plein d'autres !<br><br> À bientôt,<br> La Team Orion.");
				?>
			</div>
		</article>
	</section>

	<?php

}

function afficher404() {
	echo "<h2>404 !</h2>";

}

function afficherFooter(){
	?>
		<footer>
			<div id="haut">
				<p><a href="?page=accueil"><img class="logo2" src='Images/home.webp'/></p>

				<p><a href="?page=articles">Les articles</a></p>

				<p><a href="?page=express">Orion Express</a></p>

				<p><a href="?page=team">La Team Orion</a></p>

				<p>
					<a href="?page=contact">Nous contacter</a>
				</p>

				<p>

				<a id='mail' href="mailto:orion.express@gmail.com" target="_blank"><img class="logo2" src='Images/mail.webp'/></a>

				<a href="https://www.facebook.com/OrionExpressJournal" target="_blank"><img class="logo2" src='Images/fb.webp'/></a>
			</p>


			</div>
			
			<div id="bas">
				<p>&copy; ORION Express journal | Tous droits réservés</p>	

			</div>


		</footer>		

	<?php
}

function formConnexion(){
	?>
	<section class="contenu">
	<h2>Se connecter</h2>
	<br><br>
	<p>Oh ! Tu es un membre de la Team Orion et tu souhaites modifier un peu le site ? Connecte toi !</p>
	<br>

	<form method='post' action='.'>
		
		<div class="row">
			<div class="col-25">
				<label for="pseudo">Pseudo :</label>
			</div>
			<div class="col-75">
				<input id="pseudo" type="text" name="pseudo" placeholder="Pseudonyme" title="Entre le pseudo spécial administrateur du site. Champ obligatoire" required>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="mdp">Mot de passe :</label>
			</div>
			<div class="col-75">
				<input id="mdp" type="password" name="mdp" placeholder="Mot de passe" title="Entre le mot de passe spécial administrateur du site. Champ obligatoire" required>
			</div>
		</div>
		<div class="row">
			<input  type="submit" 
					name="action" 
					value="Connexion">
		</div>
	</form>
	</section>
	<?php
}

function afficherPageContact(){
	?>
	<section class="contenu">
		<h1>Nous contacter</h1>
		<br><br>
		<p>La grande question... Pourquoi nous contacter ?</p>
		<br>
		<p>Notre journal est principalement écrit pas nos chroniqueurs et rédacteurs. Néanmoins si vous êtes élèves à l'IUT informatique d'Annecy, ou même anciens élèves, professeur... vous pouvez nous soumettre vos articles, ou vidéos, enfin ce que vous voulez et nous vous répondrons si nous pouvons en effet vous publier (ou pas).</p>
		<br>
		<p>Une autre raison pour laquelle vous voudriez nous contacter est peut-être votre envie de faire partie de la Team Orion ? Dans ce cas c'est le même lien !</p>
		<br>
		<p>En tout cas quelque soit la raison nous serons très rapide dans notre réponse. Merci d'être décent et courtois dans votre mail !</p>
		<br><br>
		<a id='mail' href="mailto:orion.express@gmail.com" target="_blank"><img class="logo" src='Images\mail.webp'/>Envoyer un mail</a>
		<br><br><br>
		<p>Notre Facebook, pour suivre l'actualité des sorties des articles et de la Team Orion : </p><a href="https://www.facebook.com/OrionExpressJournal" target="_blank"><img class="logo" src='Images\fb.webp'/>Orion Express</a>
		<br><br>
		<p>Merci !</p>
	</section>
	<?php
}

function afficherPageTeam(){
	?>
	<section class="contenu">
		<h1>La Team Orion</h1>
		<br><br>
		<p>Oh ? Alors comme ça vous voulez en savoir plus sur nous ? Très bien très bien ....</p>
		<br><br>
		<div id="team">
		
		<?php
			echo Markdown::defaultTransform("
**L'Equipe :**
=================

- Vincent : *Coordinateur en chef + Rédacteur*
- Luc : *Designer en chef + Gérant*
- Emma : *Rédacteur en chef + Gérant*
- Valentin : *Vidéaste en chef + Rédacteur*
- Arnaud : *Rédacteur*

**Les Rôles :**
==================

- **Gérant** - Il s'occupe de tout l'aspect administratif. Il est aussi responsable de la communication (faire connaitre le journal, trouver de nouvelles personnes..)

- **Coordinateur en chef** - Il gère l'équipe, fait passer au mieux les informations entre chaque personne, et coordonne les réunions.

- **Designer en chef** - Il s'occupe de la partie design et tout ce qui va être affiché, notamment la page web.

- **Designer** - Aide au designer en chef.

- **Rédacteur en chef** - Il a une obligation d'au moins 2 articles par mois. Correcteur de tous les articles.

- **Rédacteur** - Il a une obligation d'au moins 1 article par mois.

- **Vidéaste en chef** - Il gère l'équipe audiovisuel.

- **Vidéaste** - Il est sous la direction du vidéaste en chef.");
				?>
	</div>
	</section>
	<?php
}

/*function pluginFB(){
	?>
	<!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v7.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      <!-- Your customer chat code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="100213095035626">
      </div>
      <?php
}*/

/*function contactForm(){
	?>
	<section class="contenu">
	<h2>Nous contacter</h2>
	<br><br>
	<p>Hey ! Nous vous proposons de nous envoyer un mail directement depuis notre site ! Vous pouvez par exemple nous envoyer un article, demander à rejoindre la team... Ce que vous voulez (tant que vous restez décent et correcte dans votre message) ! Nous reprendrons contacte avec vous !</p><br><br>

	<form method='post' action='.'>
		
		<div class="row">
			<div class="col-25">
				<label for="nom">NOM Prénom :</label>
			</div>
			<div class="col-75">
				<input id="nom" type="text" name="nom" placeholder="NOM Prénom" title="Entrez votre nom et prénom. Champ obligatoire" required>
			</div>
		</div>

		<div class="row">
			<div class="col-25">
				<label for="email">E-mail :</label>
			</div>
			<div class="col-75">
				<input id="email" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="E-mail" title="Entrez votre e-mail (valide). Champ obligatoire" required>
			</div>
		</div>

		<div class="row">
			<div class="col-25">
				<label for="sujet">Sujet :</label>
			</div>
			<div class="col-75">
				<input id="sujet" type="text" name="sujet" placeholder="Sujet de l'e-mail" title="Entrez le sujet de votre e-mail. Champ obligatoire" required>
			</div>
		</div>

		<div class="row">
			<div class="col-25">
				<label for="message">Message :</label>
			</div>
			<div class="col-75">
				<textarea id="message" type="text" name="message" style="height: 300px" placeholder="Ecrivez le mail que vous voulez nous envoyer..." title="Ecrivez votre e-mail. Champ obligatoire" required></textarea>
			</div>
		</div>

		<div class="row">
			<input  type="submit" 
					name="action" 
					value="Envoyer">
		</div>
	</form>
	</section>
	<?php

}*/

?>