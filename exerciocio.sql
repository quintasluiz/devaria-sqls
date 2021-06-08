-- alterar coluna

BEGIN TRANSACTION

ALTER TABLE FIDELIDADE
ALTER COLUMN Pontos DECIMAL(5,1)

--adicionar coluna
BEGIN TRANSACTION

ALTER TABLE FIDELIDADE
ADD Data_Nascimento DATETIME

--excluir coluna
BEGIN TRANSACTION

ALTER TABLE FIDELIDADE
DROP COLUMN Data_Nascimento

--excluir tabela

DROP TABLE Cliente


--visualizar a tabela
SELECT * FROM Fidelidade

--visualizar os campos de data e valor
SELECT
    [Data],
    Valor 
FROM
    Pedido_Compra

--asterisco visualizar todos os itensda tabela
SELECT
    *
FROM
    Pedido_Compra


--inserir dados dentro tabela
BEGIN TRANSACTION

INSERT  Forma_Pagamento
    (Nome, Tipo)
VALUES
    ('VISA', 'Cartão de debito')

--atualizar dado
BEGIN TRANSACTION

UPDATE
    Forma_Pagamento
SET
    Nome = 'SODEXO'
WHERE
    Codigo = 4 AND/OR Tipo = 'R'


--atualizar dado
BEGIN TRANSACTION

UPDATE
    Forma_Pagamento
SET
    Tipo = 'A VISTA'
WHERE
    Codigo = 3



--selecionar distinto, nome que se repete nao aparece por exemplo 2 visas aparece um so, so aparece os diferentes
SELECT
    Distinct Nome
FROM
    Forma_Pagamento

--seleciona todos aparece todas as repetiçoes do visa
SELECT
    Nome
FROM
    Forma_Pagamento

--selecionar quantos clientes quer trazer
SELECT
    TOP(2) *
FROM
    Forma_Pagamento

-- trazer todos os dados parecidos com credito sem contar oos que estao a esquerda, tudo que e parecido com credito no final
SELECT
     *
FROM
    Forma_Pagamento
WHERE
    Nome = 'visa' AND
    Tipo LIKE '%credito'

--os dados que estao a esquerda
Tipo LIKE 'credito%'

--dados no meio
'%credito%'

--trazer tudo que nao é 1
SELECT
    *
FROM
    Forma_Pagamento
WHERE
    Codigo NOT in (1)

--trazer todos que sao 1 e 4
SELECT
    *
FROM
    Forma_Pagamento
WHERE
    Codigo IN (1, 4)


--ordenação decrescente ou crescente
SELECT
    *
FROM
    Forma_Pagamento
ORDER BY
    Nome ASC -- ordem alfabetica, crescente
    nome DESC --ordem decrescente, funciona pra data, numero,codigo

--trazer o ultimo dado inserido
SELECT
    TOP(1) *
FROM
    Forma_Pagamento
ORDER BY
    codigo DESC

--commit
--rollback