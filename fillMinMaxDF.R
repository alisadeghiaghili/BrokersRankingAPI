fillMinMaxDF <- function(MinMaxDF, weightedNormalizedData, indexType, numOfCols) {

  for (col in 1:numOfCols) {
    if(indexType[col] == 0)  {
      MinMaxDF["Best", col] <- min(weightedNormalizedData[, col])
      MinMaxDF["Worst", col] <- max(weightedNormalizedData[, col])
    } else {
      MinMaxDF["Best", col] <- max(weightedNormalizedData[, col])
      MinMaxDF["Worst", col] <- min(weightedNormalizedData[, col])
    }
  }

  return(MinMaxDF)
}