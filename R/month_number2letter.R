#' Title
#'
#' @param month_number_vec
#'
#' @return
#' @export
month_number2letter <- function(month_number_vec){

  if(!is.numeric(month_number_vec)){
    month_number_vec <- as.numeric(as.character(month_number_vec))
  }

  month_number_vec[which(month_number_vec == 1)] <- "jan"
  month_number_vec[which(month_number_vec == 2)] <- "feb"
  month_number_vec[which(month_number_vec == 3)] <- "mar"
  month_number_vec[which(month_number_vec == 4)] <- "apr"
  month_number_vec[which(month_number_vec == 5)] <- "may"
  month_number_vec[which(month_number_vec == 6)] <- "jun"
  month_number_vec[which(month_number_vec == 7)] <- "jul"
  month_number_vec[which(month_number_vec == 8)] <- "aug"
  month_number_vec[which(month_number_vec == 9)] <- "sep"
  month_number_vec[which(month_number_vec == 10)] <- "oct"
  month_number_vec[which(month_number_vec == 11)] <- "nov"
  month_number_vec[which(month_number_vec == 12)] <- "dec"

  month_number_vec <- factor(month_number_vec, levels = c('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'))
  return(month_number_vec)
}
