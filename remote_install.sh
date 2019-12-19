cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.9.tar.gz
tar -xzvf 0.9.tar.gz && rm 0.9.tar.gz
mv dotfiles-0.9 .dotfiles
cd .dotfiles
sh install.sh
cd -
