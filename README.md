# pequeno-portfolio-angular

MEU NOME É JEFERSON TENHO 16 ANOS E ESSE PROJETO EU SINCERAMENTE NAO SEI OQ POR 

AGORA EU TENHO UMA SEGUNDA DA API, EM JAVASCRIPT, NA PASTA 'api-node/'

O CONTRATO DE 'GET /api/projetos' E O MESMO DO 'api/projetos.php'.

COMO RODAR:
    cd api-node
    npm install
    node server.js

A API SOBE EM http://localhost:3000. TESTE COM:
    curl -i http://localhost:3000/api/projetos


AULA 22: a API le do banco

ANTES DE SUBIR A API, O MARIADB PRECISA ESTAR DE PÉ:

    sudo service mariadb start
    cd api-node
    node server.js

ROTAS QUE LEEM DO 'dwii_db':

    curl -i http://localhost:3000/api/projetos
    curl -i http://localhost:3000/api/projetos/5
    curl -i http://localhost:3000/api/tecnologias

O NODE ESTÁ  NA VERSAO v24.14.0
NPM 11.9.0