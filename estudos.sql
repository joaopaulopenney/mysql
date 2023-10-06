-- MySQL SELECT
-- SELECT column1, column2, ...
-- FROM table_name;
-- retorna os campos de dados que quer receber de uma tabela

-- SELECT * FROM table_name;
-- retorna todos os campos de dados da tabela

-- SELECT CustomerName, City, Country FROM Customers;

-- SELECT * FROM Customers;


-- SELECT DISTINCT column1, column2, ...
-- FROM table_name;
-- retorna apenas valores distintos

-- SELECT Country FROM Customers;
-- retorna todos os valores (até mesmo duplicados)

-- SELECT DISTINCT Country FROM Customers;


-- SELECT COUNT(DISTINCT Country) FROM Customers;
-- retorna o número de países distintos na tabela 



-- MySQL WHERE
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- para extrair apenas os registros que atendem a uma condição específica

-- SELECT * FROM Customers
-- WHERE Country = 'Mexico';
-- seleciona todos os clientes do "México"

-- SELECT * FROM Customers
-- WHERE CustomerID = 1;
-- seleciona todos os dados do cliente com id 1

-- (=), (>), (<), (>=), (<=), (<>(difente de)), (BETWEEN(entre)), (LIKE(procurar por um padrão)), (IN(para especificar múltiplos possíveis valores para uma coluna)
-- todos os operadores utilizados com WHERE



-- MySQL AND, OR, NOT
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 AND condition2 AND condition3 ...;

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 OR condition2 OR condition3 ...;

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE NOT condition;

-- SELECT * FROM Customers
-- WHERE Country = 'Germany' AND City = 'Berlin';

-- SELECT * FROM Customers
-- WHERE City = 'Berlin' OR City = 'Stuttgart';

-- SELECT * FROM Customers
-- WHERE Country = 'Germany' OR Country = 'Spain';

-- SELECT * FROM Customers
-- WHERE NOT Country = 'Germany';

-- SELECT * FROM Customers
-- WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');

-- SELECT * FROM Customers
-- WHERE NOT Country = 'Germany' AND NOT Country = 'USA';



-- MySQL ORDER BY
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1, column2, ... ASC|DESC;
-- para classificar o conjunto de resultados em ordem crescente ou decrescente (padrão: crescente)

-- SELECT * FROM Customers
-- ORDER BY Country;
-- para retornar todos os clientes ordenados de forma crescente com base nos países

-- SELECT * FROM Customers
-- ORDER BY Country DESC;
-- para retornar todos os clientes ordenados de forma decrescente com base nos países

-- SELECT * FROM Customers
-- ORDER BY Country, CustomerName;
-- ordena por País, mas se algumas linhas tiverem o mesmo País, ele as ordena por NomeDoCliente

-- SELECT * FROM Customers
-- ORDER BY Country ASC, CustomerName DESC;
-- seleciona todos os clientes da tabela "Clientes", classificados de forma crescente pelo "País" e decrescente pela coluna "NomeDoCliente"



-- MySQL INSERT INTO
-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);
-- é usada para inserir novos registros em uma tabela (Especifique os nomes das colunas e os valores a serem inseridos)

-- INSERT INTO table_name
-- VALUES (value1, value2, value3, ...);
-- insere valores em todas as colunas da tabela (certifique-se de que a ordem dos valores esteja na mesma ordem das colunas da tabela)

-- INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
-- VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- INSERT INTO Customers (CustomerName, City, Country)
-- VALUES ('Cardinal', 'Stavanger', 'Norway');
-- inserindo dados em colunas específicas (o resto das colunas irão ficar com valores nulos)



-- MySQL Null Values
-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NULL;
-- para testar valores nulos (não se usa operadores de comparação com valores nulos)

-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NOT NULL;
-- para testar valores não nulos

-- SELECT CustomerName, ContactName, Address
-- FROM Customers
-- WHERE Address IS NULL;

-- SELECT CustomerName, ContactName, Address
-- FROM Customers
-- WHERE Address IS NOT NULL;



-- MySQL UPDATE
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;
-- é usada para modificar os registros existentes em uma tabela
-- Se você omitir a WHERE cláusula, todos os registros da tabela serão atualizados!

-- UPDATE Customers
-- SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
-- WHERE CustomerID = 1;
-- A instrução SQL a seguir atualiza o primeiro cliente (CustomerID = 1) com uma nova pessoa de contato e uma nova cidade

-- UPDATE Customers
-- SET PostalCode = 00000
-- WHERE Country = 'Mexico';
-- A instrução SQL atualizará o PostalCode para 00000 para todos os registros onde o país é “México”

-- UPDATE Customers
-- SET PostalCode = 00000;
-- sem o WHERE irá transformar o PostalCode de todos os registros da tabela (cuidado!!!!)



-- MySQL DELETE
-- DELETE FROM table_name WHERE condition;
-- é usada para excluir registros existentes em uma tabela

-- DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- DELETE FROM table_name;
-- É possível excluir todas as linhas de uma tabela sem excluir a tabela. Isso significa que a estrutura da tabela, os atributos e os índices estarão intactos

-- DELETE FROM Customers;