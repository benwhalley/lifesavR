## CONFIG
base_dir <- '~/lifesavr'
base_url <- 'https://raw.githubusercontent.com/benwhalley/lifesavR/main/lifesavr/'
files    <- c('session-1.rmd', 'session-2.rmd', 'session-3.rmd', 'session-4.rmd', 'session-5.rmd')

errfun <-  function(cond) {
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}

tryCatch(
  {
    ## be really picky here to make sure everything is as expected
    
    # don't overwrite an existing directory
    stopifnot(dir.exists(base_dir) == FALSE) # nice double negative
    
    # put files in target dir 
    dir.create(base_dir)
    setwd(base_dir) # note that RStudio doesn't refresh the Files pane
    
    for (file in files) {
      cmd <- paste0('wget --quiet ', base_url, file)
      # system() returns 0 on success, so this will fail, for example, if a file in files can't be got
      stopifnot(system(cmd) == 0)
    }

    # try loading some data
    tibble_you_loaded_to_test <- NULL
    assertive::is_data.frame(as.data.frame(tibble_you_loaded_to_test))
    
    rm(list = ls()) # clear environment
    
    print("Success!")
  },
  error = errfun,
  warning = errfun
)