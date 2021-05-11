## CONFIG
base_dir <- '~/lifesavr'
# files you don't want users to see
rm_files <- c('bootstrap.R', 'Outline for lifesavr.docx', 'principles.rmd', 'template-session-1.rmd',
               'README.md', 'lifesavr.Rproj', '*.html')

errfun <-  function(cond) {
  warning(cond)
  warning("\n\nSomething went wrong - please see a member of staff before continuing.")
}

tryCatch(
  {
    ## be really picky here to make sure everything is as expected

    # don't overwrite an existing directory
    stopifnot(dir.exists('~/lifesavr/') == FALSE) # nice double negative

    # clone the repo to ~/lifesavr
    system(paste0('git clone https://github.com/benwhalley/lifesavR/ ', base_dir), intern = FALSE)

    # put users where files are
    setwd(base_dir)

    # remove development files
    ## DEBT: check return values
    file.remove(Sys.glob(rm_files))

    # try loading some data
    tibble_you_loaded_to_test <- NULL
    assertive::is_data.frame(as.data.frame(tibble_you_loaded_to_test))
  },
  error = errfun,
  warning = errfun
)
