cd $HOME
wget -qO - https://github.com/spuyet/dotfiles/archive/0.4.tar.gz
tar -xzvf 0.4.tar.gz && rm 0.4.tar.gz
mv dotfiles-0.4 .dotfiles
cd .dotfiles
sh install.sh
cd -
