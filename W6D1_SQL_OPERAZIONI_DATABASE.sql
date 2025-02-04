show databases;
use AdventureWorksDW;
SELECT * FROM dimproduct;
SELECT  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag FROM dimproduct;
SELECT  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag AS WorkTable FROM dimproduct; -- mi sembra non abbia bisogno di un alias
SELECT  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag FROM dimproduct WHERE FinishedGoodsFlag = 1;
SELECT  ProductKey, ModelName, EnglishProductName, StandardCost, ListPrice, ProductAlternateKey FROM dimproduct WHERE ProductAlternateKey LIKE 'FR%' OR 'BK%';
SELECT  ProductKey, ModelName, EnglishProductName, StandardCost, ListPrice, ProductAlternateKey FROM dimproduct WHERE ProductAlternateKey LIKE 'BK%' OR 'FR%';
SELECT  ProductKey, ModelName, EnglishProductName, StandardCost, ListPrice, ProductAlternateKey, Listprice - StandardCost AS Markup FROM dimproduct;
SELECT ModelName as Productfinished, Listprice FROM dimproduct WHERE Listprice BETWEEN 1000 AND 2000 ORDER BY Listprice ASC;
SELECT*FROM dimemployee;
SELECT EmployeeKey, FirstName, LastName FROM dimemployee WHERE SalespersonFlag = 1;
SELECT*FROM factresellersales;
SELECT SalesOrderNumber, ProductKey, Orderdate, SalesAmount, SalesAmount - TotalProductCost AS Profit FROM factresellersales WHERE ProductKey IN (597,598,477,214);


