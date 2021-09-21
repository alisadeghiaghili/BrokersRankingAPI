source("loadLibs.R")
source("systemConfigs.R")
source("loadFuncs.R")


MainAlg <- function(){
  Sys.setlocale(category = "LC_ALL", locale="Persian")
  
  brokersCount <- getBrokersCount()
  indecesCount <- getIndicesCount()
  latestEntries <- getLatestEntries()
  if(nrow(latestEntries) != brokersCount * indecesCount) {
    Sys.setlocale(category = "LC_ALL", locale="Persian")
    
    raiseNotEnoughDataError() %>% 
      return()
  } else {
    indiciesTypes <- getIndiciesTypes()
    indiciesWeigths <- readRDS(file = "weights.rds")
    rawData <- makeRawDataDF(rawData = latestEntries)
    numOfRows <- nrow(rawData)
    numOfCols <- ncol(rawData)
    colNames <- colnames(rawData)
    
    weightedNormalizedData <- sapply(rawData, normalizeCol) * indiciesWeigths
    
    MinMax <- generateMinMaxDF(numOfCols = numOfCols, 
                               colNames = colNames, 
                               weightedNormalizedData = weightedNormalizedData,
                               indexType = indiciesTypes)
    
    Distances <- calculateDistances(numOfRows = numOfRows, 
                                    numOfCols = numOfCols, 
                                    colNames = colNames, 
                                    weightedNormalizedData = weightedNormalizedData,
                                    MinMax = MinMax)
    
    score <- calculateScores(Distances = Distances)
    names(score) <- getBrokersName()
    
    ranks <- length(score) - rank(score) + 1
    
    ranksDF <- data.frame(names = names(score)) %>% 
      mutate(rank = ranks) %>% 
      arrange(rank)

    return(ranksDF)
  }
}