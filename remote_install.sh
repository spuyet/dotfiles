cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.11.tar.gz
tar -xzvf 0.11.tar.gz && rm 0.11.tar.gz
mv dotfiles-0.11 .dotfiles
cd .dotfiles
sh install.sh
cd -
