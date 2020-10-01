#' Install package if not present
#'
#' @param Packages
#' @param force
#' @return
#' @export
#'
#' @examples
InstallPackages <- function(Packages, force = FALSE) {
  if(force == FALSE){
  sapply(Packages, function(Package) if (!Package %in% installed.packages()[, 1]) {install.packages(Package)})
  }

  if(force == TRUE){
    sapply(Packages, function(Package) {install.packages(Package)})
  }
}
