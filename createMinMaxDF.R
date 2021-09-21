createMinMaxDF <- function(numOfCols, colNames) {
  MinMax <- matrix(data = rep(0, numOfCols * 2), nrow = 2, ncol = numOfCols) %>% 
    data.frame()
  colnames(MinMax) <- colNames
  rownames(MinMax) <- c("Best", "Worst")
  
  return(MinMax)
}