library(tidyverse)
library(pander)
library(webex)
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = TRUE,
  comment = NA,
  cache = FALSE,
  message = FALSE
)



makermds <- function(video_data){
  identifier <- video_data$identifier
  fs::file_create(paste0("_content/", identifier, "_code.rmd"))
  fs::file_create(paste0("_content/", identifier, "_transcript.rmd"))
  fs::file_create(paste0("_content/", identifier, "_summary.rmd"))

  rstudioapi::navigateToFile(paste0("_content/", identifier, "_summary.rmd"))
}
