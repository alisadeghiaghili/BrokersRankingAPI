generateMinMaxDF <- function(numOfCols, colNames, weightedNormalizedData, indexType) {
  source("createMinMaxDF.R")
  source("fillMinMaxDF.R")
  
  createMinMaxDF(numOfCols = numOfCols, colNames = colNames) %>% 
    fillMinMaxDF(weightedNormalizedData = weightedNormalizedData, indexType = indexType, numOfCols = numOfCols) %>% 
    return()
}