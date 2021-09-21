calculateScores <- function(Distances) {
  
  Distances$totalNegativeDistance / (Distances$totalPositiveDistance + Distances$totalNegativeDistance) %>% 
    return()
}