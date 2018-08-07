#' Install package if not present
#'
#' @param Packages
#'
#' @return
#' @export
#'
#' @examples
InstallPackages <- function(Packages) {
  sapply(Packages, function(Package) if (!Package %in% installed.packages()[, 1]) {install.packages(Package)})
}
