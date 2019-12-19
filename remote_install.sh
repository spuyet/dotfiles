cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.6.tar.gz
tar -xzvf 0.6.tar.gz && rm 0.6.tar.gz
mv dotfiles-0.4 .dotfiles
cd .dotfiles
sh install.sh
cd -
