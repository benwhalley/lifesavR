# lifesavr

This is the code repository for the `lifesavR` course — a beginners guide to using
R for psychology undergraduates.

# Contributing

- Work on branch `main` (for the moment)
- Add .rmd files to `website/`
- Use `website/_build.R` to generate html and static files in `docs/` (this is published to https://benwhalley.github.io/lifesavR/)
- Add .rmd files (lowercase extension)
- Knit them using a setup matching or on the school rstudio server


# Style guide (WIP)

Use this guide when you're not sure how to create/edit content these materials. If it doesn't answer your question,
update this guide with the approach you took.

- use `_first-chunk.R` to load packages and set defaults
- use https://styler.r-lib.org/ and https://style.tidyverse.org/ to tidy things (there's an R Studio plugin)
- every `dplyr` verb and `ggplot` layer must be on a new line
- Refer to R Studio elements using matching markup e.g. bold for the **Environment** pane
- Include empty parentheses for argumentless verbs in pipelines e.g. `gapminder %>% glimpse()` not `gapminder %>% glimpse`
- All student activities (exercises, MCQs, fill-in-the-blanks ...) should be blocks with `.exercise` class
- Use double quotes for string arguments.

## Level 1 sections

To cater for differing student abilities, each level 1 section should have the following format:

1. Heading explaining the section content
1. Video demonstrating the section content (see session-1.rmd for HTML example of including video)
1. A bullet point summary of the key video content (cover/note everything that might be assessed)
1. A chunk of code used in video; comments explaining what it does.
1. A pseudo-transcript of the video (this may not match word for word what is said, but should cover all points mentioned in the video).

## Exercises

1. Each new top level section should be followed by an exercise to reinforce it
1. Subsequent exercises should reinforce (only) techniques which have been practiced in previous exercises
1. Anything that may needed to be referred to (e.g. exercises, "Check your knowledge" questions) should be numbered
   sequentially. This makes it easier for staff and students to quickly locate items which require support, especially when
   this is provided online.

## "Check your knowledge" sections

Each worksheet and workbook has a "Check your knowledge" section. Questions test the worksheet content, so the total
number will vary. Students are directed to answer these questions in the workbook. The subsequent session begins by
revealing the answers to these questions, as a warmup/revision test.

## Videos

- 'Stage directions' in video transcripts should be included in markdown blocks with a class `.direction` attached. - Be specific about what should be demo'd in the video

## Language

- Show rather than tell
  - Good: _Using variables lets us store calculations for later._
  - Bad: _It is important to understand what a variable is in R._
- Technical terms
  - _function_ not _command_
  - _statement_ not _line of code_ or _line_, where possible
  - _column_ not _variable_ when referring to a column in a dataset
- Spellings
  - _datasets_ not _data sets_
  - _data types_ not _data-types_, or _datatypes_
  - say _data frame_ not `data.frame` unless you really mean 'not a tibble'
  - _built-in_ not _built in/builtin_
  - _x-axis_ not _x axis_
  - _colour_ not _color_ (in text and `aes()`)
  - _internet_ not _Internet_
  - _RMarkdown_ not _R Markdown_
