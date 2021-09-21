getBrokersNameQuery <- "SELECT BrokerName
FROM [BI].[Base].[Brokers]
where AuctionBrokerPK is not null"