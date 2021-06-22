# lifesavr

This is WIP

# Contributing

- Work on branch `main` (for the moment) and this is published to https://benwhalley.github.io/lifesavR/
- Add .rmd files (lowercase extension)
- Knit them to html (pref using a setup matching or on the school rstudio server)
- Add changes to Rmd and html in separate commits (to `main` branch)

# Style guide (WIP)

Use this guide when you're not sure how to create/edit content these materials. If it doesn't answer your question,
update this guide with the approach you took.

- use `_first-chunk.R` to load packages and set defaults
- use https://styler.r-lib.org/ and https://style.tidyverse.org/ to tidy things (there's an R Studio plugin)
- every `dplyr` verb and `ggplot` layer must be on a new line
- Refer to R Studio elements using matching markup e.g. bold for the **Environment** pane
- Include empty parentheses for argumentless verbs in pipelines e.g. `gapminder %>% glimpse()` not `gapminder %>% glimpse`
- All student activities (exercises, MCQs, fill-in-the-blanks ...) should be in blue boxes

## Level 1 sections

To cater for differing student abilities, each level 1 section should have the following format:

1. Heading explaining the section content e.g. 'Storing data in variables' not 'Variables'
1. Video demonstrating the section content (see session-1.rmd for HTML example of including video)
1. Bullet point summary of the video content
1. Chunk with code in video and comments explaining what it does
1. Video (tran)script video with show/hide button

## Exercises

1. Each new concept should be followed by an exercise to reinforce it
1. Subsequent exercises should reinforce (only) techniques which have been practiced in previous exercises
1. Anything that may needed to be referred to (e.g. exercises, "Check your knowledge" questions) should be numbered
sequentially. This makes it easier for staff and students to quickly locate items which require support, especially when
this is provided online.

## "Check your knowledge" sections

Each worksheet and workbook has a "Check your knowledge" section. Students are directed to answer these questions in the
workbook. The subsequent session begins by revealing the answers to these questions, as a warmup/revision test.

## Language

* Show rather than tell
  * Good: *Using variables lets us store calculations for later.*
  * Bad: *It is important to understand what a variable is in R.*
* Spellings
  * *datasets* not *data sets*
  * `data.frame` (in backticks) not *dataframe*, or *data frame*
  * *built-in* not *built in/builtin*
  * *x-axis* not *x axis*
  * *colour* not *colour* (in text and `aes()`)