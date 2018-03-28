<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include_once "DAO";



echo "coc";

if (isset($_POST['integration'])){
    echo "lol";

    echo $_POST['integration'];

    $function=$_POST['function'];
    $object=$_POST['object'];
    $DaoProduitMagasin = new DaoProduitMagasin();
    $DaoProduitVisite= new DaoProduitsVisites();




}

