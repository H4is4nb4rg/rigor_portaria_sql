-- ============================================
-- SCRIPT: CRIAÇÃO DO BANCO E DAS TABELAS
-- PROJETO: Sistema de Gestão de Portaria e Pesagem - Rigor
-- ============================================

DROP DATABASE IF EXISTS rigor_portaria;
CREATE DATABASE rigor_portaria;
USE rigor_portaria;

-- TABELA TRANSPORTADORA
CREATE TABLE transportadora (
    id_transportadora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    contato VARCHAR(50)
);

-- TABELA MOTORISTA
CREATE TABLE motorista (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    cnh VARCHAR(20) NOT NULL,
    empresa_transporte VARCHAR(100)
);

-- TABELA AJUDANTE
CREATE TABLE ajudante (
    id_ajudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    empresa_transporte VARCHAR(100)
);

-- TABELA USUÁRIO
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    funcao VARCHAR(50),
    login VARCHAR(50) UNIQUE NOT NULL
);

-- TABELA SETOR
CREATE TABLE setor (
    id_setor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

-- TABELA VEÍCULO
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    tipo VARCHAR(30),
    id_transportadora INT,
    FOREIGN KEY (id_transportadora) REFERENCES transportadora(id_transportadora)
);

-- TABELA PESAGEM
CREATE TABLE pesagem (
    id_pesagem INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    id_motorista INT NOT NULL,
    id_ajudante INT,
    data_hora_entrada DATETIME NOT NULL,
    peso_entrada DECIMAL(10,2),
    data_hora_saida DATETIME,
    peso_saida DECIMAL(10,2),
    peso_liquido DECIMAL(10,2),
    id_setor_destino INT NOT NULL,
    id_balanceiro INT NOT NULL,
    ticket_numero VARCHAR(50),
    observacoes TEXT,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_motorista) REFERENCES motorista(id_motorista),
    FOREIGN KEY (id_ajudante) REFERENCES ajudante(id_ajudante),
    FOREIGN KEY (id_setor_destino) REFERENCES setor(id_setor),
    FOREIGN KEY (id_balanceiro) REFERENCES usuario(id_usuario)
);

-- TABELA ACESSO PESSOA
CREATE TABLE acesso_pessoa (
    id_acesso INT AUTO_INCREMENT PRIMARY KEY,
    tipo_pessoa VARCHAR(50),
    nome VARCHAR(100),
    documento VARCHAR(30),
    data_hora_entrada DATETIME NOT NULL,
    data_hora_saida DATETIME,
    id_usuario_registro INT NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_usuario_registro) REFERENCES usuario(id_usuario)
);

-- TABELA TICKET PESAGEM
CREATE TABLE ticket_pesagem (
    id_ticket INT AUTO_INCREMENT PRIMARY KEY,
    id_pesagem INT UNIQUE NOT NULL,
    caminho_pdf VARCHAR(255),
    data_emissao DATETIME NOT NULL,
    FOREIGN KEY (id_pesagem) REFERENCES pesagem(id_pesagem)
);
