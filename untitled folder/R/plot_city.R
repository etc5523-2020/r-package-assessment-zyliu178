#' Plot for selected city
#' 
#' @description Plot total confirmed cases for selected city
#' 
#' @param data A data frame containing a `city` variable
#' @param city Choose city to plot
#' 
#' @examples  
#' \dontrun{ 
#' plot_city(cov_china, "Ankang")
#' }
#' 
#' @import ggplot2 
#' @import dplyr
#' @import shiny
#' 
#' @export
#' 

plot_city <- function(data, city) { renderPlot({
  cov_china %>% filter(cityEnglishName == city,
                       month <=3) %>%
    ggplot(aes(date, city_confirmedCount)) +
    geom_point(aes(color = "#60B0DD")) +
    geom_smooth(aes(color = "#21618C"), se = FALSE) +
    theme(legend.title = element_blank()) +
    xlab("Date") +
    theme_light() +
    ylab("Total confirmed cases") +
    theme(legend.position = "none")+
    ggtitle(city)
  })
}