## code to prepare `cov_data` dataset goes here
library(tidyverse)
library(here)
library(lubridate)

cov_china <- read.csv(here("Data-raw", "covid19.csv")) %>%
  filter(countryEnglishName == "China",
         cityEnglishName != "") %>% 
  select(-continentName, -countryName, -provinceName, -city_zipCode, 
         -continentEnglishName, -countryEnglishName, -cityName, -province_zipCode) %>%
  mutate(month = month(updateTime), 
         day = day(updateTime), 
         week = week(updateTime))
cov_china <- cov_china %>% 
  mutate(date = as.Date(ymd_hms(cov_china$updateTime)))


usethis::use_data(cov_china, overwrite = TRUE)
