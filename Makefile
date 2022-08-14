.PHONY: *

build:
	docker build . --tag=cypress-dev-server-yarn-issue:latest

run:
	docker run -it --rm \
	-v $$(pwd):/app \
	--user $$(id -u):$$(id -g) \
	cypress-dev-server-yarn-issue:latest bash