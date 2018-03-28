<?php
/**
 * Created by PhpStorm.
 * User: traversathomas
 * Date: 20/03/2018
 * Time: 14:30
 */
include_once "DAO/DaoProduitsVistes";
class Visites
{
    private $id;
    private $date;
    private $magasin;
    private $produits=array();
    private $commercial;

    public function __constructor(){
        
    }
    
    public function getListProduitsVisites(){//return list<Produits>
        $this->produits = DaoProduitsVisites::getListProduitsForThisVisite($this->id);
    }

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
    public function getDate()
    {
        return $this->date;
    }

    /**
     * @param mixed $date
     */
    public function setDate($date)
    {
        $this->date = $date;
    }




}