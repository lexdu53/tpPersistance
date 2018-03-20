<?php
/**
 * Created by PhpStorm.
 * User: traversathomas
 * Date: 20/03/2018
 * Time: 14:26
 */

class Produits
{
    private $id;
    private $prix;
    private $facet;
    private $etagere;
    private $denomination;
    private $absent;

    /**
     * @return mixed
     */
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
    public function getDenomination()
    {
        return $this->denomination;
    }

    /**
     * @param mixed $denomination
     */
    public function setDenomination($denomination)
    {
        $this->denomination = $denomination;
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