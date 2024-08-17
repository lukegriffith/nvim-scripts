# neovim
#
# VERSION       0.2

FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev


# Add a new user and create a home directory
RUN adduser -h /home/nvim -D nvim

# Set the user to switch to
USER nvim

# Set the working directory to the user's home
WORKDIR /home/nvim

ENTRYPOINT ["nvim"]
CMD ["/src"]
