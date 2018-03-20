<?php
include_once '/Models/BDDConfiguration.php';
$db = BDDConfiguration::getInstance();
$pdo = $db->Connexion();
print_r($pdo);
