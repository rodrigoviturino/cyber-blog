<?php

namespace App\site\controller;

use App\classes\Input;

class UsuarioController
{



    public function __construct()
    {
        //echo \App\classes\Input::get('teste', FILTER_SANITIZE_STRING);
        print Input::get('teste', FILTER_SANITIZE_STRING);
    }

}