-- Exibe todos os registros da tabela SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail

-- Seleciona o ID da oferta especial e a soma do preço unitário, agrupando por SpecialOfferID
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Seleciona o ID da oferta especial e o preço unitário para ofertas especiais com ID igual a 9
SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Conta o número de vezes que cada produto foi vendido até hoje, agrupando por ProductID
SELECT ProductId, COUNT(ProductId) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Conta quantos nomes diferentes de 'FirstName' existem cadastrados na tabela Person
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName

-- Calcula a média de preço para os produtos que são de cor prata (silver)
SELECT color, AVG(LISTPRICE) AS "PREÇO"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

-- Conta quantas pessoas possuem o mesmo MiddleName, agrupando por MiddleName
SELECT MiddleName, COUNT(FirstName) AS "CONTAGEM"
FROM person.person
GROUP BY MiddleName

-- Calcula a quantidade média de cada produto vendida nas ordens de venda
SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Seleciona as 10 vendas de maiores valores por produto, ordenadas pela soma de 'LineTotal' em ordem decrescente
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY Soma DESC

-- Conta o número de produtos e calcula a média de quantidade por produto nas ordens de serviço (WorkOrder)
SELECT ProductID, COUNT(ProductID) AS "Contagem", AVG(Orderqty) AS "Media"
FROM Production.WorkOrder
GROUP BY ProductID
