<?php
/**
 * Created by PhpStorm.
 * User: lexdu53MAC
 * Date: 20/03/2018
 * Time: 14:59
 */
include ("../Models/BDDConfiguration.php");

class DaoProduitMagasin
{
    private $bdd ;
    
    public function DaoProduitsVisites(){
        $this->bdd = BDDConfiguration::getInstance();
    }
    
    function add($produitMagasin){

        $pdo = $this->bdd->Connexion();
        $req = $pdo->prepare('INSERT INTO produitMagasin SET prix = :nvprix, facet = :facet,etagere = :etagere, denomination = :denomination, presence = :presence');

        $req->execute(array(
            'nvprix' => $produitMagasin->prix,
            'facet' => $produitMagasin->nbFacet,
            'etagere' => $produitMagasin->etagere,
            'denomination' => $produitMagasin->denomination,
            'presence' => $produitMagasin->presence
        ));
        return $req;
    }

    function update($produitMagasin){

        $pdo = $this->bdd->Connexion();
        $req = $pdo->prepare('UPDATE produitMagasin SET prix = :nvprix, facet = :facet,etagere = :etagere, denomination = :denomination, presence = :presence WHERE id = :id');
        $req->execute(array(
            'id' => $produitMagasin->id,
            'nvprix' => $produitMagasin->prix,
            'facet' => $produitMagasin->nbFacet,
            'etagere' => $produitMagasin->etagere,
            'denomination' => $produitMagasin->denomination,
            'presence' => $produitMagasin->presence
        ));

        return $req;
    } 

    function delete($produitMagasin){

        $pdo = $this->bdd->Connexion();
        $req = $pdo->prepare('DELETE FROM produitMagasin WHERE id=:id');
        $req->execute(array(
            'id' => $produitMagasin->id,
        ));
        return $req;
    }
    
}