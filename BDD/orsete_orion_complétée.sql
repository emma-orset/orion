-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 23 fév. 2022 à 14:12
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `orsete_orion`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `a_num` int(11) NOT NULL AUTO_INCREMENT,
  `a_titre` varchar(255) NOT NULL,
  `a_texte` mediumtext NOT NULL,
  `a_image` varchar(255) DEFAULT NULL,
  `a_auteur` varchar(255) NOT NULL,
  `a_date` date NOT NULL,
  `a_autre` varchar(255) DEFAULT NULL,
  `a_categorie` int(11) NOT NULL,
  PRIMARY KEY (`a_num`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`a_num`, `a_titre`, `a_texte`, `a_image`, `a_auteur`, `a_date`, `a_autre`, `a_categorie`) VALUES
(1, 'PROJET RESISTANCE', '_Projet Résistance_, tel est le nom de ce projet multijoueur de Capcom. L’an dernier, la société japonaise de jeux vidéo nous avait livré un excellent remake de _Resident Evil 2_, et voilà que Capcom revient à la charge avec un trailer de gameplay uploadé le 12 Septembre 2019 : Au programme ? Quatre survivants, des pièges, des zombies et 1 “Mastermind” qui sera chargé de regarder les caméras, poser les pièges, faire venir des zombies qu’il pourra contrôler tout comme Mr X. <br>Le gameplay de ce dernier semble lent mais aussi très puissant, il pourra visiblement donner de gros coup, saisir les survivants et marcher assez vite, ça promet !<br><br>Chaque survivant aura un profil différent et par corollaire un gameplay différent : <br><br>- Samuel, l’homme de la situation en cas de corps à corps<br>- January, la “hackeuse” du groupe, pouvant pirater les caméras de sécurité et autres;<br>- Tyrone, leader né, pompier de Racoon City (ville du jeu);<br>- Valerie, une étudiante en médecine capable de soigner les membres de l’équipe.<br><br>Cette bande annonce montre qu’il y aura plusieurs étages avant de pouvoir s’échapper dans des parties à 5 joueurs (4 survivants et 1 Mastermind), nous rappelant le célèbre jeu indépendant _Dead By Daylight_ sur le principe. Le projet à l’air intéressant, cependant la toile n\\\'a pas manifestée que des réactions positives à cette annonce. En effet, sur youtube, la barre des “J’aime” n’est que légèrement supérieure aux “Je n’aime pas” ce qui n’est pas commun dans les bandes annonces.<br><br>![projetresistance1](Images\\\\projetresistance1.webp)<br><br>Les joueurs ne semblent pas être très emballés par ce style de jeu 4vs1.<br><br>![projetresistance2](Images\\\\projetresistance2.webp)<br><br>_“J’aurais préféré une coopération dans un mode histoire plutôt qu’un style de jeu en 4vs1”_<br><br>![projetresistance3](Images\\\\projetresistance3.webp)<br><br>_“Si ce n’est pas complètement raté, ça ne va pas marcher. Lol, ils auraient dû juste en faire un DLC de Resident Evil 2.”_<br><br>Reste à attendre plus de gameplay, et d’avoir la manette en main pour voir ce que le jeu vaut vraiment. Il sera disponible en bêta fermé du 4 octobre au 7 octobre, peut être vaudrait-il le coup ? Pour notre part, nous essayerons de mettre la main dessus pour en faire un test plus détaillé.', 'projetresistance.webp', 'MOLLINARI Valentin', '2019-09-15', '', 1),
(2, 'CLEANUP DAY 2019', '<h1>Le Cleanup day ?</h1><h2>C’est quoi ??</h2><br>Le _World Cleanup Day_ est la plus grande action citoyenne pour nettoyer notre planète ! Ce mouvement prend racine au regard de la dégradation de notre environnement ces dernières années. Il ne s’agit pas là de la pollution atmosphérique, qui résulte de facteurs de plus grandes échelles, mais plutôt des déchets que chacun de nous engendrons chaque jour sur notre passage. Une note d’achat qui tombe par terre, une serviette qui s’envole, une bouteille en plastique oubliée, et surtout, les satanés mégots de cigarettes. Nous sommes tous concernés, et acteurs de notre environnement pour le meilleur ou pour le pire. <br><br>Afin d’inciter la population à se mobiliser au moins une fois dans l’année, _Let’s Do It Foundation_, une fondation estonienne, est à l’initiative du _World Cleanup Day_. Débuté en 2008, l’événement s’étend maintenant sur plus de 150 pays, dont la France qui a rejoint le mouvement l’an dernier. Pour aller plus loin, la fondation développe son #KeepItClean : mieux produire, mieux consommer, moins jeter.<br><br>Cette année, le 21 septembre 2019, sur une vague verte s’étendant du Japon à Hawaï, des centaines de millions de personnes se sont mobilisées ensemble pendant 24h pour nettoyer la planète !<br><br>Notre cher IUT Informatique, convié à l’événement, a pu aussi participer en amont au mouvement, qui s’est déroulé le jeudi 19 septembre. En groupe, nous avons arpenté tout le campus pendant 1h, et ramassé tous les déchets sauvages que nous avons pu rencontrer.<br><br><h2>Conclusion :</h2><br>Faites plus attention à vos mégots de cigarettes ! Preuve en image à l’appui : dans les bouteilles, vous pouvez voir beaucoup, beaucoup de mégots…', 'cleanupDayPhotoEmmanuelleGraziano.webp', 'ORSET Emma', '2019-10-13', '', 3),
(3, 'ANNECY COURT POUR HANDISPORT', 'Cette année encore, les habitants, collégiens, lycéens, étudiants, professeurs, licenciés sportifs, amateurs… d’Annecy, se sont mobilisés pour courir ensemble, au Parc des Sports, pour la bonne cause. Plus de 50 000km parcourus sur toute la journée du mercredi 25 septembre 2019, de 8h à 20h, par quelques 10 000 participants.<br>Pour nous, étudiants, les cours étaient banalisés à partir de 16h afin que nous puissions nous mettre à contribution. <br>Cette course, complètement gratuite pour les participants, permet de financer l’achat de matériel sportif pour les personnes en situation de handicap. C’est _Handisport Annécien_ qui est le bénéficiaire de cette action. Tout le monde était invité, aussi bien les valides que les handicapés. Chacun son rythme, le bon déroulement de la journée reposait donc sur la sincérité et la détermination de chacun. <br><br>C’était une belle démonstration de solidarité de voir toutes ces personnes courir pour le plaisir car il n’y a bien sûr qu’une seule récompense à la clef : avoir fait sa bonne action de la journée.<br>Quelques ateliers sur le handicap étaient installés, afin que les valides puissent se mettre en situation de handicap, et ainsi découvrir le quotidien des handicapés. Nous avons aussi pu parler à des sportifs handicapés, qui ont tous des histoires aussi différentes et touchantes les unes que les autres, mais ils ont tous un point commun : ils se sont battus pour continuer leur passion.\\r\\nIl ne nous reste qu’une chose à faire : venir/revenir l’an prochain pour battre des records !', 'handisport.webp', 'ORSET Emma', '2019-10-13', '', 3),
(4, 'JOURNEE D\\\'INTEGRATION DES INFO1', 'Le classique des étudiants : la journée d’intégration. <br>Pour nous, c’était plutôt une «demi-journée». Mais, c’était tellement physique, que ça a largement suffit !<br>Elle s’est déroulée le jeudi 26 septembre 2019, à partir de 15h30, au Pâquier (Annecy). Ambiance bonne enfant au début: nous étions avec nos parrains tout récemment choisis et il fallait se balader dans Annecy pour prendre des photos «drôles» de nous, à côté de monuments particuliers imposés par les organisateurs.  On avait formé des groupes, avec deux parrains et leur(s) filleule(s). <br>Pas de récompense à la clef, seulement le plaisir de découvrir/redécouvrir Annecy, avec des inconnus, ou pas.<br>La suite, je préfère ne pas en parler, c’est classé _Secret Défense_, il ne faudrait pas que de jeunes terminales qui souhaiteraient faire partie des nôtres l’an prochain, tombent malencontreusement sur des mémoires. Tout ce que je peux révéler, c’est qu’il faut prendre des vêtements qui peuvent être salis. Je ne rigole pas. Ça fait 10 fois que je passe mes affaires à la machine à laver, et ça ne part pas. Le mieux, c’est de prévoir un maillot de bain, ou carrément ne pas porter de vêtement si vous n’aimez pas laver, mais ça, c’est une autre histoire. Si la météo est avec vous, le lac étant à côté, c’est très judicieux de prendre un maillot. Mais prenez aussi de quoi marcher, de bonnes baskets, vous en aurez besoin tout le long. Pour l’organisation, enfait nous étions par équipe, différentes de celles pour la balade dans Annecy.<br>L’eau est fournie, (et pas que de l’eau, je n’ai rien dit), la joie est au rendez-vous, et vous pouvez rester autant de temps que vous voulez ! Vous pouvez partir très tôt… Comme très tard ! (Attention: école le lendemain.)<br>L’année prochaine, venez nombreux ! (Encore plus nombreux.)<br><br>Cet événement a été organisé par le BDE.', 'journeeinte.webp', 'ORSET Emma', '2019-10-13', '', 3),
(5, 'JAPAN TOUCH 2019', 'Cette année, lors du weekend du 30 novembre et 1er décembre, s’est déroulée la 21ème édition de la Japan Touch, toujours accompagnée de son fidèle salon de l’Asie qui accueillait des invités de pays himalayens. Le RDV s’est fait à Eurexpo Lyon !<br><br>Toujours pleins d’exposants, de cosplayeurs…<br>Des invités : Iron Attack, TarO & JirO…<br>Des exposants, des concours, des jeux, de l’animation, de la nourriture, des goodies… Et pleins d’autres choses encore ! <br><br>Maintenant, après avoir fait la promotion de cette convention pour que vous y alliez l’an prochain, je voudrais dire vraiment ce que j’en pense.<br>Le samedi, il y avait beaucoup moins de monde que les années précédentes, beaucoup moins de beaux cosplay aussi. Mais le dimanche, c’était bondé. <br>C’était assez pauvre en invités, en tout cas invités « connus ».  <br>Les stands de la partie manga/kpop… Ce sont toujours les mêmes depuis des années. On fait vite le tour, car on peut trouver le même article dans 2 stands différents minimum. Et puis, c’est toujours aussi cher. Pour manger, il faut s’y prendre avant 11 h, sinon c’est mort, il faut faire la queue 1 h. La scène principale était cachée dans un coin, au fond des cuisines, et rester devant n’était pas très intéressant. <br>Mais il n’y avait pas que de mauvaises choses. Le fait qu’il n’y ait pas trop de monde le samedi permettait de circuler dans les allées, et de rentrer facilement et rapidement dans la Japan. C’était même très spacieux, de quoi respirer pour les agoraphobes. Par contre le dimanche c’était presque insupportable car on se retrouvait parfois coincé dans une allée sans possibilité d’avancer ou de reculer. Il y avait une bonne ambiance au niveau du karaoké, du Just Dance, et le village des créateurs était de toute beauté. <br><br>Conclusion, la Japan Touch, il faut y aller entre amis si on ne veut pas s’ennuyer. Et depuis 2ans, il est préférable de s’y rendre le samedi plutôt que le dimanche (oui avant c’était le contraire).\\r\\nEn espérant que vous viendrez à la Japan Touch Haru (Haru=printemps) qui est la petite sœur de la Japan Touch.', 'japantouch2019.webp', 'ORSET Emma', '2019-12-01', '', 1),
(6, 'LA CHANDELEUR', '_« Faites l’amour, pas la guerre. Ah non, ne faites pas l’amour, ça fait des gosses, ça crie et c’est chiant. Faites des crêpes, c’est bon les crêpes ! »_<br><br>Je ne sais pas si vous aussi, mais personnellement j’adore les crêpes. Depuis petite, j’ai tout de suite compris que février=crêpes, sans jamais vraiment savoir pourquoi. C’est la chandeleur d’accord, mais c’est quoi la chandeleur ? <br>C’est une fête qui se déroule 40 jours après Noël, donc le 2 février. On voit tout de suite ce qui se prépare : une fête religieuse chrétienne. Les 40 jours étaient une tradition juive voulant que chaque nouveau-né soit présenté au temple 40 jours après sa naissance. Cette période représentait l’impureté des femmes après leur accouchement selon la loi juive. Elles n’avaient alors pas le droit de fréquenter un lieu de culte. Mais dès lors que l’enfant était présenté, et qu’un sacrifice animal était effectué, elles redevenaient pures. <br>L’évangile de Luc relate l’histoire de la Présentation de Jésus, vécue par Marie et Joseph. Ce jour-là, un homme nommé Siméon se rendit à l’Eglise à la demande de l’Esprit Saint. Le Seigneur lui avait promis jadis qu’il ne mourrait pas avant d’avoir vu le Messie. Lorsque Siméon prit Jésus dans ses bras, ses paroles furent celles-ci : « Maintenant, Seigneur, laisses ton serviteur s’en aller en paix selon ta parole. Car mes yeux ont vu ton Salut. Salut que tu as préparé devant tous les peuples, Lumière pour éclairer les nations. » <br>Ainsi les crêpes représentent un Soleil, tout comme Jésus car « Jésus est lumière ». <br>Chandeleur vient du latin _festa candelarum_ : la fête des chandelles. On peut donc se dire que les lumières des chandelles sont une association directe à Jésus. Mais cette fête ne fût celle de Jésus qu’au Ve siècle, car elle est plus ancienne que le Christ. Autrefois, il s’agissait d’une coutume paysanne, il fallait purifier la terre du champ en le parcourant, cierges et flambeaux à la main. Les crêpes n’étaient présentes que pour utiliser la farine en trop de l’année passée et porter chance à la nouvelle en termes de récolte (de blé). On la fêtait alors vers le 15 février, saison d’amour pour les oiseaux. La forme des crêpes peut être interprétée comme le soleil qui revient après une longue nuit qu’est l’hivers, puisque les jours de février devenaient plus longs. <br>Bref, tant que je peux manger des crêpes, ça me va !', 'chandeleur.webp', 'ORSET Emma', '2020-02-09', '', 1),
(7, 'LA SAINT VALENTIN A TRAVERS LE MONDE', 'Fête de l’amour ou fête des commerçants, la Saint-Valentin est surtout l’occasion de se retrouver avec la personne que l’on aime autour d’un bon repas, avec ou sans cadeaux. Mais cette tradition n’est pas universelle. Les Valentins et Valentines du monde entier ne célèbrent pas le 14 février de la même manière. <br>Aux États-Unis, en France et dans de nombreux autres pays, la Saint-Valentin ne s’adresse pas seulement aux couples. Le 14 février, c’est l’amour en général qui est célébré, comme l’affection, l’amitié et la communauté. C’est pourquoi les enfants participent également à cette fête en offrant des cadeaux à leurs camarades, à leurs professeurs et à leurs parents. <br>Au Japon, la tradition est d’offrir des chocolats (faits par la fille) le jour de la Saint Valentin, à son compagnon, mais aussi à son entourage (collègues, amis…). C’est aussi l’occasion de déclarer son amour à un garçon. Cette fête est davantage devenue une obligation sociale, mais respectée et appréciée par les japonais. Un mois plus tard, les garçons doivent offrir un présent aux femmes qui leur ont offert des chocolats. On appel cet événement le « White Day ». <br>La Corée du Sud fête la Saint Valentin de la même manière que le Japon avec une petite touche coréenne en plus. Le 14 mars est donc le White Day, et le 14 avril devient le « Black Day ». A cette occasion, les célibataires se regroupent entre amis autour d’un plat typiquement coréen, le jajangmyeon (des nouilles recouvertes d’une sauce épaisse noire), et d’un (ou plusieurs) verre de soju. De quoi oublier son célibat !<br>En Chine, le Qi Qiao Jie (乞巧节) est la Fête où les jeunes filles montrent leurs compétences. Elle tombe le 7e jour du 7e mois lunaire du calendrier chinois. Elle est donc également connue sous le nom de jour du double sept. C\\\'était une tradition pour les jeunes filles de faire la démonstration de leurs compétences domestiques ce jour-là, et des rituels leur permettaient d\\\'augurer de leur avenir matrimonial. À Taïwan, le nombre de roses a d’ailleurs une signification : une pour un seul amour, onze pour sa préférée, 99 pour toujours et 108 pour une demande en mariage.<br>En Ecosse, mieux vaut ne pas sortir ce jour. En effet, le Valentin, ou la Valentine, est la première personne que vous croiserez dans la rue. Cette tradition est symbolique et n’engage en rien. C’est plus un jeu qu’autre chose !<br>La Finlande… un romantique pays… ou pas ! Ce jour, les Finlandais participent au championnat du « porté de femme », une course d’obstacle durant laquelle l’homme porte sa compagne. En récompense, le couple gagne en bières, le poids de la femme ! Mais la Finlande fête en fait l’amour à Pâques. La tradition, appelée le « Gaekkebrev », veut que les hommes écrivent un petit message d’amour à leur dulcinée. Plutôt que de le signer de leur prénom, ils laissent un peu de mystère en inscrivant le nombre de points correspondant au nombre de lettres dans leur nom. Si la jeune femme devine l’auteur, elle reçoit alors un œuf de Pâques en cadeau (et peut-être l’homme si elles en veulent bien ?).<br>Aux Pays de Galles, la fête de l’amour ne se célèbre pas le 14 février mais le 25 janvier. Les couples s’offrent alors des cuillères en bois sur lesquelles sont gravés des cœurs, des clefs ou des cadenas.<br>En Afrique du Sud, une ancienne tradition veut que, ce jour-là, les femmes épinglent le nom de leur compagnon sur leur manche.<br>Alors ? Quelle est votre destination pour la prochaine Saint Valentin ?', 'saintvalentin.webp', 'ORSET Emma', '2020-02-09', '', 1),
(8, 'LA SAINT VALENTIN EN HISTOIRE', 'Des cœurs dans tous les magasins, des roses à profusion, des chocolats romantiques, la Saint Valentin est enfin là. Mais pourquoi célèbre-t-on cette fête ? Est-ce une, ou plusieurs légendes ?<br>Prenant racine à Rome au IIIe siècle lors du règne de Claude II, la Saint Valentin célèbre le courage d’un prêtre nommé Valentin qui aurait désobéi aux décisions de l’empereur.<br>En effet, ce dernier interdisait le mariage à ses soldats car les troupes mariées perdaient en détermination et en efficacité. Valentin mariait alors en cachette les soldats. Il fut dénoncé et amené devant Claude. Valentin séduisit l’empereur par de belles paroles chrétiennes, mais le préfet Calpurnius, tirant les ficelles, le fit amener devant le juge Asterius. Par un miracle, Valentin guérit la fille aveugle du juge, et celui-ci tint alors sa promesse de faire tout ce que demanderait le prêtre.<br>Mais redoutant un bouleversement de la paix civile, l’empereur fit enfermer Valentin dans une cellule avant de le faire bâtonner puis décapiter le 14 février 269 ou 270.<br>Saint Valentin est représenté, soit tenant une épée et une palme, symboles de son martyre, soit guérissant la fille d’Asterius.<br>Plus tard, Alexandre IV, pape de 1254 à 1261, le nomme « patron des amoureux ».<br>D’autre part, l’évêque de Terni en Ombrie (Italie) bénit le 14 février de chaque année les couples devant la tombe de Saint Valentin de Terni et leur remet un certificat de  « bonheur ». Ce Valentin, issu d’une famille noble, évêque de Terni exécuté sous Aurélien 17 à Rome le 14 février 273, est fêté le même jour que notre prêtre romain avec lequel il est souvent confondu, à moins qu’il ne s’agisse de la même personne. En effet les légendes se mêlent entre elles, ainsi il est difficile de discerner le vrai du faux, d’où l’appellation « Légende » d’ailleurs.', 'saintvalentinhistoire.webp', 'ORSET Emma', '2020-02-09', '', 1),
(9, 'MARDI-GRAS', 'Ne vous inquiétez pas je ne vais pas faire le registre de toute les fêtes religieuses du calendrier. <br>Néanmoins je trouve certaines plus intéressantes que d’autres puisque le monde entier (presque) les fête. Le mardi-gras fait partie des plus spectaculaires fêtes de l’année. C’est en fait le carnaval. Alors pourquoi « carnaval » ?<br>Revenons d’abord au mardi-gras. Célébré 47 jours avant la Pâques, il précède directement au mercredi des Cendres, vous savez, cette fête où l’on brûle des rameaux et on se sert des cendres pour graver une croix sur le front. Bref. Le mardi-gras lui, n’incite à aucune pratique spécifique, mais simplement à faire la fête (et manger). Je mets cela entre parenthèse et pourtant c’est bien vrai. Au moment du carême, qui je le rappelle est cette période de 46 jours entre le mercredi des Cendres et Pâques, les pratiques moyenâgeuses se veulent très strictes envers les fidèles. Pas de fête, pas de sexe, peu de nourriture... Alors il était coutume de « faire gras » et ainsi manger beaucoup (de viande) avant cette période. Le mot carnaval signifie en fait « ôter la chair », du latin « carne levarer », donc directement lié à cette bombance. <br>Le carnaval comme nous le fêtons (en costume), ne vient pas exactement du mardi-gras. Il s’agit d’une synthèse de plusieurs fêtes comme les Saturnales de l’Empire Romain, les calendes de Mars qui étaient un rite païen, les Bacchanales, ou encore les Lupercales. <br>C’est à partir du XIe siècle que le carnaval devint le fabuleux défilé que nous connaissons aujourd’hui. On retiendra le carnaval de Venise, LE carnaval par excellence. Et puis bien sûr Rio, le carnaval le plus festif. <br>A vos déguisements !', 'carnaval.webp', 'ORSET Emma', '2020-02-09', '', 1),
(10, 'HIVE', '<h2>Prologue :</h2><br>Dans un monde où la quantité d’oxygène aurait mystérieusement doublée et où les insectes auraient pris des tailles affolantes, la race humaine est au bord du gouffre. L’humanité se retrouve désormais face à des invasions d’immenses abeilles dopées à l’oxygène qui cherchent à changer la chaîne alimentaire. Dans cette atmosphère chaotique où la mort est omniprésente, Lee, le héros principal, est un manager dans une grande compagnie coréenne, il n’a qu’un seul but : sauver sa famille de l’invasion apocalyptique des abeilles. <br><br><h2>Fiche technique : </h2><br>_Hive_ est un thriller, composé de 243 chapitres divisés en 3 parties ou saisons selon vos préférences. Le manhwa est sérieux et comprend énormément de drama.  Il est noté à 9.67/10 sur « Webtoon », une plateforme qui permet aux artistes indépendants de partager leurs œuvres. Le créateur du manhwa se nomme Kyusam Kim. Il s’agit d’un artiste coréen indépendant qui ne réalise ses œuvres que sur « Webtoon ». _Hive_ est le deuxième manhwa de l’artiste sur cette plateforme, le premier étant _Aura from Another Planet_, un manhwa comique très apprécié les lecteurs. <br><br><h2>Mon avis : </h2><br>Honnêtement, le concept ne m’avait pas attiré, mettre des insectes à la place des zombies, bon, je ne risquais pas d’avoir des frissons. J’ai quand même lu le premier chapitre par simple curiosité, et heureusement que je l’ai fait car j’ai dévoré la suite en trois jours, au lieu de réviser mon bac (lol) ! L’histoire est folle et prenante, les insectes sont vraiment terrifiants et l’univers si réaliste. On s’accroche très vite au héros puis aux autres survivants car chacun a un background unique avec son lot de dramas. Personne n’est gentil ou méchant, tout le monde est logique et cherche uniquement à survivre. L’univers est rempli de mystères qui se résolvent tout au long de l’histoire, ce qui fait qu’on n’a jamais le temps de s’ennuyer, chaque chapitre étant important et crucial pour le scénario. Concernant le dessin, il est magnifique et bien détaillé et je n’ai pas grand-chose à ajouter. <br>Pour un post-apo, il m’a vraiment surpris positivement. Il donne un réel coup d’air dans ce genre où l’on retrouve rapidement des histoires avec des morts-vivants ou des guerres nucléaires (aucun mal dessus, j’adore !). En effet, cette histoire m’a donné un autre point de vue sur les insectes, ils semblent si insignifiants mais pourtant s’ils étaient à notre échelle, ce serait un enfer, de vraies machines sans scrupule qui chasseraient les pauvres humains que nous sommes ! <br><br>Donc si vous avez le temps et la curiosité, allez jeter un coup d’œil, c’est gratuit, tous les chapitres sont gratuits, ça ne mange pas de pain. Et si vous appréciez, j’ai réussi ma mission ! <br>Bonne lecture à tous !', 'hive.webp', 'TOURRET Auphélia', '2020-02-09', '', 2),
(11, 'FULLMETAL ALCHEMIST', '_« L’alchimie est la science qui permet de comprendre, de décomposer et de recomposer la matière. Mais l’alchimie ne peut pas tout. Il lui est impossible de créer à partir du néant. Pour chaque chose reçue, il faut en abandonner une autre de même valeur. En alchimie, c’est la loi fondamentale de l’échange équivalent. Et la transmutation humaine constitue son tabou absolu. Nul ne peut enfreindre cet interdit. »_<br><br>Quelle intro, quelle intro… Pour ceux qui ne s’en doutaient pas au regard du titre, je vais parler du manga _FullMetal Alchemist_, commencé en 2002 par Hiromu Arakawa et terminé en 2010. Je voudrais vous faire connaître ce manga sans utiliser internet, je ne vais donc pas faire une fiche récapitulative du manga, que vous trouverez aisément sur des sites comme _Nautiljon_.<br><br>Dans un premier temps, il faut savoir que ce manga a deux animés bien distincts : _FullMetal Alchemist_ (_FMA_) et _FullMetal Alchemist Brotherwood_ (_FMAB_).<br><br>_FMA_ a commencé à être réalisé en 2003, alors que le manga commençait tout juste. Comme la diffusion allait plus vite que le manga, les réalisateurs ont décidé de continuer dans leur propre direction. Cela explique que le début de _FMA_ est le même que le manga, et qu’il y a beaucoup d’épisodes hors-série qui devaient combler le temps d’attente. <br>_FMAB_ est donc l’adaptation fidèle du manga. <br><br>Pour un TRES bref résumé, l’histoire relate la détermination de deux jeunes frères : Edward et Alphonse Elric, à retrouver leur corps qu’ils ont perdu, ou plutôt qu’« on » leur a pris, quand ils ont tenté de ressusciter leur mère par le biais de l’alchimie :  la transmutation humaine. Leur solution est de trouver la Pierre Philosophale, une substance défiant les règles de bases de l’alchimie. <br><br>Beaucoup vous diront que la meilleure série est _FMAB_, ou plus simplement le manga. Néanmoins je ne suis pas d’accord. Les deux versions ne sont pas tout à fait comparables. Tout d’abord, dans _FMA_, l’univers est moins certes moins évolué, mais la psychologie est beaucoup plus importante. Les personnages, qui sont moins nombreux, sont plus sombres que ceux de _FMAB_. Il y a également moins de combats. Pour ce qui est du mode de création des _Homonculus_, qui sont des créatures à l’apparence humaine que vous connaîtrez bien assez tôt, les deux versions sont très intéressantes. Je dirais même que _FMA_ donne une version plus logique que _FMAB_. Pour dire quelques mots sur la méchante de l’histoire de _FMA_, Dante, elle a des ambitions restreintes qui n’ont pas d’influence à l’échelle nationale, mais qui au contraire du méchant dans _FMAB_, sont des ambitions qui peuvent se retrouver en chacun de nous. _FMA_ développe aussi une théorie de mondes parallèles, très en vogue en ce moment, où l’autre monde serait en fait le nôtre. C’est-à-dire sans alchimie, et à l’époque de l’Allemagne Nazi. L’animé se déroule sur 51 épisodes. N’oubliez surtout pas de regarder le film _Conqueror of Shamballa_ qui est tout simplement la suite de _FMA_.<br><br>Si en revanche vous préférez avoir un vrai background, une histoire étendue sur plusieurs pays, de bons combats de _shonen_, de l’humour, tout de même une dose de psychologie, et de l’amour, je vous conseille _FMAB_. Non en fait regardez les deux dans tous les cas. Dans cette version, fidèle au manga, l’histoire se déroule dans un cadre d’après-guerre encore en tension, où les Alchimistes d’Etat maintiennent l’ordre. Le méchant, Père, est mégalomaniaque, et peu d’entre nous peuvent s’identifier à lui. Le surnaturel prend beaucoup de place mais reste cohérent avec l’ambiance du manga. Les personnages ont tous des rôles malgré le fait qu’ils sont nombreux. C’est très bien écrit et vraiment bien réfléchi. La série comprend 67 épisodes et le manga 27 tomes. Il y a un film d’animation hors-série si vous voulez : _L’Étoile sacrée de Milos_.<br><br>En terme d’Opening, ending, OST, tout est parfait. Surtout les Openings de _FMAB_. Pour le graphisme, ça reste un manga de 2003, mais c’est très beau quand même. Vous remarquerez que chaque personnage a des yeux différents. C’est parce que ce ne sont pas des japonais, mais plutôt des européens, voir des allemands (c’est évident si vous regardez _FMA_). Un film (live-action) est sorti l’année dernière, et même si j’aurais préféré que ce soit des européens qui jouent, cela reste une belle adaptation (ne faites juste pas attention à Winry si vous ne voulez pas finir la détester). <br><br>Conclusion, je vous conseille de lire le manga ou de regarder _FMAB_ en premier, mais prenez un peu de temps pour regarder _FMA_ aussi, vous ne serez pas déçus. Il y a une super vidéo sur YouTube que j’aimerais faire partager, « Le secret de l’Alchimie » de Gaki Clinic, qui fait une analyse vraiment détaillée et intéressante de _FMAB_.', 'fma.webp', 'ORSET Emma', '2020-02-09', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `c_num` int(11) NOT NULL,
  `c_nom` varchar(255) NOT NULL,
  PRIMARY KEY (`c_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`c_num`, `c_nom`) VALUES
(1, 'Actualité'),
(2, 'Découverte'),
(3, 'IUT_INFO'),
(4, 'Reportage');

-- --------------------------------------------------------

--
-- Structure de la table `express`
--

DROP TABLE IF EXISTS `express`;
CREATE TABLE IF NOT EXISTS `express` (
  `e_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_titre` varchar(255) NOT NULL,
  `e_image` varchar(255) NOT NULL,
  `e_pdf` varchar(255) NOT NULL,
  `e_date` date NOT NULL,
  PRIMARY KEY (`e_num`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `express`
--

INSERT INTO `express` (`e_num`, `e_titre`, `e_image`, `e_pdf`, `e_date`) VALUES
(1, 'ORION N°1', 'Orion_Express_n_1_image.webp', 'Orion_Express_n_1.pdf', '2019-12-01'),
(2, 'ORION N°2', 'Orion_Express_n_2_image.webp', 'Orion_Express_n_2.pdf', '2020-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Déchargement des données de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Déchargement des données de la table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'orion_rempli', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"articles\",\"categories\",\"express\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\"],\"table_structure[]\":[\"articles\",\"categories\",\"express\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\"],\"table_data[]\":[\"articles\",\"categories\",\"express\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure de la table @TABLE@\",\"latex_structure_continued_caption\":\"Structure de la table @TABLE@ (suite)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenu de la table @TABLE@\",\"latex_data_continued_caption\":\"Contenu de la table @TABLE@ (suite)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_drop_table\":\"something\",\"sql_create_table\":\"something\",\"sql_if_not_exists\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Déchargement des données de la table `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[{\"db\":\"orsete_orion\",\"table\":\"express\"},{\"db\":\"orsete_orion\",\"table\":\"categories\"},{\"db\":\"orsete_orion\",\"table\":\"articles\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"orsete_orion\",\"table\":\"articles\"},{\"db\":\"orsete_orion\",\"table\":\"categories\"},{\"db\":\"orsete_orion\",\"table\":\"express\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Déchargement des données de la table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('orsete_orion', 'articles', 'a_categorie', 'orsete_orion', 'categories', 'c_num');

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'orsete_orion', 'categories', '{\"sorted_col\":\"`c_num` ASC\"}', '2020-05-08 21:26:43');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-05-10 14:16:16', '{\"lang\":\"fr\",\"Console\\/Mode\":\"collapse\"}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
