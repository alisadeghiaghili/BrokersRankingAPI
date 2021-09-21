makeRawDataDF <- function(rawData) {
  rawData %>%
    select(-c(Year, Month)) %>%
    spread(key = IndexID, value = Value) %>%
    select(-BrokerID) %>% 
    return()
}