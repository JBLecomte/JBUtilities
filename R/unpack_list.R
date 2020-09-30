#' Title
#'
#' @param object
#'
#' @return return object from a list
#' @export
unpack_list <- function(object) {
  for(.x in names(object)){
    assign(value = object[[.x]], x=.x, envir = parent.frame())
  }
}
