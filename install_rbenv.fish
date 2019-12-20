#!/usr/bin/env fish

git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
cd $HOME/.rbenv && src/configure && make -C src && cd -
$HOME/.rbenv/bin/rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
mkdir -p (rbenv root)/plugins
git clone https://github.com/rbenv/ruby-build.git (rbenv root)/plugins/ruby-build
