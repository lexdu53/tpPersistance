<?php
include_once '/Models/BDDConfiguration.php';
class DaoProduitsVisites
{
    public function getList($produitsVisites){
        $bdd = BDDConfiguration::getInstance();
        $pdo = $bdd->Connexion();
        $req =$pdo->prepare( "SELECT * FROM produitsVisites WHERE visite_id=:visite_id");
        $req->execute(array(
            ':visite_id' => $produitsVisites->id
        ));
        $res = $req->fetchAll();
        return $res;
    }
    
    function add($produitsVisites){
        $bdd = BDDConfiguration::getInstance();
        $pdo = $bdd->Connexion();
        $req = $pdo->prepare('INSERT INTO produitsVisites SET visite_id=:visite_id, produit_id=:produit_id');
        $req->execute(array(
            'visite_id' => $produitsVisites ->visite_id,
            'produit_id' => $produitsVisites ->produit_id,
        ));
        
        $res = $req->fetchAll();
        return $res;
    }
}