build:## build: Create all content in the website
			hugo -d dist/
clean:## Revome all content in the website
			rm -r dist/*
post:## Create a blog
			hugo new posts/$(POST_NAME).md
			sed -i 's/title: .*/title: "$(POST_TITLE)"/' ./content/posts/$(POST_NAME).md
help:## Helpful list of commands
			@echo "Available functions"
			@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'