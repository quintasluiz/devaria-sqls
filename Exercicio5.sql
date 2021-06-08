SELECT
    C.Nome,
    CASE
        WHEN F.Pontos IS NULL THEN 0
        ELSE F.Pontos
    END AS Pontos_Cliente,
    C.Logadouro,
    C.CEP,
    C.Cidade,
    C.Estado,
    C.Telefone
FROM
    Cliente AS C
    LEFT JOIN Fidelidade F ON C.Codigo = F.Codigo_Cliente
ORDER BY
    F.Pontos DESC




SELECT
    D.Nome_Fantasia AS [Nome_Distribuidor],
    CASE
        WHEN SUM(C.Valor) IS NULL THEN '0'
        ELSE SUM(C.Valor)
    END AS [Valor de Compra]
FROM
    Distribuidor AS D
    LEFT JOIN Pedido_Compra AS C ON D.Codigo = C.Codigo_Distribuidor
GROUP BY
    D.Nome_Fantasia
ORDER BY
    D.Nome_Fantasia




SELECT
    C.Nome,
    C.Celular
FROM
    Cliente AS C
    LEFT JOIN Fidelidade AS F ON C.Codigo = F.Codigo_Cliente
WHERE
    Pontos IS NULL