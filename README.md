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

AULA 25: portfolio em react

O front novo nasce em 'portfolio-react/' (vite+react), ao lado do angular



AULA 24: a tranca

quem escrevee precisa de um token. Antes do primeiro uso, crie a tabela e o dono:

    sudo service mariadb dwii_db < sql/usuarios.sql
    cd api-node
    npm install
    node criar-usuario,js dono@portfolio.dev portfolio2026

Login e escrita com o token:

curl -i http://localhost:3000/api/login -H "Content-Type: application/json" -d '{"email":"dono@portfolio.dev","senha":"portfolio2026"}'




ROTAS QUE LEEM DO 'dwii_db':

    curl -i http://localhost:3000/api/projetos
    curl -i http://localhost:3000/api/projetos/5
    curl -i http://localhost:3000/api/tecnologias

O NODE ESTÁ  NA VERSAO v24.14.0
NPM 11.9.0