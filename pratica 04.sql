-- 1. Cria o banco
CREATE DATABASE IF NOT EXISTS aula04_ambiente
CHARACTER SET utf8mb4;

-- 2. Mostra só o banco criado
SHOW DATABASES LIKE 'aula04%';

-- 3. Seleciona o banco e confirma
USE aula04_ambiente;
SELECT DATABASE() AS banco_em_uso;

-- 4. Versão e porta
SELECT VERSION() AS versao, @@port AS porta;

-- 5. Contagens da Sakila
SELECT COUNT(*) AS filmes FROM sakila.film;
SELECT COUNT(*) AS clientes FROM sakila.customer;
SELECT COUNT(*) AS alugueis FROM sakila.rental;