getIndicesCount <- function() {
  source("createConnection.R")
  source("Query_getIndicesCount.R")
  BIConnection <- createConnection(dsn = "BI")
  IndicesCount <- sqlQuery(channel = BIConnection, query = getIndicesCountQuery) %>% 
    as.integer()
  odbcClose(channel = BIConnection)
  return(IndicesCount)
}