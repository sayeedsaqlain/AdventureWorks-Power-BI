/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
--      ,[PromotionKey]
--      ,[CurrencyKey]
--      ,[SalesTerritoryKey]
[SalesOrderNumber],
--      ,[SalesOrderLineNumber]
--      ,[RevisionNumber]
--      ,[OrderQuantity]
--      ,[UnitPrice]
--      ,[ExtendedAmount]
--      ,[UnitPriceDiscountPct]
--      ,[DiscountAmount]
--      ,[ProductStandardCost]
--      ,[TotalProductCost]
[SalesAmount]
--      ,[TaxAmt]
--      ,[Freight]
--      ,[CarrierTrackingNumber]
--      ,[CustomerPONumber]
--      ,[OrderDate]
--      ,[DueDate]
--      ,[ShipDate]
FROM 
  [dbo].[FactInternetSales]
Where
  Left (OrderDateKey,4) >=	YEAR(GETDATE()) -2  --Fetching only 2 years of date
Order By
OrderDateKey Asc;