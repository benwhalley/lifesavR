## CONFIG
base_dir <- '~/lifesavr'

errfun <-  function(cond) {
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}

tryCatch(
  {
    ## be really picky here to make sure everything is as expected

    setwd('~') # ensure we're in user's home directory
    
    # don't overwrite an existing directory
    stopifnot(dir.exists('~/lifesavr/') == FALSE) # nice double negative

    # get ~/lifesavr
    # why svn? - https://stackoverflow.com/questions/600079/how-do-i-clone-a-subdirectory-only-of-a-git-repository/
    system('svn export https://github.com/benwhalley/lifesavR/trunk/lifesavr', intern = FALSE)

    setwd(base_dir) # put users where their files are (RStudio doesn't refresh)

    # try loading some data
    tibble_you_loaded_to_test <- NULL
    assertive::is_data.frame(as.data.frame(tibble_you_loaded_to_test))
    
    rm(list = ls()) # clear environment
  },
  error = errfun,
  warning = errfun
)
