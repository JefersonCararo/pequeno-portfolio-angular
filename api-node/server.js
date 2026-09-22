const express = require('express');
const cors = require('cors');

const app = express();
const PORTA = 3000;

app.get('/', (req, res) =>{
    res.send('API do Portfolio em Node: no ar');
});

app.listen(PORTA, () =>{
  console.log('API no ar em http://localhost:' + PORTA);
});

app.use(cors());

const projetos = [
    {
        id:1,
        nome: 'Portfolio Angular',
        descricao: 'Meu portfolio com Angular e Angular Material.',
        tecnologias: 'Angular, TypeScript',
        link_github: 'https://github.com/JefersonCararo/pequeno-portfolio-angular',
        ano: 2026
    },
    {
        id:2,
        nome: 'API do Portfolio em PHP',
        descricao: 'Endpoints de projetos e catalogo com PDO e MariaDB.',
        tecnologias: 'PHP, MariaDB',
        ano: 2026
    },
    {
        id:3,
        nome: 'Sistema de Cadastro v1',
        descricao: 'CRUD em PHP do 1o trimestre.',
        tecnologias: 'PHP, MariaDB, Bootstrap',
        link_github: null,
        ano: 2026
    }
];

app.get('/api/projetos', (req, res) =>{
    res.json(projetos);
});