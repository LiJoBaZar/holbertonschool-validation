build: ## Create all content in the website
			hugo -d dist/
clean: ## Revome all content in the website
			rm -r dist/*
post: ## Create a blog
			hugo new posts/$(POST_NAME).md
			sed -i 's+title.*+title: "$(POST_TITLE)"+g' content/posts/$(POST_NAME).md