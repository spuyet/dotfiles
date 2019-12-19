cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.7.tar.gz
tar -xzvf 0.7.tar.gz && rm 0.7.tar.gz
mv dotfiles-0.7 .dotfiles
cd .dotfiles
sh install.sh
cd -
