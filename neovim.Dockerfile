FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev go npm python3

ADD setup-nvim-container.sh /root/setup-nvim-container.sh
ADD package-config.sh /root/package-config.sh

RUN bash /root/setup.nvim.container.sh

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]
