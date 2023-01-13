clean: ##Remove the content of the directory dist/
	rm -rf dist/*
build: ##Generate the website from the markdown and config./
	hugo -d dist/
post: ##Create a new blog.
	@hugo new posts/${POST_NAME}.md
	@sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md
help: ##shows the usage information of the commands
			@echo "Available functions"
			@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
