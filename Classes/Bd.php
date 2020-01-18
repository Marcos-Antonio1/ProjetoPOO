<?php 
namespace Classes;

use PDO;
use PDOException;

class Bd{
    private $user;
    private $pass;
    private $confLocal;
    public function __construct()
    {
        $this->confLocal="pgsql:host=localhost; dbname=ProjetoPOO;";
        $this->user="";
        $this->pass="";
    }
    public function abrirConexao(){
        try{
            $pdo=new PDO($this->confLocal,$this->user,$this->pass);
            return $pdo;
        }catch(PDOException $e){
            echo "ERRO!: ". $e->getMessage();
        }
    }
}

