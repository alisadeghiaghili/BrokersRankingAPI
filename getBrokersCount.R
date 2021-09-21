getBrokersCount <- function(){
  source("createConnection.R")
  source("Query_getBrokersCount.R")
  
  BIConnection <- createConnection(dsn = "BI")
  brokersCount <- sqlQuery(channel = BIConnection, query = getBrokersCountQuery) %>% 
    as.integer()
  
  odbcClose(channel = BIConnection)
  return(brokersCount)
}