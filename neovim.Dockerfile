FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev go npm python3 bash shadow

# Create a new user with a home directory
RUN useradd -m -d /home/github -s /bin/sh github 
RUN chmod 777 /home/github
RUN chown -R github:github /home/github

# Set the new user as the default user
USER github

# Set the working directory to the new user's home
WORKDIR /home/github


RUN ls -la /home

ADD setup-nvim-container.sh /home/github/setup-nvim-container.sh
ADD package-config.sh /home/github/package-config.sh

RUN bash /home/github/setup-nvim-container.sh

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]
