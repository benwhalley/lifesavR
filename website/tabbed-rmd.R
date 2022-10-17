library(whisker)



video <- function(yt_id){ 
  whisker.render('
<div class="videowrapper">

<div class="videowrapper-video">
<iframe width="800" height="500" src="//www.youtube-nocookie.com/embed/{{yt_id}}?rel=0"
frameborder="0" allow="autoplay; encrypted-media" allowfullscreen data-external="1"></iframe>

</div>
</div>
')
  }


tab <-function(section_id, title, active=c(T,F,F)){
  identifier <- str_replace_all(title, " ", "_") %>% tolower()
  if (any(active)) { active <- " active " }else { active <- ""}
  return (
    whisker.render('
    <li class="nav-item {{{active}}}">
    <a class="nav-link" id="{{{section_id}}}-{{{identifier}}}-tab" data-toggle="tab" href="#{{{section_id}}}-{{{identifier}}}">
      {{title}}
    </a>
  </li>'))
}

# tab("aaa", "sss", T)


make_tabs <- function(section_id=paste0("tab_", runif(1, 1e4,1e5)), titles=c("Summary", "Code", "Explanation")){
  # if we don't have explicit tab names make them from the titles
    tablist <- map2(titles, c(T,F,F), tab, section_id=section_id) %>% paste0(., collapse="\n\n")
  tab(section_id, titles, active=c(T,F,F)) %>% paste0(., collapse="\n\n")
  return(whisker.render('<ul class="nav nav-tabs" role="tablist">{{{tablist}}}</ul>'))
}

# make_tabs()


start_content_tab <- function(title){
  identifier <- str_replace_all(title, " ", "_") %>% tolower()
  return( whisker.render('<div class="tab-pane active video-text" id="{{identifier}}-summary">'))
}


# start_content_tab("A")

end_content_tab <- function(){
  return('</div>')
}
