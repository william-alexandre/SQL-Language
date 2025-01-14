

-- Seleciona os nomes dos produtos cujo peso está entre 500 e 700
SELECT Name FROM Production.Product WHERE Weight > 500 and Weight <= 700

-- Seleciona todos os empregados que são casados e possuem um salário
SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' and SalariedFlag = 1

-- Seleciona todos os registros da tabela de pessoas onde o primeiro nome é 'Peter' e o sobrenome é 'Krebs'
SELECT * FROM Person.Person WHERE FirstName= 'peter' and LastName = 'Krebs'

-- Seleciona todos os endereços de e-mail associados à entidade de negócio com ID 26
SELECT * FROM Person.EmailAddress WHERE BusinessEntityID = 26

-- Conta o número total de produtos na tabela de produtos
SELECT count (*) FROM Production.Product

-- Conta o número de valores diferentes para a coluna 'Size' na tabela de produtos
SELECT count (Size) FROM Production.Product

-- Conta o número de tamanhos distintos na tabela de produtos
SELECT count ( DISTINCT Size) FROM Production.Product

-- Seleciona os 10 primeiros produtos da tabela de produtos
SELECT TOP 10 * FROM Production.Product

-- Seleciona os primeiros e últimos nomes das pessoas, ordenados por primeiro nome em ordem crescente e último nome em ordem decrescente
SELECT FirstName, LastName FROM Person.Person ORDER BY FirstName asc , LastName desc

-- Seleciona os primeiros, últimos e nomes do meio das pessoas, ordenados por nome do meio
SELECT FirstName,LastName,MiddleName FROM Person.Person ORDER BY MiddleName

-- Seleciona os 10 primeiros IDs de produto da tabela de produtos, ordenados por preço de lista em ordem decrescente
SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice DESC

-- Seleciona os 4 primeiros nomes e números de produto da tabela de produtos, ordenados por ID de produto
SELECT TOP 4 Name, ProductNumber FROM Production.Product Order by ProductID

-- Seleciona os nomes e números de produtos com ID de produto entre 1 e 4
SELECT Name, ProductNumber from Production.Product WHERE ProductID between 1 and 4

-- Seleciona todos os empregados contratados entre 01/01/2009 e 01/01/2010, ordenados por data de contratação
SELECT * from HumanResources.Employee WHERE  HireDate BETWEEN '2009/01/01' and '2010/01/01' ORDER BY HireDate

-- Seleciona todas as pessoas com ID de entidade de negócio igual a 2, 7 ou 13
SELECT * FROM Person.person WHERE BusinessEntityID IN (2,7,13)

-- Seleciona todas as pessoas cujo primeiro nome começa com 'ovi'
SELECT * FROM Person.Person WHERE FirstName like 'ovi%'

-- Conta o número de produtos com preço superior a 1500
SELECT count(ListPrice) FROM Production.Product WHERE ListPrice > 1500

-- Conta o número de pessoas com sobrenome começando com a letra 'P'
SELECT count(LastName) FROM Person.Person WHERE LastName LIKE 'P%'

-- Conta o número de cidades distintas na tabela de endereços
SELECT count(DISTINCT (city)) FROM person.Address

-- Seleciona todas as cidades distintas na tabela de endereços
SELECT DISTINCT (city) FROM person.Address

-- Conta o número de produtos de cor vermelha e com preço entre 500 e 1000
SELECT count(*) FROM Production.Product WHERE color = 'red' AND ListPrice BETWEEN 500 and 1000

-- Conta o número de produtos cujo nome contém a palavra 'ROAD'
SELECT count (*) FROM Production.Product WHERE Name LIKE '%ROAD%'
