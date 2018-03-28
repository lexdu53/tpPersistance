<?php
include_once '/Models/BDDConfiguration.php';
class DaoProduitsVisites
{
    public function getListProduitsForThisVisite($id_visite){
        $bdd = BDDConfiguration::getInstance();
        $pdo = $bdd->Connexion();
        $sth =$pdo->prepare( "SELECT * FROM produitsVisites WHERE visite_id=:visite_id");
        $sth->execute(array(':visite_id' => $id_visite));
        $res = $sth->fetchAll();
        return $res;
    }
}