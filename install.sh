echo -e "\e[93minstalling binaries\e[0m"
sudo snap install --classic heroku
sudo snap install --classic code
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update -y
sudo apt-get install libjemalloc-dev git fish -y
echo -e "\e[32mbinaries installed\e[0m"

echo -e "\e[93minstalling terminal profile\e[0m"
dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < misc/terminal-profile.dconf
echo -e "\e[32mterminal profile installed\e[0m"

echo -e "\e[93mconfiguring fish shell\e[0m"
cp misc/config.fish ~/.config/fish/config.fish
echo -e "\e[32mfish shell configured\e[0m"

echo -e "\e[93minstalling rbenv\e[0m"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src && cd -
~/.rbenv/bin/rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
echo -e "\e[32mrbenv installed\e[0m"

echo -e "\e[93minstalling ruby\e[0m"
RUBY_CONFIGURE_OPTS=--with-jemalloc rbenv install 2.5.3
echo -e "\e[32mruby installed\e[0m"

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
cp misc/fishfile ~/.config/fish/fishfile
echo 'fisher' | fish
echo -e "\e[32mfisher plugins installed\e[0m"

echo -e "\e[32minstallation finished, please run: 'chsh -s /usr/bin/fish $USER' to set fish shell as your default shell on next login\e[0m"
echo -e "\e[32mIf you want to try it now, run: 'fish' :)\e[0m"
