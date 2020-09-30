#' function for computing mean, DS, max and min values
#'
#' @param x
#'
#' @return
#' @export
compute_min_mean_sd_max <- function(x) {
  r <- c(min(x), mean(x) - sd(x), mean(x), mean(x) + sd(x), max(x))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  return(r)
}

#' define the summary function
#'
#' @param x
#'
#' @return
#' @export
compute_q025_q25_q50_q75_q975 <- function(x) {
  r <- quantile(x, probs = c(0.025, 0.25, 0.5, 0.75, 0.975))
  names(r) <- c("q.025", "q.25", "q.5", "q.75", "q.975")
  return(r)
}
