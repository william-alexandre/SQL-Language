-- Exibe todos os registros da tabela SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail

-- Seleciona o ID da oferta especial e a soma do pre�o unit�rio, agrupando por SpecialOfferID
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Seleciona o ID da oferta especial e o pre�o unit�rio para ofertas especiais com ID igual a 9
SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Conta o n�mero de vezes que cada produto foi vendido at� hoje, agrupando por ProductID
SELECT ProductId, COUNT(ProductId) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Conta quantos nomes diferentes de 'FirstName' existem cadastrados na tabela Person
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName

-- Calcula a m�dia de pre�o para os produtos que s�o de cor prata (silver)
SELECT color, AVG(LISTPRICE) AS "PRE�O"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

-- Conta quantas pessoas possuem o mesmo MiddleName, agrupando por MiddleName
SELECT MiddleName, COUNT(FirstName) AS "CONTAGEM"
FROM person.person
GROUP BY MiddleName

-- Calcula a quantidade m�dia de cada produto vendida nas ordens de venda
SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Seleciona as 10 vendas de maiores valores por produto, ordenadas pela soma de 'LineTotal' em ordem decrescente
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY Soma DESC

-- Conta o n�mero de produtos e calcula a m�dia de quantidade por produto nas ordens de servi�o (WorkOrder)
SELECT ProductID, COUNT(ProductID) AS "Contagem", AVG(Orderqty) AS "Media"
FROM Production.WorkOrder
GROUP BY ProductID
