#!/bin/bash

mkdir -p /github/home/bare_config /github/home/.config/nvim
git clone --bare https://github.com/lukegriffith/kickstart.nvim /github/home/bare_config
git --git-dir=/github/home/bare_config --work-tree=/github/home/.config/nvim pull
git --git-dir=/github/home/bare_config --work-tree=/github/home/.config/nvim checkout -f

