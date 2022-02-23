<?php
session_start();
if (!isset($_SESSION['co']))
	$_SESSION['co']=false;

include_once "db.php";
include_once "misc.php";
include_once "articles.php";
include_once "categories.php";
include_once "express.php";
include_once "actions.php";
include_once "view.php";

