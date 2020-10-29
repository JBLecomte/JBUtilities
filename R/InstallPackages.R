#' Install package if not present
#'
#' @param Packages
#' @param force
#' @param repository
#' @return
#' @export
#'
#' @examples
InstallPackages <- function(Packages, force = FALSE, repository = "http://cran.cnr.berkeley.edu/") {
  if(force == FALSE){
  sapply(Packages, function(Package) if (!Package %in% installed.packages()[, 1]) {install.packages(Package, repos = repository)})
  }

  if(force == TRUE){
    sapply(Packages, function(Package) {install.packages(Package,  repos = repository)})
  }
}
