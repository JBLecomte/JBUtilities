#' Open a windows explorer of the relative path
#' Save plot with specific needs i.e. plot for a Beamer presentation
#'
#' @param relative_path a charachter string for the directory where to save the plot
#'
#' @import here
#' @export
wopen <- function(relative_path){
  options(warn=-1)
  relative_path <-  paste0( here(), '/', relative_path)

  y <- gsub("/", "\\\\", relative_path)
  shell(paste0("explorer ", y), intern = FALSE)
  options(warn=0)
}
