# add library(tidyverse) here so that it's loaded for the first Session
# even before they have ready about loading libraries
library(tidyverse)


errfun <-  function(cond) {
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}

tryCatch(
  {
    clonedreporesult <- system(paste0("git clone https://github.com/benwhalley/lifesavR/ ~/lifesavR", format(Sys.Date(), "%Y")))
    stopifnot(clonedreporesult==0)
    rm(list = ls()) # clear environment
    rstudioapi::navigateToFile("~/lifesavR/")
    print("Success!")
  },
  error = errfun,
  warning = errfun
)



# TODO

# add options(dplyr.summarise.inform = FALSE) to .RProfile?
# add message reminding to load tidyverse to .Rprofile? Plus similar?
