#' Open a windows explorer of the relative path
#'
#' @param relative_path a character string for the directory where to save the plot
#' @import here
#' @return open the relative path
#' @export

wopen <- function(relative_path){

  options(warn=-1)
  relative_path <-  paste0( here::here(), '/', relative_path)

  if(get_os() == 'windows'){
    y <- gsub("/", "\\\\", relative_path)
    shell(paste0("explorer ", y), intern = FALSE)
  }
  if(get_os() == 'linux'){
    system(paste0("xdg-open ", relative_path),
           intern = TRUE,
           ignore.stdout = TRUE,
           ignore.stderr = TRUE)
  }
  options(warn=0)
}
