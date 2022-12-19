<?php

namespace App\Core;

class Controller {

  protected function view(string $page, array $list = [])
  {

    $page = str_replace('.','/', $page);
    $page .= '.twing.php';
    dd($page);

    $loader = new \Twig\Loader\FilesystemLoader('../App/Site/View');

    $pagina = 'App/Site/View/' . 'home/main.twig.php';

    $twig = new \Twig\Environment($loader);

    echo $twig->render($page , $list);
  }

}
