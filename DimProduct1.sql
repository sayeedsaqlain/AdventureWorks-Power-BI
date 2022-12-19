/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
p.ProductKey AS ProductKey,
p.ProductAlternateKey AS [ProductItemCode],
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
p.EnglishProductName AS [ProductName],
ps.EnglishProductSubCategoryName AS [SubCategory],
pc.EnglishProductCategoryName AS [ProductCategory],
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
p.Color AS [ProductColor],
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
p.Size AS [ProductSize],
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
p.ProductLine AS [ProductLine],
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
p.ModelName AS [ProductModelName],
--      ,[LargePhoto]
p.EnglishDescription AS [ProductDesc],
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
 ISNULL(p.Status,'Outdated') AS [ProductStatus]
FROM 
  [dbo].[DimProduct] AS p
  Left Join dbo.DimProductSubCategory AS ps ON ps.ProductSubCategoryKey = p.ProductSubCategoryKey
  Left Join dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
Order by
p.ProductKey Asc;