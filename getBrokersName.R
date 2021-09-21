getBrokersName <- function(){
  source("createConnection.R")
  source("Query_getBrokersName.R")
  BIConnection <- createConnection(dsn = "BI")
  
  brokersName <- sqlQuery(channel = BIConnection, query = getBrokersNameQuery) %>% 
    pull(BrokerName)
  
  odbcClose(channel = BIConnection)
  return(brokersName)
}