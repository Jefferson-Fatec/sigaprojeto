-- ============================================================
-- CRIAÇÃO COMPLETA DA TABELA dbo.Usuarios
-- Compatível com o código Node.js do POST /api/cadastrarUsuario
-- ============================================================

CREATE TABLE dbo.Usuarios (
    IDUsuario INT IDENTITY(1,1) PRIMARY KEY,      -- Identificador único do usuário
    Nome NVARCHAR(255) NOT NULL,                  -- Nome completo
    Username NVARCHAR(100) NOT NULL UNIQUE,       -- Nome de usuário (único)
    Email NVARCHAR(255) NOT NULL UNIQUE,          -- E-mail (único)
    Senha NVARCHAR(255) NOT NULL,                 -- Senha (armazenar com hash no futuro)
    Cargo NVARCHAR(100) NULL,                     -- Cargo ou função
    CPF NVARCHAR(20) NULL,                        -- CPF
    RG NVARCHAR(20) NULL,                         -- RG
    Telefone NVARCHAR(20) NULL,                   -- Telefone
    DataNascimento DATE NULL,                     -- Data de nascimento
    CEP NVARCHAR(9) NULL,                         -- CEP (formato 00000-000)
    Logradouro NVARCHAR(255) NULL,                -- Rua ou avenida
    Numero NVARCHAR(10) NULL,                     -- Número da residência
    Complemento NVARCHAR(100) NULL,               -- Complemento (bloco, apto etc.)
    Bairro NVARCHAR(100) NULL,                    -- Bairro
    Cidade NVARCHAR(100) NULL,                    -- Cidade
    Estado NVARCHAR(2) NULL,                      -- Estado (sigla)
    DataCadastro DATETIME DEFAULT GETDATE()       -- Data de cadastro automática
);
GO



-- ============================================================
-- INSERINDO 20 USUÁRIOS DE EXEMPLO NA TABELA dbo.Usuarios
-- ============================================================

