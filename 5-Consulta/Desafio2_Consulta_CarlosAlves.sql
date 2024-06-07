-- -------- < DETRAN > --------
--
--                    SCRIPT DE CONSULTA (DML)
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
-- BASE DE DADOS
USE DETRAN;

-- A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF)
SELECT 
    VEICULO.placa,
    VEICULO.cor,
    VEICULO.chassi,
    VEICULO.ano,
    CATEGORIA.nomeCategoria,
    MODELO.nomeModelo
FROM
    VEICULO
        INNER JOIN
    MODELO ON MODELO.codModelo = VEICULO.codModelo
        INNER JOIN
    CATEGORIA ON CATEGORIA.codCategoria = VEICULO.codCategoria
WHERE
    VEICULO.cpf = '12345678901';
    
-- B) Consultar proprietário(s) por qualquer parte do nome

SELECT 
    *
FROM
    PROPRIETARIO
WHERE
    nome LIKE '%Lima%';
    
-- C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...;

SELECT 
    VEICULO.placa,
    VEICULO.cor,
    VEICULO.chassi,
    VEICULO.ano,
    CATEGORIA.nomeCategoria,
    MODELO.nomeModelo,
    INFRACAO.velocidadeAferida,
    INFRACAO.dtHora,
    INFRACAO.latitude,
    INFRACAO.longitude,
    TIPOINFRACAO.tipoInfracao,
    TIPOINFRACAO.valor,
    INFRACAO.matricula
FROM
    VEICULO
        INNER JOIN
    MODELO ON MODELO.codModelo = VEICULO.codModelo
        INNER JOIN
    CATEGORIA ON CATEGORIA.codCategoria = VEICULO.codCategoria
        INNER JOIN
    INFRACAO ON VEICULO.placa = INFRACAO.PLACA
    INNER JOIN
    TIPOINFRACAO ON TIPOINFRACAO.codInfracao = INFRACAO.codInfracao
WHERE
    dtHora BETWEEN '2023-01-01 12:00:00' AND '2023-04-01 15:00:00';
    
-- D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente

SELECT 
    nomeModelo, COUNT(nomeModelo)
FROM
    MODELO
        LEFT JOIN
    VEICULO ON MODELO.codMOdelo = VEICULO.codModelo
GROUP BY nomeModelo
ORDER BY COUNT(nomeModelo) DESC;