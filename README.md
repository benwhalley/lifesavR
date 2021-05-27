# lifesavr

This is WIP

# Contributing

- Work on branch `main` (for the moment) and this is published to https://benwhalley.github.io/lifesavR/
- Add .rmd files (lowercase extension)
- Knit them to html (pref using a setup matching or on the school rstudio server)
- Add changes to Rmd and html in separate commits (to `main` branch)

# Style guide (WIP)

- use `_first-chunk.R` to load packages and set defaults
- use https://styler.r-lib.org/ and https://style.tidyverse.org/ to tidy things (there's an R Studio plugin)
- every `dplyr` verb and `ggplot` layer must be on a new line
- Include empty parentheses for argumentless verbs in pipelines e.g. `gapminder %>% glimpse()` not `gapminder %>% glimpse`

## Videos

1. Write the script for the video with a show/hide button
1. Record the video and add it above the script button (see session-1.rmd for an HTML example)

## Exercises

1. Each new concept should be followed by an exercise to reinforce it
1. Subsequent exercises should reinforce (only) techniques which have been practiced in previous exercises
1. Apart from the basic concepts in session 1, exercises within a session should be numbered sequentially. This makes it
easier for staff and students to refer to particular exercises for which they require support, especially where this is
provided online.

## Language

* Show rather than tell
  * Good: *Using variables lets us store calculations for later.*
  * Bad: *It is important to understand what a variable is in R.*
* Spellings
  * *datasets* not *data sets*
  * *data.frame* not *dataframe/data frame*
  * *built-in* not *built in/builtin*