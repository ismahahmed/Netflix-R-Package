library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library("ggplot2")
library("dplyr")
#library("NetflixData")

# Function, release_year_titles, that takes release year and prints out the movies
# and tv shows that were released that year

#' Function for getting movie/tv list from a given release year
#' @param year release year of movies and tv shows on netflix
#' @examples release_year_titles(2020)
#' @examples release_year_titles(2010)
#' @return None
#' @export
release_year_titles <- function(year){
  data(netflix)
  temp = netflix[netflix$release_year == year,] # get all rows with matching release year
  print(temp$title)
  #cat(paste0(temp$title[]))
}

# Function, recommendation_titles, that takes type (TV or Movie), rating category and release year
# and prints out the movies and tv shows that meet that criteria

#' Function for getting movie/tv list from a given type, rating and release year
#' @param type TV show or Movie
#' @param rating TV-G, TV-PG, TV-13, TV-14, TV-Y, R, TV-MA
#' @param year release year of movie/tv show
#' @examples recommendation_titles("Movie", "TV-MA", 2020)
#' @return None
#' @export
recommendation_titles <- function(type, rating, year){
  data(netflix)
  temp = netflix[netflix$type == type,] # get all rows with matching type
  temp = temp[temp$rating == rating,]
  temp = temp[temp$release_year == year,]
  print(temp$title)
  #cat(paste0(temp$title[]))
}

# Function, country_titles takes country object
# and prints out the movies and tv shows that were produced in that country

#' Function for getting movie/tv list from a given country on production
#' @param country Country of production
#' @examples country_titles("United States")
#' @return None
#' @export
country_titles <- function(country){
  data(country_data)
  temp = country_data[country_data$country == country,] # get all rows with matching country
  temp %>%
    select(title) %>%
    na.omit()
  #cat(paste0(temp$title[]))
}

# Function, country_year_titles takes country object and release year
# and prints out the movies and tv shows that were produced in that country in that year

#' Function for getting movie/tv list from a given country on production
#' @param country Country of production
#' @param year Year of release
#' @examples country_year_titles("United States", 2020)
#' @return None
#' @export
country_year_titles <- function(country, year){
  data(country_data)
  temp = country_data[country_data$country == country,] # get all rows with matching country
  temp = temp[temp$release_year == year,]
  temp %>%
    select(title) %>%
    na.omit()
  #cat(paste0(temp$title[]))
}

