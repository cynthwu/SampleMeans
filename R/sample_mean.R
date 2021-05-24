#' Generating the means of a sub-sample from a vector and then outputting it into a vector
#'
#' @param vec a numeric vector
#' @param n an integer that indicates the random sample size
#'
#' @return a vector of sample means
#'
#' @import tidyverse
#'
#' @export
sample_mean <- function(vec, n) {
  random_sample <- sample(vec, n, replace = TRUE)
  mean_random_sample <- mean(random_sample)
  return(mean_random_sample)
}
