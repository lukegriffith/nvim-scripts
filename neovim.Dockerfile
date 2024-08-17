FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev go npm python3

RUN mkdir /src

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]
