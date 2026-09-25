# Build the lifesavR site into docs/ (published by GitHub Pages).
#
#   make                 build every page
#   make session-3.html  build one page
#   make clean           remove knitr leftovers from website/
#
# Uses the token from `gh auth login` so pacman::p_load_gh() can reach GitHub.

PAGES := index session-1 session-2 session-3 session-4 session-5 session-6 session-7

export GITHUB_PAT := $(shell gh auth token 2>/dev/null)

.PHONY: all clean $(PAGES:=.html)

all: $(PAGES:=.html)
	@echo "Built into docs/. Check 'git status docs/' before pushing."

$(PAGES:=.html):
	cd website && Rscript -e "rmarkdown::render(Sys.glob('$(basename $@).[Rr]md'), output_dir = '../docs')"

clean:
	rm -rf website/*_cache website/*_files website/session*.html website/index.html
