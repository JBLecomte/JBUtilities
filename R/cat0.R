#' Title
#'
#' @param ...
#'
#' @return
#' @export
cat0 <- function(...){
  ## Makes it so you can write this:
  ## cat0("X = ", X, " and Y = ", Y)
  ## instead of this:
  ## cat(paste("X = ", X, " and Y = ", Y, "\n", sep=""))
  cat(..., "\n", sep="")
}
