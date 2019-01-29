#' Save a ggplot2 plot
#' Save plot with specific needs i.e. plot for a Beamer presentation
#'
#' @param plot a ggplot2 object
#' @param file_name a charachter string to save the plot
#' @param path a charachter string for the directory where to save the plot
#' @param output  type of output: NULL, Beamer, Beamer/2 or Beamer_height
#' @param scale  a numeric value for the scale of the plot
#' @param width a numeric value in cm
#' @param height a numeric value in cm
#' @param device a charachter string for the type of devince to be saved pdf, png, jpeg...
#' @param Save a boolean, if FALSE plot is not saved
#' @param units a boolean, if FALSE plot is not saved
#'
#' @return save a plot
#' @import ggplot2
#'
#' @examples
#' @export
save.plot <- function(plot,
                      file_name = NULL,
                      path = NULL,
                      output = NULL,
                      scale = 1,
                      width = NULL,
                      height = NULL,
                      device = 'pdf',
                      Save = TRUE,
                      ErasePlot = TRUE,
                      units = 'cm'){

  if(is.null(file_name)){
    file_name <- deparse(substitute(plot))
  }



  if(Save){

    if(file.exists(paste0(path, '/', file_name, '.', device)) & ErasePlot == FALSE){

      warning('plot already saved')

    }else{

      if(!is.null(output)){
        if(output == 'Beamer'){
          if(is.null(width)){
            width <- 12
          }

          if(is.null(height)){
            height <- 8
          }
        }

        if(output == 'Beamer/2'){
          width <- 10.8/2
          height <- 8.38/2
        }

        if(output == 'Beamer_height'){
          width <- 9
          height <- 13
          file_name <- paste0(file_name, '_h')
        }

        ggsave(plot = plot,
               filename = paste0(file_name, '.' , device),
               device = device,
               path = path,
               scale = scale,
               dpi = 600,
               width = width,
               height = height,
               units = units,
               bg = "transparent")
      }

      if(is.null(output)){
        ggsave(plot = plot,
               filename = paste0(file_name, '.' , device),
               device = device,
               path = path,
               scale = scale,
               dpi = 600,
               bg = "transparent")
      }
    }
  }
}
