#!/bin/bash

mkdir -p /home/nvim_user/bare_config /home/nvim_user/.config/nvim
git clone --bare https://github.com/lukegriffith/kickstart.nvim /home/nvim_user/bare_config
git --git-dir=/home/nvim_user/bare_config --work-tree=/home/nvim_user/.config/nvim pull
git --git-dir=/home/nvim_user/bare_config --work-tree=/home/nvim_user/.config/nvim checkout -f

