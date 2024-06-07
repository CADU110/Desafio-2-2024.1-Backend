-- -------- < DETRAN > --------
--
--                    SCRIPT DE POPULAÇÃO (DML)
--
-- Data Criacao ...........: 07/06/2024
-- Autor(es) ..............: Carlos Eduardo Mota Alves
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: DETRAN
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- Ultimas Alteracoes
--   
-- ---------------------------------------------------------
-- BANCO DE DADOS
USE DETRAN;
-- POPULAÇÃO DE TABELAS
INSERT INTO MODELO (nomeModelo) VALUES 
('GOL MI'), 
('GOL 1.8'), 
('UNO CS'), 
('PALIO 1.0'), 
('CORSA 1.4');

INSERT INTO CATEGORIA (nomeCategoria) VALUES 
('Moto'), 
('Carro'), 
('Caminhão'), 
('Ônibus'), 
('Van');

INSERT INTO PROPRIETARIO (cpf, nome, dtNascimento, bairro, cidade, estado, sexo) VALUES 
('12345678901', 'Carlos Silva', '1980-05-15', 'Asa Sul', 'Brasília', 'DF', 'M'),
('23456789012', 'Ana Souza', '1990-07-22', 'Asa Norte', 'Brasília', 'DF', 'F'),
('34567890123', 'Pedro Lima', '1985-02-10', 'Lago Sul', 'Brasília', 'DF', 'M'),
('45678901234', 'Mariana Santos', '1995-11-30', 'Lago Norte', 'Brasília', 'DF', 'F'),
('56789012345', 'João Oliveira', '1975-09-05', 'Águas Claras', 'Brasília', 'DF', 'M');

INSERT INTO telefone (cpf, telefone) VALUES 
('12345678901', '61987654321'),
('23456789012', '62987654321'),
('34567890123', '63987654321'),
('45678901234', '64987654321'),
('56789012345', '65987654321');

INSERT INTO VEICULO (placa, cor, ano, chassi, codModelo, codCategoria, cpf) VALUES 
('ABC1234', 'Preto', 2020, '1HGCM82633A123456', 1, 2, '12345678901'),
('DEF5678', 'Branco', 2019, '2HGCM82633A654321', 2, 2, '23456789012'),
('GHI9012', 'Azul', 2018, '3HGCM82633A789012', 3, 2, '34567890123'),
('JKL3456', 'Vermelho', 2021, '4HGCM82633A890123', 4, 2, '45678901234'),
('MNO7890', 'Prata', 2022, '5HGCM82633A012345', 5, 2, '56789012345');

INSERT INTO AGENTE (matricula, nome, dtContratacao) VALUES 
(1001, 'Agente 1', '2015-01-01'),
(1002, 'Agente 2', '2016-02-01'),
(1003, 'Agente 3', '2017-03-01'),
(1004, 'Agente 4', '2018-04-01'),
(1005, 'Agente 5', '2019-05-01');

INSERT INTO TIPOINFRACAO (tipoInfracao, valor) VALUES 
('Excesso de Velocidade', 200.00),
('Estacionamento Irregular', 150.00),
('Uso de Celular ao Volante', 300.00),
('Sem Cinto de Segurança', 100.00),
('Avanço de Sinal Vermelho', 400.00);

INSERT INTO LOCAL (latitude, longitude, velocidadePermitida) VALUES 
(-15.794229, -47.882166, 50),
(-15.826691, -47.921820, 60),
(-15.780148, -47.929169, 40),
(-15.775683, -47.797089, 70),
(-15.754901, -47.796202, 30);

INSERT INTO INFRACAO (velocidadeAferida, dtHora, latitude, longitude, codInfracao, matricula, placa) VALUES 
(60, '2023-01-01 12:00:00', -15.794229, -47.882166, 1, 1001, 'ABC1234'),
(80, '2023-02-01 13:00:00', -15.826691, -47.921820, 2, 1002, 'DEF5678'),
(45, '2023-03-01 14:00:00', -15.780148, -47.929169, 3, 1003, 'GHI9012'),
(75, '2023-04-01 15:00:00', -15.775683, -47.797089, 4, 1004, 'JKL3456'),
(65, '2023-05-01 16:00:00', -15.754901, -47.796202, 5, 1005, 'MNO7890');
