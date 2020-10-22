## code to prepare `cov_total` dataset goes here
library(tidyverse)
library(here)
library(lubridate)

cov_total <- read_csv("Data-raw/WHO-COVID-19-global-data.csv") %>% 
  filter(Country == "China") %>%
  mutate(month = month(Date_reported)) %>%
  select(Date_reported, month, New_cases:Cumulative_deaths)

usethis::use_data(cov_total, overwrite = TRUE)

