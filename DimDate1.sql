
-- Cleaning DimDate Table --
Select 
  [DateKey],
  [FullDateAlternateKey] as Date,
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --[DayNumberOfMonth] 
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNo,
  [EnglishMonthName] as Month,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  Left ([EnglishMonthName],3) as MonthShort,
  [MonthNumberOfYear] as MonthNo,
  [CalendarQuarter] as Quarter,
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
  [CalendarYear] as Year
From 
  [dbo].[DimDate]
Where
  CalendarYear >= 2019