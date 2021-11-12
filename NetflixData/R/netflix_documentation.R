#' Netflix data
#'
#' This data set consists of TV shows and movies available on Netflix from 2019-January 2021
#' The data set includes 7787 Movies and TV shows.
#'
#' @source The original data set, labeled 'Netflix Movies and TV Shows', can be found on Kaggle
#' @format A data frame with Movies and TV Shows available on Netflix
#' \describe{
#' \item{show_id}{show of movie ID number}
#' \item{type}{TV Show or Movie}
#' \item{title}{Title of movie or tv show}
#' \item{director}{Director name}
#' \item{cast}{List of cast members}
#' \item{country}{Countries where movie/tvshow was produced}
#' \item{date_added}{Date it was added to Netlix}
#' \item{release_year}{Release year of tv show or movie}
#' \item{rating}{Maturity rating of of tv show or movie}
#' \item{duration}{Integer duration of Movie or TV Show (in minutes if movie, in seasons if tv show)}
#' \item{duration_type}{Duration value of duration variable. Minutes if movie, Seasons if tv show}
#' \item{listed_in}{List of applicable genres}
#' \item{description}{Description of movie}
#' }
#' @examples
#' netflix
"netflix"
#'
#' Country data
#'
#' This dataset consists of tv shows and movies available on Netflix as of 2019. Unlike the netflix datset, the country column is split
#' so that the movie is repeated for how ever many countries it is availble to
#'
#' @format a data frame with Netflix movies in availble countries
#' \describe{
#' \item{show_id}{show of movie ID number}
#' \item{type}{TV Show or Movie}
#' \item{title}{Title of movie or tv show}
#' \item{director}{Director name}
#' \item{cast}{List of cast members}
#' \item{country}{Country where the movie was produced}
#' \item{date_added}{Date it was added to Netlix}
#' \item{release_year}{Release year of tv show or movie}
#' \item{rating}{Maturity rating of of tv show or movie}
#' \item{duration}{Integer duration of Movie or TV Show (in minutes if movie, in seasons if tv show)}
#' \item{listed_in}{List of applicable genres}
#' \item{description}{Description of movie}
#' }
#' @examples
#' country_data
"country_data"
#'
#' Country Listed-in data
#'
#' This data set consists of TV shows and Movies available on Netflix as of 2019. Unlike the netflix dataset, the country column is split
#' so that the movie is repeated for how ever many countries it is available to. Unlike the country_data dataset, the listed_in column
#' is also split so that each row has a unique movie + country + listed in. The movie is repeated if it has more than one 'listed_in' and
#' if it has more than one country it us available to
#'
#' @format a data frame with Netflix movies in available countries
#' \describe{
#' \item{show_id}{show of movie ID number}
#' \item{type}{TV Show or Movie}
#' \item{title}{Title of movie or tv show}
#' \item{country}{Country where the movie was produced}
#' \item{release_year}{Release year of tv show or movie}
#' \item{rating}{Maturity rating of of tv show or movie}
#' \item{listed_in}{List of applicable genres}
#' \item{description}{Description of movie}
#' }
#' @examples
#' country_listedin
"country_listedin"
