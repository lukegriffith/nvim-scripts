#!/bin/bash

mkdir -p /home/github/bare_config /home/github/.config/nvim
git clone --bare https://github.com/lukegriffith/kickstart.nvim /home/github/bare_config
git --git-dir=/home/github/bare_config --work-tree=/home/github/.config/nvim pull
git --git-dir=/home/github/bare_config --work-tree=/home/github/.config/nvim checkout -f

