# add library(tidyverse) here so that it's loaded for the first Session
# even before they have ready about loading libraries

suppressPackageStartupMessages(library(tidyverse))


errfun <-  function(cond) {
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}

tryCatch(
  {
    lifesavrdir <- paste0("~/lifesavR", format(Sys.Date(), "%Y"))


    clonedreporesult <- system(paste0("git clone https://github.com/benwhalley/lifesavR/ ", lifesavrdir ))
    stopifnot(clonedreporesult==0)
    rstudioapi::filesPaneNavigate(paste0(lifesavrdir, "/exercises"))
    print("Switching to the exercises folder.")
    print("Success!")
    rm(list = ls()) # clear environment
  },
  error = errfun,
  warning = errfun
)



# TODO

# add options(dplyr.summarise.inform = FALSE) to .RProfile?
# add message reminding to load tidyverse to .Rprofile? Plus similar?
