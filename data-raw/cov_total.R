## code to prepare `cov_total` dataset goes here
library(tidyverse)
library(here)
library(lubridate)

cov_total <- read_csv(here("Data-raw", "WHO-COVID-19-global-data.csv")) %>% 
  filter(Country == "China") %>%
  mutate(month = month(Date_reported))

usethis::use_data(cov_total, overwrite = TRUE)

