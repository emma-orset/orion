<?php

	//Pour phpmyadmin
	//Serveur : MariaDB
/*$linkDB = mysqli_connect('db5000379234.hosting-data.io', 'dbu520599', 'OrIoN2020!', 'dbs366117')
or die ("Vous n'avez pas pu vous connecter à la BDD : " .mysqli_connect_error() . mysqli_connect_errno()); */

//Avec le serveur de l'IUT
//$linkDB = mysqli_connect('db5000379234.hosting-data.io', 'dbu520599', 'OrIoN2020!', 'dbs366117')
//or die ("Vous n'avez pas pu vous connecter à la BDD : " .mysqli_connect_error() . mysqli_connect_errno()); 

//mysqli_set_charset($linkDB, "utf8");

//en local

$linkDB = mysqli_connect('localhost', 'root', '', 'orsete_orion')
or die ("Vous n'avez pas pu vous connecter à la BDD : " .mysqli_connect_error() . mysqli_connect_errno()); 

mysqli_set_charset($linkDB, "utf8");



/*$result = mysqli_query($linkDB,"SELECT * FROM articles");

while ($row = mysqli_fetch_assoc($result)) {
	echo "<tr>"; 
	foreach($row as $key=>$value) 
		echo "<td>".$value."</td>"; 
	echo "</tr>";

}
echo "</table>";*/


	//Pour phpmyadmin avec PDO
	//Serveur : MariaDB
/*define('HOST', 'localhost');
define('DB_NAME', 'orsete_orion');
define('USER', 'root');
define('PASS', '');

try
{
	$db = new PDO("mysql:host=" . HOST . ";dbname=" . DB_NAME, USER, PASS);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//echo "Vous êtes bien connecté à la BDD.";
}

catch (PDOException $e)
{
	echo $e;
}*/

// Pour phppgadmin
/*$bdd = pg_connect("host=localhost
	        dbname=orsete_run
	        user=orsete
	        password=root
	        port=5432");
pg_query("set names 'UTF8'");
pg_query("SET search_path TO orsete_orion;");

$req = "select a_texte from $articles where prenom REGEXP ''"*/
