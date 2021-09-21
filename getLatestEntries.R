getLatestEntries <- function(){
  source("createConnection.R")
  source("Query_FindLastEntryDate.R")
  BIConnection <- createConnection(dsn = "BI")

  LatestData <- sqlQuery(channel = BIConnection, query = FindLastEntryDate)
  odbcClose(channel = BIConnection)

  return(LatestData)
}