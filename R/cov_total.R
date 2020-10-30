#' Cronavirus daily data of China
#'
#' @description Daily summary of the cronavirus (COVID-19) cases and deaths
#'
#'@format Data frame with 6 columns and 258 rows
#' \describe{
#' \item{Date_reported}{Date in YYYY-MM-DD format.}
#' \item{month}{CMonth of the giving date}
#' \item{New_cases}{Number of new confirmed cases on the given date}
#' \item{Cumulative_cases}{Number of cumulated confirmed cases on the given date}
#' \item{New_deaths}{Number of new death on the given date}
#' \item{Cumulative_deaths}{Number of acumulated death on the given date}
#' }
#'
#' @details The dataset contains the daily summary of Coronavirus cases (confirmed, death)
#' 
#' @source World health organization:
#' <https://www.who.int/emergencies/diseases/novel-coronavirus-2019>
"cov_total"