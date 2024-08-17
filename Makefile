
.PHONY: build-docker
build-docker:
	docker build -f neovim.Dockerfile . -t nvim


