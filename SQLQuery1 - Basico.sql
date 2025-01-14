

-- Seleciona os nomes dos produtos cujo peso est� entre 500 e 700
SELECT Name FROM Production.Product WHERE Weight > 500 and Weight <= 700

-- Seleciona todos os empregados que s�o casados e possuem um sal�rio
SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' and SalariedFlag = 1

-- Seleciona todos os registros da tabela de pessoas onde o primeiro nome � 'Peter' e o sobrenome � 'Krebs'
SELECT * FROM Person.Person WHERE FirstName= 'peter' and LastName = 'Krebs'

-- Seleciona todos os endere�os de e-mail associados � entidade de neg�cio com ID 26
SELECT * FROM Person.EmailAddress WHERE BusinessEntityID = 26

-- Conta o n�mero total de produtos na tabela de produtos
SELECT count (*) FROM Production.Product

-- Conta o n�mero de valores diferentes para a coluna 'Size' na tabela de produtos
SELECT count (Size) FROM Production.Product

-- Conta o n�mero de tamanhos distintos na tabela de produtos
SELECT count ( DISTINCT Size) FROM Production.Product

-- Seleciona os 10 primeiros produtos da tabela de produtos
SELECT TOP 10 * FROM Production.Product

-- Seleciona os primeiros e �ltimos nomes das pessoas, ordenados por primeiro nome em ordem crescente e �ltimo nome em ordem decrescente
SELECT FirstName, LastName FROM Person.Person ORDER BY FirstName asc , LastName desc

-- Seleciona os primeiros, �ltimos e nomes do meio das pessoas, ordenados por nome do meio
SELECT FirstName,LastName,MiddleName FROM Person.Person ORDER BY MiddleName

-- Seleciona os 10 primeiros IDs de produto da tabela de produtos, ordenados por pre�o de lista em ordem decrescente
SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice DESC

-- Seleciona os 4 primeiros nomes e n�meros de produto da tabela de produtos, ordenados por ID de produto
SELECT TOP 4 Name, ProductNumber FROM Production.Product Order by ProductID

-- Seleciona os nomes e n�meros de produtos com ID de produto entre 1 e 4
SELECT Name, ProductNumber from Production.Product WHERE ProductID between 1 and 4

-- Seleciona todos os empregados contratados entre 01/01/2009 e 01/01/2010, ordenados por data de contrata��o
SELECT * from HumanResources.Employee WHERE  HireDate BETWEEN '2009/01/01' and '2010/01/01' ORDER BY HireDate

-- Seleciona todas as pessoas com ID de entidade de neg�cio igual a 2, 7 ou 13
SELECT * FROM Person.person WHERE BusinessEntityID IN (2,7,13)

-- Seleciona todas as pessoas cujo primeiro nome come�a com 'ovi'
SELECT * FROM Person.Person WHERE FirstName like 'ovi%'

-- Conta o n�mero de produtos com pre�o superior a 1500
SELECT count(ListPrice) FROM Production.Product WHERE ListPrice > 1500

-- Conta o n�mero de pessoas com sobrenome come�ando com a letra 'P'
SELECT count(LastName) FROM Person.Person WHERE LastName LIKE 'P%'

-- Conta o n�mero de cidades distintas na tabela de endere�os
SELECT count(DISTINCT (city)) FROM person.Address

-- Seleciona todas as cidades distintas na tabela de endere�os
SELECT DISTINCT (city) FROM person.Address

-- Conta o n�mero de produtos de cor vermelha e com pre�o entre 500 e 1000
SELECT count(*) FROM Production.Product WHERE color = 'red' AND ListPrice BETWEEN 500 and 1000

-- Conta o n�mero de produtos cujo nome cont�m a palavra 'ROAD'
SELECT count (*) FROM Production.Product WHERE Name LIKE '%ROAD%'
