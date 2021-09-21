FindLastEntryDate <- "SELECT *
FROM [BI].[Inx].[BrokerIndexValues]
Where Year = (SELECT MAX(Year) FROM [BI].[Inx].[BrokerIndexValues]) 
And Month = (SELECT MAX(Month) FROM [BI].[Inx].[BrokerIndexValues] 
             where Year = (SELECT MAX(Year) FROM [BI].[Inx].[BrokerIndexValues]))"