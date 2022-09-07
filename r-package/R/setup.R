#' @import dplyr
#' @import magrittr
#'
#' @export
setup <- function(delete_existing = FALSE){

  # add library(tidyverse) here so that it's loaded for the first Session
  # even before they have ready about loading libraries

  suppressPackageStartupMessages(library(tidyverse))

  errfun <-  function(cond) {
    warning(cond)
    warning("\n\nSomething went wrong - please see a member of staff before continuing.")
  }

  tryCatch(
    {
      lifesavrdir <- paste0("~/lifesavr", format(Sys.Date(), "%Y"))

      if (delete_existing==TRUE & file.exists(lifesavrdir)){
        unlink(lifesavrdir, recursive=T)
        message("\n\nRemoving existing lifesavr folder")
      }

      clonedreporesult <- system(paste0("git clone https://github.com/benwhalley/lifesavR/ ", lifesavrdir ))
      stopifnot(clonedreporesult==0)

      message("Switching to the exercises folder.")
      #rstudioapi::filesPaneNavigate(paste0(lifesavrdir, "/exercises"))
      message("Success!")

      # set default for dplyr.summarise.inform
      rprof.fn <- file.path("~", ".Rprofile")
      opttext <- "\n\noptions(dplyr.summarise.inform = FALSE)\n"
      if(!str_detect(read_file(rprof.fn), "dplyr.summarise.inform")){
        write(opttext,file=file.path("~", ".Rprofile"),append=TRUE)
        message("Adding dplyr.summarise.inform=F to .Rprofile ")
      } else {
        message("Preference for dplyr.summarise.inform already found in .Rprofile ")
      }

      rm(list = ls()) # clear environment
    },
    error = errfun,
    warning = errfun
  )
}

#setup()
