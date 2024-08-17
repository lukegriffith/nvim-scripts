
.PHONY: build-docker
build-docker:
	docker build -f neovim.Dockerfile . -t nvim

.PHONY: package-config
package-config:
	bash ./package-config.sh
