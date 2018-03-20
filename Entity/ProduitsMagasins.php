<?php
class ProduitsMagasins extends Produits
{
    private $date;
    private $prix;
    private $facet;
    private $etagere;
    private $absent;
    
    public function __constructor($denomination,$date,$prix,$facet,$etagere,$absent){
       parent::__construct($denomination);
       $this->date = $date;
       $this->prix = $prix;
       $this->facet = $facet;
       $this->etagere= $etagere;
       $this->absent = $absent;
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