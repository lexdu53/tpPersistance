<?php
include_once '/Models/BDDConfiguration.php';
class DaoProduitsVisites
{
    private $bdd ;
    
    public function DaoProduitsVisites(){
        $this->bdd = BDDConfiguration::getInstance();
    }
    
    public function getList($produitsVisites){
        try{
            $pdo = $this->bdd->Connexion();
            $req =$pdo->prepare( "SELECT * FROM produitsVisites WHERE visite_id=:visite_id");
            $req->execute(array(
                ':visite_id' => $produitsVisites->id
            ));
            $res = $req->fetchAll();
            return $res;
        }catch (mysqli_sql_exception $e){
            echo $e;
        }
    }
    
    function add($produitsVisites){
        try{
            $pdo = $this->bdd->Connexion();
            $req = $pdo->prepare('INSERT INTO produitsVisites SET visite_id=:visite_id, produit_id=:produit_id');
            $req->execute(array(
                'visite_id' => $produitsVisites ->visite_id,
                'produit_id' => $produitsVisites ->produit_id,
            ));

            $res = $req->fetchAll();
            return $res;
        }catch (mysqli_sql_exception $e){
            echo $e;
        }
    }
}