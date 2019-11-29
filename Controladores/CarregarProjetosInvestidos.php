<?php 
namespace Controladores;
spl_autoload_register(function($classname){
    $dir= str_replace("/Controladores","/",__DIR__);
    require_once $dir .str_replace("\\","/",$classname).".php";
});
session_start();
use Classes\Investidor;
use Classes\Projeto;
if(isset($_SESSION)){
    $user=unserialize($_SESSION['usuario']);
    $user->listarProjetos();
    $resultados= $user->__get('projetosInvestidos');
    $dados= json_encode($resultados);
    echo $dados;
}