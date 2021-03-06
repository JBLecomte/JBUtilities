% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_plot.R
\name{save_plot}
\alias{save_plot}
\title{Save a ggplot2 plot
Save plot with specific needs i.e. plot for a Beamer presentation}
\usage{
save_plot(
  plot,
  file_name = NULL,
  path = NULL,
  output = NULL,
  scale = 1,
  width = NULL,
  height = NULL,
  device = "pdf",
  Save = TRUE,
  units = "cm"
)
}
\arguments{
\item{plot}{a ggplot2 object}

\item{file_name}{a charachter string to save the plot}

\item{path}{a charachter string for the directory where to save the plot}

\item{output}{type of output: NULL, Beamer, Beamer/2 or Beamer_height}

\item{scale}{a numeric value for the scale of the plot}

\item{width}{a numeric value in cm}

\item{height}{a numeric value in cm}

\item{device}{a charachter string for the type of devince to be saved pdf, png, jpeg...}

\item{Save}{a boolean, if FALSE plot is not saved}

\item{units}{a boolean, if FALSE plot is not saved}
}
\value{
save a plot
}
\description{
Save a ggplot2 plot
Save plot with specific needs i.e. plot for a Beamer presentation
}
