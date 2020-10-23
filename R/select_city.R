#' Select a city for shiny app
#' 
#' @description Select a city which you want to display
#' 
#' @param data A data frame containing a `city` variable
#' 
#' @examples  
#' \dontrun{ 
#' select_city(cov_china)
#' }
#' 
#' @import shiny
#' 
#' @export
#' 

select_city <- function(data) {
  selectInput("cityInput", "Which city do you want to display?",
                 choices = unique(data$cityEnglishName),
                 selected= "Ankang", multiple =FALSE)
}