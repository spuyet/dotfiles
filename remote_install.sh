cd $HOME
wget https://github.com/spuyet/dotfiles/archive/0.3.tar.gz
tar -xzvf 0.3.tar.gz && rm 0.3.tar.gz
mv dotfiles-0.3 .dotfiles
cd .dotfiles
sh install.sh
cd -
