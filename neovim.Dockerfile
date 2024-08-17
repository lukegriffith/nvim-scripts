FROM alpine:3.20.2

LABEL maintainer="Luke Griffith <me@lukegriffith.co.uk>"

RUN apk add --no-cache neovim git curl editorconfig gcc make musl-dev go npm python3 bash shadow

# Create a new user with a home directory
RUN useradd -m -d /home/nvim_user -s /bin/sh nvim_user 
RUN chmod 777 /home/nvim_user
RUN chown -R nvim_user:nvim_user /home/nvim_user

# Set the new user as the default user
USER nvim_user

# Set the working directory to the new user's home
WORKDIR /home/nvim_user


RUN ls -la /home

ADD setup-nvim-container.sh /home/nvim_user/setup-nvim-container.sh
ADD package-config.sh /home/nvim_user/package-config.sh

RUN bash /home/nvim_user/setup-nvim-container.sh

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]
