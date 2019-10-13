#!/bin/sh

snappkglist="heroku code"

set -- $snappkglist

for i in "$@"; do
  sudo snap install --classic $i
done

sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update -y

pkglist="libjemalloc-dev git fish"

sudo apt-get install -y $pkglist

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
