#' Cronavirus daily data of China
#'
#' @description Daily summary of the Coronavirus (COVID-19) cases of China by province/city.
#'
#'@format Data frame with 9 columns and 99063 rows
#' \describe{
#' \item{date}{Date in YYYY-MM-DD format.}
#' \item{month}{CMonth of the giving date}
#' \item{provinceEnglishName}{Name of the province}
#' \item{cityEnglishName}{Name of the city}
#' \item{city_confirmedCount}{Number of new confirmed cases of the given date and city}
#' \item{Cumulative_deaths}{Number of newly cured count on the given date and city}
#' \item{city_deadCount}{Number of newly death count on the given date and city}
#' }
#' 
#' @source The data is obtained from the Center for Systems Science and Engineering (CSSE), which is a research collective housed within the Department of Civil and Systems Engineering (CaSE) at Johns Hopkins University (JHU).
#' 
"cov_china"