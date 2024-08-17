#!/bin/bash

docker run -it -v ./pkg/config/:/root/.config/nvim -v ./pkg/local/:/root/.local/ \
  nvim:latest \
