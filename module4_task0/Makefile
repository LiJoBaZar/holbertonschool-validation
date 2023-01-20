help: ## Show help command
	@sed -ne '/@sed/!s/## //p' Makefile

build:  ## Create Website
	@hugo
	touch awesome-api

clean:  ## Delete content of dist folder
	@rm -rf dist/*

post:  ## Create a post
	@hugo new ./content/posts/$(POST_NAME).md
	@sed -i '/title:*/c\title: "$(POST_TITLE)"' ./content/posts/$(POST_NAME).md

package: ## zip website
	@hugo
	@zip awesome-website.zip ./dist

lint: ## lint with markdown
	@markdownlint README.md
	@markdownlint DEPLOY.md

unit-tests: ## test file
	@echo "running unit tests"
	touch coverage-units.out

integration-tests: ## integrate file
	@echo "running integration tests"
	touch coverage-integrations.out

validate: ## valide file
