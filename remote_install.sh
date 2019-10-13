cd $HOME
wget https://github.com/spuyet/dotfiles/archive/0.1.tar.gz
tar -xzvf 0.1.tar.gz && rm 0.1.tar.gz
mv dotfiles-0.1 .dotfiles
cd .dotfiles
sh install.sh
cd -
