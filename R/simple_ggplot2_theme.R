#' My simple ggplot2 theme
#' @import ggplot2
#' @return
#' @export
simple_ggplot2_theme <- function (base_size = 11,
                                  base_family = '') {

  ### Build theme on the ggplot2 theme black and white : theme_bw
  simple.ggplot2.theme <- ggplot2::theme_bw(base_family = base_family,
                                            base_size = base_size)


  ### Change black and white theme
  simple.ggplot2.theme <- simple.ggplot2.theme +

    theme(

      ### Remove the square line around the plot
      panel.border = element_rect( fill = NA, colour = NA),

      ### Margin
      #### margin of 25 but at bottom 10
      plot.margin = margin(t = 25, r = 25, b = 10, l = 25, unit = "pt"),

      ### Grid on the plot
      panel.grid = element_blank(),
      panel.grid.major.x = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.y = element_blank(),
      panel.grid.minor.y = element_blank(),



      ### Axis
      axis.line = element_line(),
      axis.line.x = element_line( colour = "black", size = 0.5, linetype = 1),
      axis.line.y = element_line( colour = "black", size = 0.5, linetype = 1),
      axis.text = element_text( size = rel(0.8)),
      axis.ticks = element_line( colour = "black", size = 0.5),

      ### Background
      # panel.background = element_rect( fill = "transparent", colour = NA),
      panel.background = element_blank(),
      plot.background = element_blank(),

      ### Legend
      legend.background = element_rect( colour = NA, fill = NA),
      legend.key = element_rect( colour = NA, fill = NA),
      legend.key.size = unit( 1.1, "line"),
      legend.title = element_text(size = rel(1), face = "bold"),
      legend.text = element_text(size = rel(1)),
      legend.position = "bottom",

      ### Facet
      strip.text.x = element_text(size = 6),
      strip.text.y = element_text(size = 6),
      strip.background = element_rect(colour = "black", fill = NA),

      ### Title
      #### left aligned title
      plot.title.position = "plot",

      ### Caption
      #### right aligned caption
      plot.caption.position = "plot"
    )
}

