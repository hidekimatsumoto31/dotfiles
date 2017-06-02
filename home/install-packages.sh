#!/usr/bin/env bash

# Install development packages in an Arch Linux based OS

set -euo pipefail
IFS=$'\n\t'

arch_packages=(
atom-editor-bin
autojump
aws-cli
bash
bash-completion
bind-tools
chromium
chromium-widevine
cloc
cmake
curl
dbeaver
dnsmasq
docker-compose
git
git-lfs-bin
gvim
homesick
htop
imagemagick
jdk8-openjdk
jq
mycli
ncurses5-compat-libs
neovim
nodejs
npm
oh-my-zsh-git
postgresql-libs
powerline-fonts-git
python
python-pip
python2
python2-pip
ruby
shellcheck
sqlite
sublime-text-dev
the_silver_searcher
tig
tmux
tree
universal-ctags-git
unzip
vagrant
virtualbox-bin
virtualbox-ext-oracle
wget
wireshark-qt
xclip
yarn
zip
zsh
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)

python_packages=(
aws-shell
neovim
pgcli
vim-vint
)

pacaur_install () {
  package=$1
  echo "Installing $package"
  set +e
  pacaur -Qs "^$package$" > /dev/null
  if [[ $? -eq 0 ]]; then
    return
  fi
  set -e
  pacaur -S --noconfirm --noedit "$package"
}

for package in "${arch_packages[@]}"; do
  pacaur_install "$package"
done

for package in "${python_packages[@]}"; do
  pip install --user --upgrade "$package"
done

for service in systemd-units/**/*.service; do
  unit_name=$(basename "$service")
  source=$(realpath "$service")
  target=/etc/systemd/system/$unit_name
  if [ -h "$target" ] && [ "$(readlink -f "$target")" = "$source" ]; then
    continue
  fi
  sudo ln -s "$source" "$target"
done

sudo usermod -aG docker "$USER"
sudo usermod -aG vboxusers "$USER"
sudo usermod -aG wireshark "$USER"
sudo chsh "$USER" --shell /bin/zsh
