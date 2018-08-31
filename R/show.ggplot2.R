#' Title
#'
#' @param x
#' @param ShowPlot
#'
#' @return
#' @export
show.ggplot2 <- function(x, ShowPlot = TRUE) {
  if (ShowPlot) {
    print(x)
  }
}
