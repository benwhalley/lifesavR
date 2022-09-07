#' @import dplyr
#' @import magrittr
#'
#' @export
regression_table <- function(model, as_text=TRUE){
  x <- model %>% broom::tidy(conf.int=T)

  z <- model %>% arm::standardize() %>%
    broom::tidy()

  znum <- z %>%
    mutate(term = str_replace_all(term, "z\\.", "")) %>%
    transmute(term=term, β = estimate) %>%
    left_join(x, ., by="term") %>%
    select(Term=term, Estimate=estimate, `Lower`=conf.low, Upper=conf.high, β, p=p.value)

  r2 <- model %>% glance() %>% pull(adj.r.squared)
  znumr2 <- znum %>%
    bind_rows(., tibble(Term="Adjusted R sq.", Estimate=r2))

  if(as_text){
    znumr2 %>%
      mutate(`95% CI` = ifelse(!is.na(Lower),
                               glue::glue("[{sprintf('%.3f', Lower)}, {sprintf('%.3f', Upper)}]"), ""),
             .after="Estimate") %>%
      mutate_at(c("Estimate"), ~{ifelse(is.na(.x), "", sprintf("%.3f", .x) )}) %>%
      mutate_if(is.numeric, ~{ifelse(is.na(.x), "", sprintf("%.2f", .x) )}) %>%
      mutate_at(c("p"), ~ifelse(is.na(.x)|.x=="", "", apastats::round.p(.x))) %>%
      select(-Lower, -Upper)

  } else {
    znumr2 %>% mutate_if(is.numeric, ~round(.x, 3))
  }
}

