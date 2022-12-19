<?php

namespace App\classes;

/**
 * Gerencia os tipos de entrada GET e POST
 */

class Input {
    
    /**
     * Faz uma requisição do tipo GET
     *
     * @param  string $param Nome da variável ou da query
     * @param  int $filter Constante com o filtro para a variavel
     * @return string Retorna false se não encontrar ou conteúdo encontrado
     */

    public static function get(string $param, int $filter):string {
        return filter_input(INPUT_GET, $param, $filter);
    }
    
    /**
     * Faz uma requisição do tipo POST
     *
     * @param  string $param Nome da variável ou da query
     * @param  int $filter Constante com o filtro para a variavel
     * @return string Retorna false se não encontrar ou conteúdo encontrado
     */

    public static function post(string $param, int $filter):string {
        return filter_input(INPUT_POST, $param, $filter);
    }

}