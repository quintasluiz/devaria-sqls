SELECT
    MIN(Valor)
FROM
    Pedido_Venda


SELECT
    MAX(Data_Adesao)
FROM
    Fidelidade


SELECT
    MAX(VALOR)
FROM
    Pedido_Venda
WHERE
    MONTH(DATA) = 3
   -- DATA >= '2021-03-01' AND DATA <= '2021-03-22' 

SELECT * FROM Pedido_Venda


SELECT
    COUNT(*)
FROM
    Cliente



SELECT
    COUNT(*)
FROM
    Pedido_Compra
WHERE
    Valor >= 1000


SELECT
    COUNT(*)
FROM
    Cliente
WHERE
    Cidade = 'São Paulo'


SELECT
    SUM(Quantidade)
FROM
    Item_Pedido_Compra

SELECT * FROM Item_Pedido_Compra

SELECT
    SUM(Valor_Imposto)
FROM
    Pedido_Venda


SELECT
    SUM(PONTOS)
FROM
    Fidelidade

SELECT
    AVG(Valor)
FROM
    Pedido_Compra

SELECT
    AVG(Quantidade)
FROM
    Item_Pedido_Venda

--OPERADORES ARITMETICOS

SELECT
    Valor - Valor_Imposto
FROM
    Pedido_Venda


SELECT
    Valor_Unitario + Valor_Imposto
FROM
    Item_Pedido_Venda


SELECT
    pontos / 2 AS PONTOS_METADE,
     Pontos AS PONTOS_ORIGINAL,
     Pontos * 2 AS PONTOS_DOBRO
FROM
    Fidelidade

SELECT
    Valor + valor_imposto
FROM
    Pedido_Venda