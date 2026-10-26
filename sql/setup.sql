/*INSERT INTO projetos (nome, descricao, tecnologias, link_github, ano, status) VALUES
('Portfolio Pessoal',            'Site de portfolio responsivo com PHP, PDO e MariaDB, painel admin e login.', 'PHP, MariaDB, CSS, Git',   'https://github.com/usuario/portfolio',  2026, 'publicado'),
('Sistema de Biblioteca',        'CRUD de acervo e emprestimos, com busca e relatorios.',                      'PHP, MariaDB, Bootstrap',  'https://github.com/usuario/biblioteca', 2025, 'publicado'),
('App de Tarefas',               'Lista de tarefas com categorias, prazos e filtro por status.',               'JavaScript, HTML, CSS',    'https://github.com/usuario/tarefas',    2025, 'publicado'),
('Loja Virtual (prototipo)',     'Catalogo de produtos com carrinho e checkout simulado.',                     'PHP, MariaDB, JavaScript', 'https://github.com/usuario/loja',       2024, 'publicado'),
('API de Clima',                 'Microsservico que consome uma API publica e devolve a previsao em JSON.',    'PHP, REST',                'https://github.com/usuario/clima',      2026, 'publicado'),
('Jogo da Velha (em construcao)','Jogo da velha local - ainda em desenvolvimento.',                            'JavaScript, HTML',         NULL,                                    2026, 'rascunho');

INSERT INTO tecnologias (nome, categoria, descricao, ano_criacao) VALUES
('HTML',       'Frontend',       'Linguagem de marcacao para estrutura de paginas.', 1993),
('CSS',        'Frontend',       'Linguagem de estilos para apresentacao visual.',   1996),
('JavaScript', 'Frontend',       'Linguagem de programacao para o navegador.',       1995),
('PHP',        'Backend',        'Linguagem server-side para web dinamica.',         1994),
('MariaDB',    'Banco de Dados', 'SGBD relacional open-source.',                     2009),
('Git',        'DevOps',         'Sistema de controle de versao distribuido.');

CREATE TABLE IF NOT EXISTS contatos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  email VARCHAR(180) NOT NULL,
  mensagem TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

sudo mariadb dwii_db -e "CREATE TABLE IF NOT EXISTS contatos (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(120) NOT NULL, email VARCHAR(180) NOT NULL, mensagem TEXT NOT NULL, criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP);"
*/
CREATE DATABASE dwii_db;
CREATE USER 'dwii_user'@'localhost' IDENTIFIED BY 'dwii2026';
GRANT ALL PRIVILEGES ON dwii_db.* TO 'dwii_user'@'localhost';
FLUSH PRIVILEGES;

USE dwii_db;
 
CREATE TABLE IF NOT EXISTS projetos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  descricao TEXT,
  tecnologias VARCHAR(255),
  link_github VARCHAR(255) NULL,
  ano INT,
  status ENUM('publicado', 'rascunho') NOT NULL DEFAULT 'rascunho'
);
 
CREATE TABLE IF NOT EXISTS tecnologias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(60) NOT NULL,
  categoria VARCHAR(60),
  descricao TEXT,
  ano_criacao INT
);
 
CREATE TABLE IF NOT EXISTS contatos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  email VARCHAR(180) NOT NULL,
  mensagem TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 USE dwii_db;
INSERT INTO projetos (nome, descricao, tecnologias, link_github, ano, status) VALUES
('Portfolio Pessoal',            'Site de portfolio responsivo com PHP, PDO e MariaDB, painel admin e login.', 'PHP, MariaDB, CSS, Git',   'https://github.com/usuario/portfolio',  2026, 'publicado'),
('Sistema de Biblioteca',        'CRUD de acervo e emprestimos, com busca e relatorios.',                      'PHP, MariaDB, Bootstrap',  'https://github.com/usuario/biblioteca', 2025, 'publicado'),
('App de Tarefas',               'Lista de tarefas com categorias, prazos e filtro por status.',               'JavaScript, HTML, CSS',    'https://github.com/usuario/tarefas',    2025, 'publicado'),
('Loja Virtual (prototipo)',     'Catalogo de produtos com carrinho e checkout simulado.',                     'PHP, MariaDB, JavaScript', 'https://github.com/usuario/loja',       2024, 'publicado'),
('API de Clima',                 'Microsservico que consome uma API publica e devolve a previsao em JSON.',    'PHP, REST',                'https://github.com/usuario/clima',      2026, 'publicado'),
('Jogo da Velha (em construcao)','Jogo da velha local - ainda em desenvolvimento.',                            'JavaScript, HTML',         NULL,                                    2026, 'rascunho');
('Projeto de teste',  'teste',  'carro', NULL, '2026', 'rascunho');

INSERT INTO tecnologias (nome, categoria, descricao, ano_criacao) VALUES
('HTML',       'Frontend',       'Linguagem de marcacao para estrutura de paginas.', 1993),
('CSS',        'Frontend',       'Linguagem de estilos para apresentacao visual.',   1996),
('JavaScript', 'Frontend',       'Linguagem de programacao para o navegador.',       1995),
('PHP',        'Backend',        'Linguagem server-side para web dinamica.',         1994),
('MariaDB',    'Banco de Dados', 'SGBD relacional open-source.',                     2009),
('Git',        'DevOps',         'Sistema de controle de versao distribuido.',       2005);
 
 SELECT id, nome, ano, status FROM projetos;