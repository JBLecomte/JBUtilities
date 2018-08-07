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

## ----cb.pal.continuous---------------------------------------------------
# Create a plot with legend
iris_plot2 <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Sepal.Length)) +
  scale_color_gradientn(colours = cb.pal(name = "cb.map.blue.red.pal",  type = "continuous")) +
  geom_point()

# Print the plot
print_gg(iris_plot2, ShowPlot = TRUE)

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

## ----cov.std-------------------------------------------------------------
## simulation of a covariate
covariate <- runif(100, 1, 10)
## standardisation
covariate_std <- cov.std(covariate)

## the same covariate sampled in a different place but we want the same standardisation
covariate_grid <- runif(100, 5, 10)
## use the fonction covariate_grid_std
covariate_grid_std <- cov.std.grid(covariate,
                                   mean_x_obs = mean(covariate),
                                   sd_x_obs = sd(covariate))

## ----month.number2letter-------------------------------------------------
## simulation of a vector of month
month_numeric <- sample(1:12, size = 10)
head(month_numeric)

## transform to letters
month_f <- month.number2letter(month_numeric)
head(month_f)

## ----fill.NA.gaps--------------------------------------------------------
## simulation of a vector
vec <- c(1, NA, 5, 6, 1, NA, 1)
fill.NA.gaps(vec)

## simulation of a vector
vec <- c(1, NA, NA, 6, 1, NA, 1)
fill.NA.gaps(vec)

vec <- c(NA, 2, NA, 6, 1, NA, 1)
fill.NA.gaps(vec)


