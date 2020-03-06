#' Round numeric values of a data.frame
#'
#' @param df a data.frame
#' @param digits an integer
#'
#' @return
#' @export
round_df <- function(df, digits) {
  nums <- vapply(df, is.numeric, FUN.VALUE = logical(1))

  df[,nums] <- round(df[,nums], digits = digits)

  return(df)
}
