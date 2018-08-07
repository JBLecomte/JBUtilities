#' Color blind platte
#'
#' @param name
#' @param n
#' @param type
#'
#' @return a palette color
#' @export
cb.pal <- function (name, n, type = c("discrete", "continuous"))
{
  type <- match.arg(type)
  pal <- l_cb_palette[[name]]
  if (is.null(pal))
    stop(paste("Palette not found. Available are", l_cb_palette[[name]], sep = ','))
  if (missing(n)) {
    n <- length(pal)
  }
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  out <- switch(type, continuous = (grDevices::colorRampPalette(pal))(n),
                discrete = pal[1:n])
  structure(out, class = "palette", name = name)
}
