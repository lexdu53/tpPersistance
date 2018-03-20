<?php
/**
 * Created by PhpStorm.
 * User: lexdu53MAC
 * Date: 20/03/2018
 * Time: 14:59
 */


include ("../Models/BDDConfiguration.php");

class Dao
{
private $bdd;

    function addVisite($visite){

        $req = $this->bdd->prepare('INSERT INTO visite SET prix = :nvprix, facet = :facet, denomination = :denomination, presence = :presence');

        $req->execute(array(
            'nvprix' => $visite->getprix,
            'facet' => $nbFacet,
            'nvprix' => $etagere,
            'denomination' => $denomination,
            'presence' => $presence
        ));
        return $req;
    }

    function updateVisite($idVisite, $prix, $nbFacet, $etagere, $denomination, $presence){

        $req = $this->bdd->prepare('UPDATE visite SET prix = :nvprix, facet = :facet, denomination = :denomination, presence = :presence WHERE id = :idVisite');

        $req->execute(array(
            'idVisite' => $idVisite,
            'nvprix' => $prix,
            'facet' => $nbFacet,
            'nvprix' => $etagere,
            'denomination' => $denomination,
            'presence' => $presence
        ));

        return $req;
    }

    function deleteVisite($id){

        $req = $this->bdd->exec('DELETE FROM visite WHERE id=$id');
        return $req;
    }


}