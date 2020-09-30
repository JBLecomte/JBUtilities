show_palette <- function (name)
{
  if (!(name %in% namelist)) {
    stop(paste(name, "is not a valid palette name for JBUtilities palette"))
  }

  image(1:n, 1,
        as.matrix(1:n),
        col = brewer.pal(n, name),
        xlab = paste(name, palattr),
        ylab = "", xaxt = "n",
        yaxt = "n", bty = "n")
}
