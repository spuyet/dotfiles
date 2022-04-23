#!/bin/sh

log_info () {
  echo "\e[93m$1\e[0m"
}

log_success () {
  echo "\e[32m$1\e[0m"
}

SCRIPT_PATH=$( cd "$(dirname "$0")" ; pwd -P )

log_info "Installing starship prompt"
mkdir -p $HOME/.bin
ln -f -s $SCRIPT_PATH/config/starship/starship.toml $HOME/.config/starship.toml
ln -f -s $SCRIPT_PATH/bin/starship $HOME/.bin/starship
log_success "Starship prompt installed"

log_info "Installing overmind"
mkdir -p $HOME/.bin
ln -f -s $SCRIPT_PATH/bin/overmind $HOME/.bin/overmind
log_success "Overmind installed"

log_info "Installing linux packages"
sh install_linux_packages.sh
log_success "Linux packages installed"

log_info "Configuring Git info"
git config --global user.email "sebastien@puyet.fr"
git config --global user.name "Sébastien Puyet"
log_success "Git info configured"

log_info "Installing vscode extensions"
sh install_vscode_extensions.sh
log_success "VScode extension installed"

log_info "Installing terminal profile"
dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < misc/terminal-profile.dconf
log_success "Terminal profile installed"

log_info "Configuring fish shell"
ln -f -s $SCRIPT_PATH/config/fish/config.fish $HOME/.config/fish/config.fish
log_success "Fish shell configured"

log_info "installing rbenv"
./install_rbenv.fish
log_success "Rbenv installed"

log_info "Installing ruby"
fish -c "env RUBY_CONFIGURE_OPTS=--with-jemalloc rbenv install 3.1.2; rbenv global 3.1.2"
log_success "Ruby installed"

log_info "Installing fisher package manager"
curl https://git.io/fisher --create-dirs -sLo $HOME/.config/fish/functions/fisher.fish
log_success "Fisher package manager installed"

log_info "Installing fisher plugins"
ln -f -s $SCRIPT_PATH/config/fish/fishfile $HOME/.config/fish/fishfile
echo "fisher install $(xargs -a $HOME/.config/fish/fishfile)" | fish
log_success "Fisher plugins installed"

log_success "Installation finished, please run: 'chsh -s /usr/bin/fish $USER' to set fish shell as your default shell on next login"
log_success "If you want to try it now, run: 'fish' :)"
