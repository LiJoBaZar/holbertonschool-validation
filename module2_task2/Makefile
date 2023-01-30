build: ##Compile source code
			make lint
			go build

run: ##Runs the API
			./awesome-api >./awesome.log 2>&1 &

stop:	##Stop the API
			kill $(shell pgrep awesome-api)

clean: ##Delete info
			-make stop
			-rm -r ./awesome-api awesome.log

test: ##Tests for the API
			curl http://localhost:9999
			curl http://localhost:9999/health

lint: ## Lint go in all files
			golangci-lint run

unit-tests: ## Runs tests using go test
			go test -v -short -coverprofile=coverage-units.out

.SILENT:
help: ##implemente and print a list of all the goals
			@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'