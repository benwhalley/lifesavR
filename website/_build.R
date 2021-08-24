# This file is for staff to use to re-build the web pages to support 
# the teaching sessions.

# set current path to where this is running from
# do it manually if not running in RStudio
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# rebuild docs into /docs which is where github serves them from
rmarkdown::render('index.rmd', output_dir = "../docs")
rmarkdown::render('session-1.rmd', output_dir = "../docs")
rmarkdown::render('session-2.rmd', output_dir = "../docs")
rmarkdown::render('session-3.rmd', output_dir = "../docs")
rmarkdown::render('session-4.rmd', output_dir = "../docs")
rmarkdown::render('session-5.rmd', output_dir = "../docs")
