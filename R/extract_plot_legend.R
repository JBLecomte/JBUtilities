#' Extract a legend from a ggplot object
#' Extract a legend from a ggplot object and save it if Save argument set to TRUE
#'
#' @param Save a boolean
#' @param path_figure a directory or relative directory as charchacter
#' @param gplot a ggplot2 object
#' @param width a numeric value
#' @param height a numeric value
#' @param device a charchacter taking the form of pdf or png
#'
#' @return the legend of a ggplot2 object
#' @import ggplot2
#' @import grid
#'
#' @examples
#' @export
extract_plot_legend <- function(gplot,
                                width = 5 ,
                                height = 5,
                                device = 'pdf',
                                Save = FALSE,
                                path_figure = NULL) {

  g <- ggplotGrob(gplot + guides(
    shape = FALSE,
    size = guide_legend(order = 2),
    fill = guide_legend(name = 'CV', order = 3),
    byrow = TRUE
  ))$grobs

  legend <- g[[which(sapply(g, function(x)
    x$name) == "guide-box")]]

  if (Save) {
    if (device == 'pdf') {
      if (!is.null(path_figure)) {
        pdf(
          paste0(path_figure, '/legend.pdf'),
          width = width ,
          height = height,
          paper = 'special'
        )
      } else{
        pdf(
          'legend.pdf',
          width = width ,
          height = height,
          paper = 'special'
        )
      }
    }

    if (device == 'png') {
      if (!is.null(path_figure)) {
        png(
          paste0(path_figure, '/legend.png'),
          width = width ,
          height = height,
          units = 'cm',
          res = 300
        )
      } else{
        png(
          'legend.png',
          width = width ,
          height = height,
          units = 'cm',
          res = 300
        )
      }
    }

    grid.draw(legend)
    dev.off()

  }

  return(legend)

}
