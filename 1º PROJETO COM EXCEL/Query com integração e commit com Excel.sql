CREATE OR ALTER VIEW VENDAS_INTERNET AS
SELECT 
	FTS.SalesOrderNumber AS 'N� PEDIDO',
	FTS.OrderDate AS 'DATA DO PEDIDO',
	DPC.EnglishProductCategoryName AS 'CATEGORIA DO PRODUTO',
	DimCustomer.FirstName + ' ' + LastName as 'NOME CLIENTE',
	Gender AS 'SEXO',
	DST.SalesTerritoryCountry AS 'PA�S',
	FTS.OrderQuantity AS 'QTD VENDIDA',
	FTS.TotalProductCost AS 'CUSTO VENDA',
	FTS.SalesAmount AS 'RECEITA VENDA'
FROM FactInternetSales FTS
INNER JOIN DimProduct DP on FTS.ProductKey = DP.ProductKey
	INNER JOIN	DimProductSubcategory DPS on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
		INNER JOIN DimProductCategory DPC on DPS.ProductCategoryKey = DPC.ProductCategoryKey
INNER JOIN DimCustomer on FTS.CustomerKey = DimCustomer.CustomerKey
INNER JOIN  DimSalesTerritory DST on FTS.SalesTerritoryKey = DST.SalesTerritoryKey
WHERE Year(OrderDate) = 2013

--Alterando o banco de dados e atualizando o Excel

BEGIN TRANSACTION T1
	
	UPDATE FactInternetSales
	SET OrderQuantity = 20
	WHERE ProductKey = 361    --Categoria Bike

COMMIT TRANSACTION T1

--Consultando altera��o no banco do ProductKey 361
SELECT * FROM FactInternetSales
ORDER BY OrderQuantity DESC



