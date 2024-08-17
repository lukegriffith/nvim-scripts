#!/bin/bash

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


docker run -it -v ./config/:/root/.config/nvim -v ./local/:/root/.local/ \
  nvim:latest \
  --headless \
  -c "lua require('lazy').install()" \
  -c "MasonInstall $formatted_tools"
  -c "qa"

tar -czvf nvim-offline-deps.tar.gz local



