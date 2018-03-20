<?php
/**
 * Created by PhpStorm.
 * User: traversathomas
 * Date: 20/03/2018
 * Time: 14:29
 */

class Commerciaux
{
    private $id;
    private $nom;
    private $prenom;
    private $estConnecte;

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
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * @param mixed $nom
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
    }

    /**
     * @return mixed
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * @param mixed $prenom
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;
    }


    /**
     * @param mixed $estConnecte
     */
    public function isConnecte($estConnecte)
    {
        return $estConnecte;
    }



}