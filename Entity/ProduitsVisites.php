<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProduitsVisites
 * Classe métier contenant les produits à verifier lors d'une visite par un commercial
 * @author thymoté
 */
class ProduitsVisites {
    private $id;
    private $visite_id;
    private $produit_id;
    
    public function ProduitsVisites($id,$visite_id,$produit_id){
        $this->id = $id;
        $this->visite_id = $visite_id;
        $this->produit_id = $produit_id;
    }
    
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }
    
    public function getVisiteId()
    {
        return $this->visite_id;
    }

    /**
     * @param mixed $visite_id
     */
    public function setVisiteId($visite_id)
    {
        $this->visite_id = $visite_id;
    }  
    
    public function getProduitId()
    {
        return $this->id;
    }

    /**
     * @param mixed $produit_id
     */
    public function setProduitId($produit_id)
    {
        $this->produit_id = $produit_id;
    }
}
