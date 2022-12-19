<?php

namespace App\Site\Controller;

use App\Core\Controller;


class UsuarioController extends Controller
{

    public function __construct()
    {
    }

    public function index(){
        echo 'Método Index';
    }
    
    public function teste(){
        echo 'Método Teste';
    }

    public function message(string $msg){
        echo $msg;
    }

    public function pagina(){
        $this->view('home.main');
    }

}