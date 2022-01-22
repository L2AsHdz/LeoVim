#kite

#Solucionar problema con la hora
sudo timedatectl set-local-rtc 1

#install yay
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R asael:users ./yay
cd yay
makepkg -si

#clonar dotfiles
git clone https://github.com/L2AsHdz/dotfiles.git

#git config
ln -sv ~/.dotfiles/.gitconfig ~

mkdir ~/.ssh
sudo chmod 755 ~/.ssh
ln -sv ~/.dotfiles/.ssh/id_ed25519.pub ~/.ssh
sudo chmod 600 ~/.ssh/id_ed25519
sudo chmod 600 ~/.ssh/id_ed25519.pub
ssh -T git@github.com

#python3
pacman -S python3

#autojump
yay -S autojump

#fzf
pacman -S fzf
ENHANCD_FILTER=fzf; export ENHANCD_FILTER

#clonar ohwn-my-zsh
git clone git@github.com:L2AsHdz/ohmyzsh.git ~/.dotfiles/.oh-my-zsh

#zsh
pacman -S zsh
ln -sv ~/.dotfiles/.p10k.zsh ~
ln -sv ~/.dotfiles/.zshrc ~
ln -sv ~/.dotfiles/.zsh_history ~
chsh -s $(which zsh)

zsh
source ~/.zshrc

#fnm
curl -fsSL https://fnm.vercel.app/install | bash
src
fnm install 16 --lts
fnm use 16
node --version

#instalar varios paquetes de pacman
pacin neofetch jdk-openjdk vlc pacman-contrib gnome-keyring libsecret flameshot uget aria2 tldr speedtest-cli telegram-desktop exa docker docker-compose mesa-utils pulseaudio-equalizer-ladspa
pacin unrar zip unzip p7zip lzip arj sharutils lzop unace lrzip xz cabextract lha lz4 gzip bzip2 libreoffice

#fuentes
yain nerd-fonts-monoid nerd-fonts-inconsolata-go nerd-fonts-mononoki nerd-fonts-fira-code nerd-fonts-space-mono nerd-fonts-overpass nerd-fonts-go-mono otf-nerd-fonts-fira-mono nerd-fonts-inconsolata

#instalar varios paquetes de yay
yain visual-studio-code-bin brave-bin google-chrome jetbrains-toolbox jdownloader2 spotify knemo downgrade

#spotify-tui
yain spotify-tui

#mariadb
pacin mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
ctlstart mysql
sudo mysql_secure_installation

#docker and docker-compose
pacin docker docker-compose
sudo usermod -aG docker $USER

#neovim
pacin neovim ranger xsel ripgrep ueberzug the_silver_searcher bat git-delta lua fd
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python3 -m pip install --user --upgrade pynvim
npmg neovim

# Install angular-cli
npmg @angular/cli
npmg npm-check-updates

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
ln -sv ~/.dotfiles/rc.conf ~/.config/ranger/

mkdir ~/.config/nvim
# ln -sv ~/.dotfiles/nvim/init.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/plugins.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/settings.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/maps.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/plugin-config.vim ~/.config/nvim
ln -sv ~/.dotfiles.nvim/plugins/utils.vim ~/.config/nvim
ln -sv ~/.dotfiles.nvim/plugins/gittools.vim ~/.config/nvim
ln -sv ~/.dotfiles.nvim/plugins/devtools.vim ~/.config/nvim
ln -sv ~/.dotfiles.nvim/plugins/visual.vim ~/.config/nvim

mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/lua/lualine
ln -sv ~/.dotfiles/nvim/init.lua ~/.config/nvim
ln -sv ~/.dotfiles/nvim/lua/plugin-config.lua ~/.config/nvim/lua
ln -sv ~/.dotfiles/nvim/lua/settings.lua ~/.config/nvim/lua
ln -sv ~/.dotfiles/nvim/lua/lualine/lualine-config.lua ~/.config/nvim/lua/lualine/

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#tlp
pacin tlp tlp-rdw
ctlon tlp
ctlon NetworkManager-dispatcher
systemctl mask systemd-rfkill.service
systemctl mask systemd-rfkill.socket
sudo tlp start

#TRIM for SSD
ctlon fstrim.timer
ctlstart fstrim.timer
