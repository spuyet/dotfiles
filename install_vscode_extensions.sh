#!/bin/sh

pkglist="
  bungcip.better-toml
  faustinoaq.crystal-lang
  ms-azuretools.vscode-docker
  eamodio.gitlens
  gencer.html-slim-scss-css-class-completion
  monokai.theme-monokai-pro-vscode
  ms-vscode.go
  rebornix.ruby
  rust-lang.rust
  robinbentley.sass-indented
  vortizhe.simple-ruby-erb
  davidanson.vscode-markdownlint
  hookyqr.beautify
  dbaeumer.jshint
  dbaeumer.vscode-eslint
  msjsdiag.debugger-for-chrome
  sianglim.slim
  wingrunr21.vscode-ruby
  zxh404.vscode-proto3
"

set -- $pkglist

for i in "$@"; do
  code --install-extension "$i"
done
