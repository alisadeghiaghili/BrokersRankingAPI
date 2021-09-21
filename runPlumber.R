setwd("E:\\BrokersRanking")
Sys.setlocale(category = "LC_ALL", locale="Persian")

source("MainAlg.R")

pr <- plumb("plumber.R")
pr$run(host = "172.16.2.38", port=8000)

