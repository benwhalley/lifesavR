pacman::p_load(MASS)
pacman::p_load(tidyverse)
pacman::p_load(pander)
pacman::p_load_gh("benwhalley/webex")
pacman::p_load(webex)
pacman::p_load_gh("benwhalley/psydata")
pacman::p_load(psydata)
pacman::p_load(corrr)
pacman::p_load(lavaan)
pacman::p_load(BayesFactor)
pacman::p_load(broom)
pacman::p_load(patchwork)
pacman::p_load(DiagrammeR)
pacman::p_load(ggdag)
pacman::p_load(GGally)
pacman::p_load(arm)

pacman::p_load_gh("jvcasillas/untidydata")
rmarkdown::find_pandoc(version = "2.19.2")
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = F,
  comment = NA,
  cache = FALSE,
  message = FALSE,
  class.output  = "bg-success",
  class.message = "bg-info text-info",
  class.warning = "bg-warning text-warning",
  class.error   = "bg-danger text-danger"
)
options(dplyr.summarise.inform = FALSE)


# see https://stackoverflow.com/questions/26705554/extend-geom-smooth-in-a-single-direction
lm_left <- function(formula,data,...){
  mod <- lm(formula,data)
  class(mod) <- c('lm_left',class(mod))
  mod
}

predictdf.lm_left <-
  function(model, xseq, se, level){
    init_range = range(model$model$x)
    ## here the main code: truncate to x values at the left
    xseq <- xseq[xseq <=init_range[2]]
    ggplot2:::predictdf.default(model, xseq[-length(xseq)], se, level)
  }
