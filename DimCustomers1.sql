
--Cleaned DimCustomer Table --
SELECT 
c.customerkey AS CustomerKey,
--		,[GeographyKey]
--		,[CustomerAlternateKey]
--		,[Title]
c.firstname AS FirstName,
--		,[MiddleName]
c.lastname AS LastName,
c.firstname + ' ' + lastname AS [FullName],
--		,[NameStyle]
--		,[BirthDate]
--		,[MaritalStatus]
--		,[Suffix]
Case 
  c.gender When 'M' Then 'Male' When 'F' Then 'Female' End as [Gender],
--		,[EmailAddress]
--		,[YearlyIncome]
--		,[TotalChildren]
--		,[NumberChildrenAtHome]
--		,[EnglishEducation]
--		,[SpanishEducation]
--		,[FrenchEducation]
--		,[EnglishOccupation]
--		,[SpanishOccupation]
--		,[FrenchOccupation]
--		,[HouseOwnerFlag]
--		,[NumberCarsOwned]
--		,[AddressLine1]
--		,[AddressLine2]
--		,[Phone]
c.datefirstpurchase AS [DateFirstPurchase],
--		,[CommuteDistance]
g.city AS [CustomerCity] -- Joined in from Geography Table
FROM 
  [dbo].[DimCustomer] as c
  Left Join dbo.DimGeography AS g On g.GeographyKey = c.GeographyKey
Order By
  CustomerKey Asc;
