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

~/.dotfiles/scripts/installPluginsZsh.sh
zsh
source ~/.zshrc

#fnm
curl -fsSL https://fnm.vercel.app/install | bash
src
fnm install 14 --lts
fnm use 14
node --version

#qtile configuration
ln -sv ~/.dotfiles/qtile/config.py ~/.config/qtile
ln -sv ~/.dotfiles/qtile/autostart.sh ~/.config/qtile

#alacritty
ln -sv ~/.dotfiles/alacritty.yml ~/.config/alacritty

#instalar varios paquetes de pacman
pacin neofetch jdk-openjdk vlc pacman-contrib gnome-keyring libsecret flameshot uget aria2 tldr speedtest-cli telegram-desktop exa docker docker-compose mesa-utils pulseaudio-equalizer-ladspa mysql-workbench
pacin unrar zip unzip p7zip lzip arj sharutils lzop unace lrzip xz cabextract lha lz4 gzip bzip2 libreoffice

#fuentes
yain nerd-fonts-monoid nerd-fonts-inconsolata-go nerd-fonts-mononoki nerd-fonts-fira-code nerd-fonts-space-mono nerd-fonts-overpass nerd-fonts-go-mono otf-nerd-fonts-fira-mono nerd-fonts-inconsolata nerd-fonts-jetbrains-mono

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

#virtualbox
pacin virtualbox virtualbox-guest-iso
sudo gpasswd -a $USER vboxusers
sudo modprobe vboxdrv
yain virtualbox-ext-oracle

#neovim
pacin neovim ranger xsel ripgrep ueberzug the_silver_searcher bat git-delta lua fd ruby cppcheck vint
yain uncrustify stylua shfmt luacheck
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python3 -m pip install --user --upgrade pynvim
npmg neovim @fsouza/prettierd eslint_d

export GEM_PATH="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_PATH/bin"
gem list
gem update

# Install angular-cli
npmg @angular/cli
npmg npm-check-updates

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
ln -sv ~/.dotfiles/rc.conf ~/.config/ranger/

mkdir ~/.config/nvim
nvimcfg=~/.config/nvim
nvimdot=~/.dotfiles/nvim
ln -sv $nvimdot/maps.vim $nvimcfg
ln -sv $nvimdot/plugin-config.vim $nvimcfg

mkdir $nvimcfg/lua
mkdir $nvimcfg/lua/config
mkdir $nvimcfg/lua/config/lsp
mkdir $nvimcfg/lua/config/lsp/settings
ln -sv $nvimdot/init.lua $nvimcfg
ln -sv $nvimdot/lua/settings.lua $nvimcfg/lua
ln -sv $nvimdot/lua/plugins.lua $nvimcfg/lua
ln -sv $nvimdot/lua/utils.lua $nvimcfg/lua
ln -sv $nvimdot/lua/maps.lua $nvimcfg/lua
ln -sv $nvimdot/lua/autocommands.lua $nvimcfg/lua

ln -sv $nvimdot/lua/config/lsp/lsp.lua $nvimcfg/lua/config/lsp
ln -sv $nvimdot/lua/config/lsp/handlers.lua $nvimcfg/lua/config/lsp
ln -sv $nvimdot/lua/config/lsp/lsp-installer.lua $nvimcfg/lua/config/lsp
ln -sv $nvimdot/lua/config/lsp/settings/jsonls.lua $nvimcfg/lua/config/lsp/settings
ln -sv $nvimdot/lua/config/lsp/settings/sumneko_lua.lua $nvimcfg/lua/config/lsp/settings

ln -sv $nvimdot/lua/config/cmp.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/treesitter.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/null-ls.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/lualine.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/neogit.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/blankline.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/gitsigns.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/nvim-tree.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/sidebar.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/bufferline.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/autosave.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/telescope.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/startify.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/autopairs.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/term.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/project.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/alpha.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/session.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/notify.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/dressing.lua $nvimcfg/lua/config
ln -sv $nvimdot/lua/config/whichkey.lua $nvimcfg/lua/config

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
