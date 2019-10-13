#!/bin/bash

pkglist=(
  bungcip.better-toml
  faustinoaq.crystal-lang
  ms-azuretools.vscode-docker
  eamodio.gitlens
  gencer.html-slim-scss-css-class-completion
  monokai.theme-monokai-pro-vscode
  rebornix.ruby
  rust-lang.rust
  robinbentley.sass-indented
  vortizhe.simple-ruby-erb
  davidanson.vscode-markdownlint
  hookyqr.beautify
  dbaeumer.jshint
  dbaeumer.vscode-eslint
  msjsdiag.debugger-for-chrome
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
