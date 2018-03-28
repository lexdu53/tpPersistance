<?php
class ProduitsMagasins
{
    private $date;
    private $prix;
    private $facet;
    private $etagere;
    private $absent;
    private $visite_id;
    private $magasin_id;
    private $produit_id;
    
    public function __constructor($date,$prix,$facet,$etagere,$absent,$visite_id,$magasin_id,$produit_id){
       $this->date = $date;
       $this->prix = $prix;
       $this->facet = $facet;
       $this->etagere= $etagere;
       $this->absent = $absent;
       $this->visite_id=$visite_id;
       $this->magasin_id=$magasin_id;
       $this->produit_id=$produit_id;
    }
      /**
     * @return mixed
     */
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * @param mixed $prix
     */
    public function setPrix($prix)
    {
        $this->prix = $prix;
    }

    /**
     * @return mixed
     */
    public function getFacet()
    {
        return $this->facet;
    }

    /**
     * @param mixed $facet
     */
    public function setFacet($facet)
    {
        $this->facet = $facet;
    }

    /**
     * @return mixed
     */
    public function getEtagere()
    {
        return $this->etagere;
    }

    /**
     * @param mixed $etagere
     */
    public function setEtagere($etagere)
    {
        $this->etagere = $etagere;
    }
     /**
     * @return mixed
     */
    public function getAbsent()
    {
        return $this->absent;
    }

    /**
     * @param mixed $absent
     */
    public function setAbsent($absent)
    {
        $this->absent = $absent;
    }
    
}