getBrokersCountQuery <- "SELECT count(*)  
FROM [BI].[Base].[Brokers]
where AuctionBrokerPK is not null"