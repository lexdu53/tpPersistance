<?php
class BDDConfiguration{
    
    private $_dsn = "mysql:host=localhost;dbname=plateformeCom";
    private $_username = "USERNAME";
    private $_password = "1234";
    private $_PDO = "";
    private static $_instance = "";
    private $_sqlite_path = "sqlite:sqlite/base.db";
    
    private function __construct() {
        try{
            $this->_PDO = new PDO($this->_dsn, $this->_username, $this->_password);    
        } catch (Exception $ex) {
           $this->_PDO = new PDO($this->_sqlite_path, '', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,));
        }
    }

    public function Connexion(){
        return $this->_PDO;
    }
    
    //SINGLETON
    public static function getInstance() {
	if(!self::$_instance) { 
            self::$_instance = new self();
	}
	return self::$_instance;
    }
}
