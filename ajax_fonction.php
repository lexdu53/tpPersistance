<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


//echo "aaa";

if (isset($_POST['Data'])){
    foreach($_POST['Data'] as $key => $value){
        $data = json_decode($value);
        $monProduitVerifie = new ProduitsMagasins(date("Y-mm-dd"),$value["prix"],$value["facet"],$value["etagere"],$value["absent"],$value["visite_id"],$value["magasin_id"],$value["produit_id"]);
        $DaoProduitMagasin = new DaoProduitMagasin();
        
        if(true)//si n'existe pas add
            $DaoProduitMagasin->add($monProduitVerifie);
        else{
            $DaoProduitMagasin->update($monProduitVerifie);
        }
        
    }
    
}

