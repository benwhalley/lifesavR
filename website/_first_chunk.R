library(tidyverse)
library(pander)
library(webex)

# devtools::install_github("benwhalley/psydata")
library(psydata)

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


makermds <- function(video_data){
  identifier <- video_data$identifier
  fs::file_create(paste0("_content/", identifier, "_code.rmd"))
  fs::file_create(paste0("_content/", identifier, "_transcript.rmd"))
  fs::file_create(paste0("_content/", identifier, "_summary.rmd"))

  rstudioapi::navigateToFile(paste0("_content/", identifier, "_summary.rmd"))
}



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
