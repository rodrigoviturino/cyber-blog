<?php

function dd($param = null){

  print "<pre>";
  print_r($param);
  print "</pre>";

  die();
}

function redirect(string $url)
{
  header('Location: ' . $url);
}