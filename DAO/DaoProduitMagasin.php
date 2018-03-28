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
    private $bdd;
    
    public function DaoProduitMagasin(){
        $this->bdd = BDDConfiguration::getInstance();
    }
    
    function addProduitMagasin($produitMagasin){
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

    function updateProduitMagasin($produitMagasin){
        
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

    function deleteProduitMagasin($produitMagasin){
        $pdo = $this->bdd->Connexion();
        $req = $pdo->prepare('DELETE FROM produitMagasin WHERE id=:id');
        $req->execute(array(
            'id' => $produitMagasin->id,
        ));
        return $req;
    }


}