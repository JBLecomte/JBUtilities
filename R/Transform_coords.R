#' #' Convert Long Lat to NAD83
#' #'
#' #' @param x
#' #' @param y
#' #' @param zone
#' #'
#' #' @return
#' #' @import sp
#' #' @import rgdal
#' #' @export
#' LongLatToNAD83 <- function(x , y, zone) {
#'   xy <- data.frame(ID = 1:length(x), X = x, Y = y)
#'
#'   coordinates(xy) <- c("X", "Y")
#'
#'   proj4string(xy) <-  CRS("+proj=longlat +datum=WGS84")
#'   res <- spTransform(xy, CRS(paste0("+proj=utm +zone=", zone, " +init=epsg:3156 +datum=NAD83")))
#'   return(as.data.frame(res)[, 2:3])
#' }
#'
#'
#'
#' #' Convert NAD83 to Long Lat
#' #'
#' #' @param x
#' #' @param y
#' #' @param zone
#' #'
#' #' @return
#' #' @import sp
#' #' @export
#' NAD83ToLongLat <- function(x , y, zone){
#'   xy <- data.frame(ID = 1:length(x), X = x, Y = y)
#'   coordinates(xy) <- c("X", "Y")
#'   proj4string(xy) <- CRS(paste0("+proj=utm +zone=", zone, " +init=epsg:3156 +datum=NAD83"))
#'   res <- spTransform(xy, CRS("+proj=longlat +datum=WGS84"))
#'   return(as.data.frame(res)[,2:3])
#' }
#'
#'
#' #Function
#' #' Title
#' #'
#' #' @param x
#' #' @param y
#' #' @param zone
#' #'
#' #' @return
#' #' @import sp
#' #' @export
#' LongLatToUTM <- function(x, y, zone){
#'   xy <- data.frame(ID = 1:length(x), X = x, Y = y)
#'   coordinates(xy) <- c("X", "Y")
#'   proj4string(xy) <- CRS("+proj=longlat +datum=WGS84")  ## for example
#'   res <- spTransform(xy, CRS(paste("+proj=utm +zone=",zone," ellps=4326",sep='')))
#'   return(as.data.frame(res)[,2:3])
#' }
#'
#'
#' #' # Fonction de conversion d'un format ddmm.m en degr?s d?cimaux
#' #'
#' #' @param x
#' #'
#' #' @return
#' #' @export
#' #'
#' #' @examples
#' conv_ISPTM_LongLat <- function(x) {
#'   d <- floor(x/100)
#'   m <- (x-(d*100))/60
#'   return(d+m)
#' }
#'
#'
