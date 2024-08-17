#!/bin/bash

alias cfg='/usr/bin/git --git-dir=./bare_config --work-tree=./pkg/config'

cfg fetch --all
cfg pull

tools=(
  "ansible-language-server"
  "ansible-lint"
  "autoflake"
  "autopep8"
  "python-lsp-server"
  "pyright"
  "gopls"
  "lua-language-server"
  "delve"
  "stylua"
  "bash-debug-adapter"
  "bash-language-server"
  "beautysh"
  "yaml-language-server"
  "yamlfmt"
  "yamllint"
  "yamlfix"
  "zk"
  "write-good"
)

formatted_tools=$(printf "%s " "${tools[@]}")

echo $formatted_tools


docker run -it -v ./pkg/config/:/root/.config/nvim -v ./pkg/local/:/root/.local/ \
  nvim:latest \
  --headless \
  -c "lua require('lazy').install()" \
  -c "MasonInstall $formatted_tools"
  -c "qa"

tar -czvf nvim-offline-deps.tar.gz pkg



