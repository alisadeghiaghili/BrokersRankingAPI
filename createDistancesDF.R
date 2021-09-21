createDistancesDF <- function(numOfRows, numOfCols) {
  matrix(data = rep(0, numOfRows * numOfCols), nrow = numOfRows, ncol = numOfCols) %>% 
    data.frame() %>% 
    return()
}