INSERT INTO dbo.Usuarios 
(Nome, Username, Email, Senha, Cargo, CPF, RG, Telefone, DataNascimento, CEP, Logradouro, Numero, Complemento, Bairro, Cidade, Estado)
VALUES
('Ana Souza', 'anasouza', 'ana.souza@email.com', '1234', 'Analista de Sistemas', '123.456.789-01', '12.345.678-9', '(11) 98888-0001', '1990-01-15', '06000-000', 'Rua das Flores', '101', 'Apto 12', 'Centro', 'São Paulo', 'SP'),
('Bruno Lima', 'brunolima', 'bruno.lima@email.com', '1234', 'Desenvolvedor Fullstack', '234.567.890-12', '23.456.789-0', '(11) 98888-0002', '1992-03-22', '06100-010', 'Av. Paulista', '250', NULL, 'Bela Vista', 'São Paulo', 'SP'),
('Carla Mendes', 'carlamendes', 'carla.mendes@email.com', '1234', 'Gestora de Projetos', '345.678.901-23', '34.567.890-1', '(11) 98888-0003', '1988-07-09', '06200-020', 'Rua Santos Dumont', '88', 'Casa 2', 'Jardim América', 'Barueri', 'SP'),
('Diego Santos', 'diegosantos', 'diego.santos@email.com', '1234', 'Dev Backend', '456.789.012-34', '45.678.901-2', '(11) 98888-0004', '1995-11-23', '06300-030', 'Rua Itapevi', '56', NULL, 'Centro', 'Osasco', 'SP'),
('Eduarda Costa', 'eduardacosta', 'eduarda.costa@email.com', '1234', 'Analista de Dados', '567.890.123-45', '56.789.012-3', '(11) 98888-0005', '1991-09-17', '06400-040', 'Rua Goiás', '71', 'Bloco B', 'Vila Nova', 'Santos', 'SP'),
('Felipe Rocha', 'feliperocha', 'felipe.rocha@email.com', '1234', 'Técnico de Suporte', '678.901.234-56', '67.890.123-4', '(11) 98888-0006', '1989-04-02', '06500-050', 'Rua Bahia', '400', NULL, 'Vila Real', 'Campinas', 'SP'),
('Gabriela Alves', 'gabialves', 'gabriela.alves@email.com', '1234', 'Recursos Humanos', '789.012.345-67', '78.901.234-5', '(11) 98888-0007', '1993-05-08', '06600-060', 'Rua da Consolação', '155', 'Sala 2', 'Bela Vista', 'São Paulo', 'SP'),
('Henrique Moraes', 'henriquem', 'henrique.moraes@email.com', '1234', 'Engenheiro de Software', '890.123.456-78', '89.012.345-6', '(11) 98888-0008', '1990-12-25', '06700-070', 'Rua Rio Branco', '390', NULL, 'Centro', 'Jundiaí', 'SP'),
('Isabela Teixeira', 'isateixeira', 'isabela.teixeira@email.com', '1234', 'Analista de QA', '901.234.567-89', '90.123.456-7', '(11) 98888-0009', '1994-10-19', '06800-080', 'Rua Dom Pedro II', '77', 'Apto 8', 'Jardim Paulista', 'Sorocaba', 'SP'),
('João Pedro', 'joaopedro', 'joao.pedro@email.com', '1234', 'Estagiário', '012.345.678-90', '01.234.567-8', '(11) 98888-0010', '2000-08-13', '06900-090', 'Av. Brasil', '1120', NULL, 'Centro', 'Osasco', 'SP'),
('Karina Souza', 'karinasouza', 'karina.souza@email.com', '1234', 'Coordenadora', '123.789.456-00', '12.345.789-0', '(11) 98888-0011', '1987-06-18', '07000-100', 'Rua Maranhão', '89', NULL, 'Jardim Europa', 'Barueri', 'SP'),
('Lucas Almeida', 'lucasalmeida', 'lucas.almeida@email.com', '1234', 'Dev Frontend', '234.890.567-11', '23.456.890-1', '(11) 98888-0012', '1996-09-25', '07100-110', 'Rua Amazonas', '102', 'Casa 3', 'Centro', 'Santos', 'SP'),
('Mariana Ribeiro', 'marianaribeiro', 'mariana.ribeiro@email.com', '1234', 'Analista Contábil', '345.901.678-22', '34.567.901-2', '(11) 98888-0013', '1991-02-20', '07200-120', 'Rua Bela Vista', '301', NULL, 'Centro', 'Campinas', 'SP'),
('Natália Freitas', 'nataliafreitas', 'natalia.freitas@email.com', '1234', 'Trainee', '456.012.789-33', '45.678.012-3', '(11) 98888-0014', '1998-03-30', '07300-130', 'Rua XV de Novembro', '72', NULL, 'Jardim América', 'Osasco', 'SP'),
('Otávio Silva', 'otaviosilva', 'otavio.silva@email.com', '1234', 'Gerente de TI', '567.123.890-44', '56.789.123-4', '(11) 98888-0015', '1985-11-05', '07400-140', 'Rua das Acácias', '120', 'Bloco A', 'Centro', 'Barueri', 'SP'),
('Paula Fernandes', 'paulafernandes', 'paula.fernandes@email.com', '1234', 'Administradora', '678.234.901-55', '67.890.234-5', '(11) 98888-0016', '1992-07-07', '07500-150', 'Rua dos Ipês', '40', NULL, 'Vila Nova', 'Santos', 'SP'),
('Ricardo Martins', 'ricardomartins', 'ricardo.martins@email.com', '1234', 'Financeiro', '789.345.012-66', '78.901.345-6', '(11) 98888-0017', '1989-01-11', '07600-160', 'Rua do Comércio', '88', NULL, 'Centro', 'Jundiaí', 'SP'),
('Sofia Carvalho', 'sofiacarvalho', 'sofia.carvalho@email.com', '1234', 'Dev Frontend', '890.456.123-77', '89.012.456-7', '(11) 98888-0018', '1994-05-21', '07700-170', 'Rua do Sol', '99', 'Casa 1', 'Bela Vista', 'Campinas', 'SP'),
('Thiago Lopes', 'thiagolopes', 'thiago.lopes@email.com', '1234', 'Dev Backend', '901.567.234-88', '90.123.567-8', '(11) 98888-0019', '1997-09-29', '07800-180', 'Rua Estrela', '130', NULL, 'Centro', 'Osasco', 'SP'),
('Vanessa Pinto', 'vanessapinto', 'vanessa.pinto@email.com', '1234', 'Marketing', '012.678.345-99', '01.234.678-9', '(11) 98888-0020', '1990-10-12', '07900-190', 'Rua das Rosas', '210', NULL, 'Jardim das Flores', 'São Paulo', 'SP');
GO
