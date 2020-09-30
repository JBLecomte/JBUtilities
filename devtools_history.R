usethis::use_build_ignore("devtools_history.R") # add this file name to the build ignore

usethis::use_package('grid') # add grid as a required package
usethis::use_package('knitr') # add knitr as a required package
usethis::use_package('scales') # add scales as a required package
usethis::use_package('ggplot2') # add ggplot2 as a required package
usethis::use_package('rmarkdown') # add rmarkdown as a required package
usethis::use_package('sp') # add sp as a required package
usethis::use_package('rgdal') # add rgdal as a required package
usethis::use_package('ggmcmc') # add rgdal as a required package
usethis::use_package('here') # add rgdal as a required package

devtools::use_git()
usethis::browse_github_pat()


################################################################################
### create a list of color palette and save it as internal use


l_cb_palette <-  list(
  cb.grey.pal = c(
    "#E69F00",    # Gold,
    "#56B4E9",  # Light blue,
    "#D55E00",  # Red
    "#009E73",  # Green,
    "#CC79A7",  # Violet
    "#0072B2",  # dark blue
    "#F0E442",  # yellow
    "#999999"   # grey
  ),

  cb.black.pal = c(
    "#E69F00",    # Gold,
    "#56B4E9",    # Light blue,
    "#D55E00",    # Red
    "#009E73",    # Green,
    "#CC79A7",    # Violet
    "#0072B2",    # dark blue
    "#F0E442",    # yellow
    "#000000" # black
  ),

  cb.map.blue.red.pal = c(
    '#a50026',
    '#d73027',
    '#f46d43',
    '#fdae61',
    '#fee090',
    '#ffffbf',
    '#e0f3f8',
    '#abd9e9',
    '#74add1',
    '#4575b4',
    '#313695'
  ),

  cb.map.violet.green.pal =
    c(
      '#40004b',
      '#762a83',
      '#9970ab',
      '#c2a5cf',
      '#e7d4e8',
      '#f7f7f7',
      '#d9f0d3',
      '#a6dba0',
      '#5aae61',
      '#1b7837',
      '#00441b'
    )
)

<<<<<<< HEAD
usethis::use_data(l_cb_palette, internal = TRUE, overwrite = TRUE)
=======
cb_palette <- l_cb_palette[[1]]
image(1:length(cb_palette), 1, as.matrix(1:length(cb_palette)),
      col = cb_palette,
      xlab = paste(name, palattr), ylab = "", xaxt = "n",
      yaxt = "n", bty = "n")

devtools::use_data(l_cb_palette, internal = TRUE, overwrite = TRUE)
>>>>>>> dev

### build package with vignettes
#devtools::install(build_vignettes = FALSE)
usethis::use_vignette(name = 'palette', title = 'Palette')

devtools::document()
devtools::install(build_vignettes = TRUE)
devtools::build_vignettes()
devtools::build(vignettes = TRUE)

