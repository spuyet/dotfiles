cd $HOME
wget https://github.com/spuyet/dotfiles/archive/0.2.tar.gz
tar -xzvf 0.2.tar.gz && rm 0.2.tar.gz
mv dotfiles-0.2 .dotfiles
cd .dotfiles
sh install.sh
cd -
