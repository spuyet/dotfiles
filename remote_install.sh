cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.8.tar.gz
tar -xzvf 0.8.tar.gz && rm 0.8.tar.gz
mv dotfiles-0.8 .dotfiles
cd .dotfiles
sh install.sh
cd -
