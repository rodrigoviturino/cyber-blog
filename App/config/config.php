<?php

$prod = false;

/**
 * prod.php => Produção
 * local.php => localhost | QA
 */

$file = $prod ? 'prod.php' : 'local.php';

require_once('env/' . $file);

