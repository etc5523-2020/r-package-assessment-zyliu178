## code to prepare `cov_data` dataset goes here
library(tidyverse)
library(lubridate)
library(stringi)

cov_china <- read.csv("Data-raw/covid19.csv") %>%
  filter(countryEnglishName == "China",
         cityEnglishName != "") %>% 
  select(-continentName, -countryName, -provinceName, -city_zipCode, 
         -continentEnglishName, -countryEnglishName, -cityName, -province_zipCode) %>%
  mutate(month = month(updateTime), 
         day = day(updateTime), 
         week = week(updateTime))
cov_china <- cov_china %>% 
  mutate(date = as.Date(ymd_hms(cov_china$updateTime))) %>%
  select(date, month, provinceEnglishName, cityEnglishName, city_confirmedCount, 
         city_curedCount, city_deadCount)

cov_china$cityEnglishName <- stri_replace_all_fixed(cov_china$cityEnglishName,
                                                    c("ü", "ê"), 
                                                    c("u", "e"),
                                                    vectorize_all = FALSE)
    
usethis::use_data(cov_china, overwrite = TRUE)
