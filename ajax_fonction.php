<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$bbdConnexion = BDDConfiguration::getInstance();
$bbdConnexion->Connexion();


if(isset($_POST['function'])) {
    echo $_POST['function'];
}
