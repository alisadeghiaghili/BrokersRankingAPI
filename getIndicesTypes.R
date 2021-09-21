getIndiciesTypes <- function() {
  source("createConnection.R")
  BIConnection <- createConnection(dsn = "BI")
  
  IndeciesTypes <- sqlQuery(channel = BIConnection, query = "SELECT [IndexType]
                                                            FROM [BI].[Inx].[BrokerAuditIndexs]") %>% 
  pull(IndexType)
  
  odbcClose(channel = BIConnection)
  return(IndeciesTypes)
}