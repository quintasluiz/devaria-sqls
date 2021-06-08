
--trazer qtd de clientes por cidade
SELECT 
    COUNT(*) AS QTD_CLIENTES,
    Cidade
FROM
    Cliente
GROUP BY
    Cidade

--forma de pagamento por tipo
SELECT
    COUNT(*) AS Pagamento,
    Tipo
FROM
    Forma_Pagamento
GROUP BY
    Tipo

--valor de cada mes, NO CASO SO TEM NO MES 3
SELECT
    SUM(Valor) AS Valor_Mes,
    MONTH(DATA)
FROM
    Pedido_Venda
GROUP BY
    MONTH(Data)

--trazer clientes classificando se e fora ou dentro de sp
SELECT
    CASE
        WHEN Estado = 'SP' THEN 'DENTRO DE SÃO PAULO'
        WHEN Estado = 'RJ' THEN 'DENTRO DO RIO DE JANEIRO'
        ELSE 'FORA DE SÃO PAULO'
    END AS DENTRO_FORA_SP_RJ,
    Nome,
    Estado
FROM
    Cliente

--trazer as formas de pagamento classificando em cartao,refeiçao ou outro tipo de pagamento
SELECT
    CASE
        WHEN Tipo LIKE '%Cartão%' THEN 'Compras com Cartão'
        WHEN Tipo LIKE '%Dinheiro%' THEN 'Compras com Dinheiro'
        ELSE 'Outros'
    END AS PGTO,
    Nome,
    Tipo
FROM
    Forma_Pagamento