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
    private $denomination;
    
     public function __constructor($denomination){
         $this->denomination = $denomination;
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

}