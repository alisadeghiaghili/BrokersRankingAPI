calculateDistances <- function(numOfRows, numOfCols, colNames, weightedNormalizedData, MinMax) {
  source("createDistancesDF.R")
  
  positiveDistances <- createDistancesDF(numOfRows = numOfRows, numOfCols = numOfCols)
  colnames(positiveDistances) <- colNames
  negativeDistances <- positiveDistances
  
  for (col in 1:numOfCols) {
    positiveDistances[, col] <- (weightedNormalizedData[, col] - MinMax["Best", col])
    negativeDistances[, col] <- (weightedNormalizedData[, col] - MinMax["Worst", col])
  }
  
  totalPositiveDistance <- positiveDistances^2 %>% rowSums() %>% sqrt()
  totalNegativeDistance <- negativeDistances^2 %>% rowSums() %>% sqrt()
  
  return(data.frame(totalPositiveDistance = totalPositiveDistance,
                    totalNegativeDistance = totalNegativeDistance))
}