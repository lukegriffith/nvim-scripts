#!/bin/bash

docker run -it -v ./config/:/root/.config/nvim -v ./local/:/root/.local/ \
  nvim:latest \
