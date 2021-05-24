#' Generating the means of a sub-sample from a vector a specified amount of times
#' and then outputting it into a vector
#'
#' @param vec a numeric vector
#' @param n an integer that indicates the random sample size
#' @param reps an integer that denotes the number of repetitions to be conducted
#'
#' @return a vector of the sample means
#'
#' @import tidyverse
#'
#' @export
many_sample_means <- function(vec, n, reps){
  results <- replicate(reps, sample_mean(vec, n))
  return(results)
}
