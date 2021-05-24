#' Generating the means of a number of sub-samples from a vector and then outputting it into a data frame
#'
#' @param vec a numeric vector
#' @param ns an vector that indicates the desired random sample sizes
#' @param reps an integer that denotes the number of repetitions to be conducted
#'
#' @return a data frame of the sample means
#'
#' @import tidyverse
#'
#' @export
sample_means_ns <- function(vec, reps, ns){
  df <- data.frame(
    sample_mean = unlist(map(ns, ~many_sample_means(vec = vec, .x, reps = reps))), 
    n = ns
  )
  return(df)
}
