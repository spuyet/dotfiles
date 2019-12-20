cd $HOME
wget -q https://github.com/spuyet/dotfiles/archive/0.10.tar.gz
tar -xzvf 0.10.tar.gz && rm 0.10.tar.gz
mv dotfiles-0.10 .dotfiles
cd .dotfiles
sh install.sh
cd -
