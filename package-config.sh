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

nvim \
  --headless \
  -c "MasonInstall $formatted_tools" \
  -c "qa"

tar -czvf nvim-offline-deps.tar.gz /root/.config/nvim /root/.local/{share,state}/nvim



