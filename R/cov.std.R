#' Standardize a continuous covariates
#'
#' @param x
#'
#' @return
#' @export
cov.std <- function(x) {

  if(is.numeric(x) == FALSE){
    stop('x is not numeric')
  }

  y = (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
  return(y)
}

#' Standardize the continuous covariates of the grid based on the observation
#'
#' @param x
#' @param mean_x_obs
#' @param sd_x_obs
#'
#' @export
cov.std.grid <- function(x, mean_x_obs, sd_x_obs) {

  if(is.numeric(x) == FALSE){
    stop('x is not numeric')
  }

  y = (x - mean_x_obs) / sd_x_obs
  return(y)
}
