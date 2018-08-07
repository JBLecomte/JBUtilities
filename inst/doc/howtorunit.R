## ----setup, include = FALSE----------------------------------------------
library('JBUtilities')
library('ggplot2')
knitr::opts_chunk$set(
collapse = TRUE,
comment = "#>"
)

## ----extract.plot.legend-------------------------------------------------
# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, colour = Species)) +
  geom_boxplot()
# print(iris_plot)

# Extract the legend plot
iris_plot_legend <- extract.plot.legend(iris_plot,
                                        Save = TRUE,
                                        device = 'png',
                                        width = 5,
                                        height = 5)

## ----legend, echo = FALSE, message = FALSE-------------------------------
library(knitr)
knitr::include_graphics('legend.png', dpi = 300)

## ----save.plot-----------------------------------------------------------
# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, colour = Species)) +
  geom_boxplot()

# Extract the legend plot
save.plot(iris_plot,
          Save = TRUE,
          output = 'Beamer',
          width = 5,
          height = 5)

## ----print.plot----------------------------------------------------------
# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, colour = Species)) +
  geom_boxplot()

# Print the plot 
print_gg(iris_plot, ShowPlot = TRUE)

## ----cb.pal, echo=FALSE--------------------------------------------------
l_cb_palette <- JBUtilities:::l_cb_palette

JBUtilities:::list_plotter(l_cb_palette,
                           names = names(l_cb_palette),
                           package_name = 'JBUtilities')



## ----cb.grey.pal---------------------------------------------------------
# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, color = Species)) +
scale_color_manual(values = cb.pal(n = 3, name = "cb.grey.pal")) +
geom_boxplot()

# Print the plot
print_gg(iris_plot, ShowPlot = TRUE)

## ----ggplot2.theme-------------------------------------------------------
# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, color = Species)) +
simple.ggplot2.theme() +
geom_boxplot()

# Print the plot
print_gg(iris_plot, ShowPlot = TRUE)

## ----ggplot2.theme2------------------------------------------------------
theme_set(simple.ggplot2.theme())

# Create a plot with legend
iris_plot <- ggplot(data = iris, aes(x = Species, y = Sepal.Width, color = Species)) +
geom_boxplot()
print_gg(iris_plot, ShowPlot = TRUE)

# Create a plot with legend
iris_plot2 <- ggplot(data = iris, aes(x = Species, y = Sepal.Length, color = Species)) +
geom_boxplot()

# Print the plot
print_gg(iris_plot2, ShowPlot = TRUE)

