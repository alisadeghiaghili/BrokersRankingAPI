raiseNotEnoughDataError <- function(){
  
  Sys.setlocale(category = "LC_ALL", locale="Persian")
  # Sys.setenv(LANGUAGE="Persian")
  
  list(status = 500, 
       statusMessage = "Internal Server Error",
       errorCode = 4, 
       errorMessage = "Not Enough Data", 
       errorPersianMessage = "ÏÇÏå ˜ÇÝí æÌæÏ äÏÇÑÏ") %>% 
    toJSON(auto_unbox = TRUE) %>% 
    return()
}