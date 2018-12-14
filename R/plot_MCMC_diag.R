#' Function to make mcmc diag plots from a data.frame
#'
#' @param df_samples
#' @param suffix_files
#' @param ShowPlots
#' @param density
#' @param autocorr
#' @param trace_plot
#' @param Rhat
#' @param pair_plot
#' @param geweke_plot
#' @import ggplot2
#' @import ggmcmc
#' @return
#' @export
#'
plot_MCMC_diag <- function(df_samples,
                           suffix_files = NULL,
                           SavePlots = TRUE,
                           ShowPlots = TRUE,
                           density = TRUE,
                           autocorr = TRUE,
                           trace_plot = TRUE,
                           Rhat = TRUE,
                           pair_plot = TRUE,
                           geweke_plot = FALSE){
  ##----------------------------------------------------------------------------
  if(density){
    cat0('Plot density')
    density_plot <- ggs_density(df_samples, rug = TRUE)
    if(ShowPlots){
      print(density_plot)
    }
    if(SavePlots){
      ggsave(density_plot, file=paste0(path_figure, "/density_plot",suffix_files,".pdf"))
    }
  }else{density_plot <- NULL}
  ##----------------------------------------------------------------------------
  if(autocorr){
    cat0('Plot autocorrelation')
    autocorr_plot <- ggs_autocorrelation(df_samples)
    if(ShowPlots){
      print(autocorr_plot)
    }
    if(SavePlots){
      ggsave(autocorr_plot, file=paste0(path_figure, "/autocorr_plot",suffix_files,".pdf"))
    }
  }else{autocorr_plot <- NULL}
  ##----------------------------------------------------------------------------
  if(trace_plot){
    cat0('Plot traceplot')
    trace_plot <- ggs_traceplot(df_samples)
    if(ShowPlots){
      print(trace_plot)
    }
    if(SavePlots){
      ggsave(trace_plot, file=paste0(path_figure, "/trace_plot",suffix_files,".pdf"))
    }
  }else{trace_plot <- NULL}
  ##----------------------------------------------------------------------------
  if(Rhat){
    cat0('Plot R hat')
    Rhat_plot <- ggs_Rhat(df_samples) + xlab("R_hat")
    if(ShowPlots){
      print(Rhat_plot)
    }
    if(SavePlots){
      ggsave(Rhat_plot, file=paste0(path_figure, "/Rhat_plot",suffix_files,".pdf"))
    }
  }else{Rhat_plot <- NULL}
  ##----------------------------------------------------------------------------
  if(pair_plot){
    cat0('Plot pair plot')
    pair_plot <- ggs_pairs(df_samples, lower = list(continuous = "density"))
    if(ShowPlots){
      print(pair_plot)
    }
    if(SavePlots){
      ggsave(pair_plot, file=paste0(path_figure, "/pair_plot",suffix_files,".pdf"))
    }
  }else{pair_plot <- NULL}
  ##----------------------------------------------------------------------------
  if(geweke_plot){
    cat0('Plot geweke plot')
    geweke_plot <- ggs_geweke(df_samples)
    if(ShowPlots){
      print(geweke_plot)
    }
    if(SavePlots){
      ggsave(geweke_plot, file=paste0(path_figure, "/geweke_plot",suffix_files,".pdf"))
    }
  }else{geweke_plot <- NULL}
  ##----------------------------------------------------------------------------
  return(list(density_plot = density_plot,
              autocorr_plot = autocorr_plot,
              trace_plot = trace_plot,
              Rhat_plot = Rhat_plot,
              pair_plot = pair_plot,
              geweke_plot = geweke_plot))
}
