cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.5.tar.gz
tar -xzvf 0.5.tar.gz && rm 0.5.tar.gz
mv dotfiles-0.4 .dotfiles
cd .dotfiles
sh install.sh
cd -
