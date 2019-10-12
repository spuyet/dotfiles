echo -e "\e[93minstalling binaries\e[0m"
sudo snap install --classic heroku
sudo snap install --classic code
sudo apt-get install git -y
echo -e "\e[32mbinaries installed\e[0m"

echo -e "\e[93minstalling fish shell\e[0m"
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update -y
sudo apt-get install fish -y
cp misc/config.fish ~/.config/fish/config.fish
echo -e "\e[32mfish shell installed\e[0m"

echo -e "\e[93minstalling starship prompt\e[0m"
mkdir -p ~/.bin
tar -zxvf misc/starship-x86_64-unknown-linux-gnu.tar.gz
mv starship ~/.bin
cp misc/starship.toml ~/.config/starship.toml
echo -e "\e[32mstarship prompt installed\e[0m"

echo -e "\e[93minstalling fisher package manager\e[0m"
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
echo -e "\e[32mfisher package manager installed\e[0m"

echo -e "\e[93minstalling fisher plugins\e[0m"
echo 'fisher add jorgebucaran/fish-spark jethrokuan/z matchai/spacefish jethrokuan/fzf joseluisq/gitnow laughedelic/pisces fishpkg/fish-git-util' | fish
echo -e "\e[32mfisher plugins installed\e[0m"

echo -e "\e[32minstallation finished, please run: 'chsh -s /usr/bin/fish $USER' to set fish shell as your default shell on next login\e[0m"
echo -e "\e[32mIf you want to try it now, run: 'fish' :)\e[0m"
