BEGIN TRANSACTION

SELECT 
    *
FROM
    Forma_Pagamento
WHERE
    Codigo NOT IN (3, 2)

    SELECT 
    *
FROM
    Forma_Pagamento
ORDER BY
   Nome ASC

     SELECT 
    *
FROM
    Forma_Pagamento
ORDER BY
   Nome DESC

SELECT
    TOP(2) *
FROM 
    Forma_Pagamento

SELECT
    *
FROM
    Forma_Pagamento
WHERE
    Nome = 'VISA' AND
    Tipo LIKE '%Car%'

SELECT 
    Distinct Nome
FROM
    Forma_Pagamento

UPDATE
    Forma_Pagamento
SET
    Nome = 'SODEXO'
WHERE
    Codigo = 4 OR Tipo= 'R'

INSERT INTO Forma_Pagamento
    (Nome, Tipo)
VALUES
    ('VISA', 'Cartão de debito')

    INSERT INTO Forma_Pagamento
    (Nome, Tipo)
VALUES
    ('VISA', 'Cartão de credito')

INSERT INTO Forma_Pagamento
    (Nome, Tipo)
VALUES
    ('dinheiro', ' dinheiro ')
COMMIT
    SELECT * FROM Forma_Pagamento
INSERT INTO Forma_Pagamento
    VALUES
    ('SEDOXO', ' Ticket refeiçao ')
COMMIT
    SELECT * FROM Forma_Pagamento