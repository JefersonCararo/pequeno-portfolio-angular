const express = require('express');
const cors = require('cors');
const pool = require('./db');

const app = express();
const PORTA = 3000;

app.get('/', (req, res) =>{
    res.send('API do Portfolio em Node: no ar');
});

app.listen(PORTA, () =>{
  console.log('API no ar em http://localhost:' + PORTA);
});

app.use(cors());

app.use(express.json());

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
    },
    {

        id:4,
        nome: 'Projeto de Teste',
        ano: 2026
    }
];


app.get('/api/projetos/:id', async (req, res) =>{
    try{
    const sql = "SELECT id, nome, descricao, tecnologias, link_github, ano FROM projetos WHERE status = 'publicado' ORDER BY ano DESC, id";
    const [linhas] =  await pool.query(sql, [req.params.id]);
    if (linhas.lenght === 0){
        return res.status(404).json({ erro: 'Projeto nao encontrado'});
    }
        res.json(linhas[0]);
    } catch (erro){
         res.status(500).json({ erro: 'Falha no servidor: ' + erro.message });
    }
    
    app.post('/api/projetos', async (req, res) =>{
        try{
            const dados = req.body;
            console.log(dados);
            if (!dados || !dados.nome){
                return res.status(400).json({ erro: 'Informe pelo menos o nome do projeto'});  
            }
            const sql = 'INSERT INTO projetos(nome, descricao, tecnologias, link_github, ano, status) VALUES (?, ?, ?, ?, ?, ?)';
            const [resultado] = await pool.execute(sql, [
                dados.nome, dados.descricao ?? '', dados.tecnologias ?? '', dados.link_github ?? '', dados.ano ?? new Date().getFullYear(), 'publicado'
            ]);
            res.status(201).json({ id: resultado.insertId});
        } catch (erro) {
            res.status(500).json({ erro: 'Falha no servidor: ' + erro.erro.message});
        }
    });

});

app.put('/api/projetos/:id', async (req, res) =>{
    try{
        const dados = req.body;
        if (!dados || !dados.nome){
            return res.status(400).json({ erro: 'Informe pelo menos o nome do projeto' });   
        }
        const sql = 'UPDATE projetos SET nome = ?, descricao = ?, tecnologias = ?, link_github = ?, ano = ? WHERE id = ?';
        const [resultado] = await pool.execute(sql, [
            dados.nome, dados.descricao ?? '', dados.tecnologias ?? '', dados.link_github ?? '', dados.ano ?? new Date().getFullYear(), req.params.id
        ]);
        if (resultado.affectedRows === 0) {
            return res.status(404).json({ erro: 'Projeto nao encontrado'});
        }
        res.json({ mensagem: 'Projeto atualizado'});
    } catch (erro) {
        res.status(500).json({ erro: 'Falha no servidor: ' + erro.message });
    }
});