# Cyber Blog

## Projeto blog aplicando MVC no PHP

Para a utilização desse projeto se faz necessário algumas tecnologias, dentro elas:

* PHP 7.0^
* MariaDB ou Mysql
* Composer
* Git

O Projeto está em desenvolvimento e qualquer alteração pode acarretar em erros, aguarde a versão final.

# Configuração

O arquivo de configuração fica na pasta **app\config** contendo o arquivo config.php e uma subpasta chamada de **env** contendo o arquivo final de configuração para ambiente Local, QA e produção.

## config.php

Faz uma validação atráves de uma variável para verificar qual arquivo será utilizado.

Mude o valor da variavel **$prod** para true se for usar em produção. caso seja para Local ou QA utilize o valor na variavel para false.

# Renderizando página com Twig

Para renderizar uma página com Twig basta extender a classe **App\Core\Controller.php** e chamar o método view.

O método recebe dois parâmetros, sendo eles:

* **$page** - Página a ser carregada, não informe .twig.php pois já é inserido automaticamente. Não utilizar **/** para diretório, mas sim **.**  exemplo: **diretorio.pagina**;

* **$params** - Array associativo com os valores a serem entregues para a página do Twig.