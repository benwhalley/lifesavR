errfun <-  function(cond){
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}
tryCatch({
  # be really picky here to make sure everything is as expected
  # don't overwrite an existing directory
  stopifnot(dir.exists('~/lifesavr/')==FALSE)
  # git pull the repo to ~/lifesavr
  #  try loading some data
  tibble_you_loaded_to_test <- NULL
  assertive::is_data.frame(as.data.frame(tibble_you_loaded_to_test))
},
error = errfun,
warning = errfun
)
