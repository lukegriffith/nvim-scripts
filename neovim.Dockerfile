FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev go npm python3 bash shadow

# Create a new user with a home directory
RUN useradd -m -d /github/home -s /bin/sh github 
RUN chmod 777 /github/home
RUN chown -R github:github /github/home

# Set the new user as the default user
USER github

# Set the working directory to the new user's home
WORKDIR /github/home


RUN ls -la /home

ADD setup-nvim-container.sh /github/home/setup-nvim-container.sh
ADD package-config.sh /github/home/package-config.sh

RUN bash /github/home/setup-nvim-container.sh

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]
