<?php
include_once '/Models/BDDConfiguration.php';
class DaoProduitsVisites
{
    public function getListProduitsForThisVisite($produitsVisites){
        $bdd = BDDConfiguration::getInstance();
        $pdo = $bdd->Connexion();
        $sth =$pdo->prepare( "SELECT * FROM produitsVisites WHERE visite_id=:visite_id");
        $sth->execute(array(':visite_id' => $produitsVisites->id));
        $res = $sth->fetchAll();
        return $res;
    }
}