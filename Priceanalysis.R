### Initial Data loading and preprocessing
listings_ist <- read_csv("~/listings_ist.csv")
listings_lndn <- read_csv("~/listings_lndn.csv")
calendar_ist <- read_csv("~/calendar_ist.csv")
calendar_lndn <- read_csv("~/calendar_lndn.csv")

library(tidyverse)
library(dplyr)
library(ggplot2)
library(tidymodels)


#### drop columns
listings_ist <- listings_ist %>% select(-c(listing_url,description, host_name,
                                           picture_url, host_url, host_profile_url,
                                           host_since, host_response_time,host_response_rate,
                                           host_thumbnail_url, host_picture_url, 
                                           host_neighbourhood, neighbourhood, 
                                           neighbourhood_group_cleansed, latitude,
                                           longitude,host_acceptance_rate, 
                                           host_total_listings_count, calendar_updated,
                                           instant_bookable))
listings_lndn <- listings_lndn %>% select(-c(listing_url,description, host_name,
                                           picture_url, host_url, host_profile_url,
                                           host_since, host_response_time,host_response_rate,
                                           host_thumbnail_url, host_picture_url, 
                                           host_neighbourhood, neighbourhood, 
                                           neighbourhood_group_cleansed, latitude,
                                           longitude,host_acceptance_rate, 
                                           host_total_listings_count, calendar_updated,
                                           instant_bookable))

#### NA count
colSums(is.na(listings_ist))
colSums(is.na(listings_lndn))
listings_ist %>% summarise(pct_missing_price = mean(is.na(price)) * 100)
listings_lndn %>% summarise(pct_missing_price = mean(is.na(price)) * 100)


listings_ist <- listings_ist %>% select(-c(neighborhood_overview))
listings_lndn <- listings_lndn %>% select(-c(neighborhood_overview))

#### Drop listings with no price information (relevant variable)
listings_ist <- listings_ist %>%
  filter(!is.na(price))
listings_lndn <- listings_lndn %>%
  filter(!is.na(price))


## Descriptive analysis
### How host profile is related to price
### How property characteristics are related to price
### How reviews are related to price

## Models  
### Generalized Linear Model
### Generalized Additive Models
### Logistic Regression
### XGBoost
### Random Forest

## Model evaluation and comparison


## Results and Conclusion




