#!/bin/bash

mkdir -p /root/bare_config /root/.config/nvim
git clone --bare https://github.com/lukegriffith/kickstart.nvim /root/bare_config
/usr/bin/git --git-dir=/root/bare_config --work-tree=/root/.config/nvim fetch --all
/usr/bin/git --git-dir=/root/bare_config --work-tree=/root/.config/nvim pull

