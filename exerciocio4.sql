--seleçao juntando tabelas
SELECT
    C.Nome AS Nome_Cliente, 
    C.Logadouro,
    F.Pontos,
    F.Data_Adesao
FROM
    Cliente AS C
    INNER JOIN Fidelidade AS F ON C.Codigo = F.Codigo_Cliente


--contar quantos registros tem tabela cliente
SELECT
    COUNT(*)
FROM
    Cliente
--contar quantos planos fidelidades tem
SELECT
    COUNT(*)
FROM
    Fidelidade


SELECT
    SUM(Item_Pedido_Venda.Quantidade) AS QTD,
    Produto.Nome
FROM
    Item_Pedido_Venda
    INNER JOIN Produto ON Item_Pedido_Venda.Codigo_Produto = Produto.Codigo
GROUP BY
    Produto.Nome
