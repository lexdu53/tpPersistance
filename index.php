<?php
/**
 * Created by PhpStorm.
 * User: traversathomas
 * Date: 20/03/2018
 * Time: 14:51
 */
session_start();
/**
 * Created by PhpStorm.
 * User: traversathomas
 * Date: 14/03/2018
 * Time: 12:06
 */
//tuto WebStorage https://www.alsacreations.com/article/lire/1402-web-storage-localstorage-sessionstorage.html
header('Content-Type: application/json');
include_once '/Models/BDDConfiguration.php';
$db = BDDConfiguration::getInstance();
$pdo = $db->Connexion();
print_r($pdo);
