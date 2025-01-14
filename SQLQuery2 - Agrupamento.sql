-- Seleciona os 10 primeiros resultados com a soma total (line total) das vendas
SELECT TOP 10 SUM (linetotal) AS "Soma" FROM Sales.SalesOrderDetail

-- Seleciona os 10 primeiros resultados com o maior valor de "line total"
SELECT TOP 10 MAX (linetotal) AS "Maior Valor" FROM Sales.SalesOrderDetail

-- Seleciona os 10 primeiros resultados com a média dos valores de "line total"
SELECT TOP 10 AVG (linetotal) AS "Media" FROM Sales.SalesOrderDetail

-- Seleciona todos os registros da tabela SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail

-- Seleciona o ID da oferta especial e a soma do preço unitário, agrupado por SpecialOfferID
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID

-- Seleciona o ID do produto e a contagem de ocorrências de cada produto, agrupado por ProductID
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM" FROM Sales.SalesOrderDetail GROUP BY ProductID

-- Seleciona o primeiro nome das pessoas e a contagem de ocorrências de cada nome, agrupado por FirstName
SELECT FirstName, COUNT(FirstName) AS "Contagem" FROM Person.Person GROUP BY FirstName

