#docker
#kite
#intellij
#Jdownloader2
#gparted
#spotify-tui

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
ln -sv ~/.dotfiles/.ssh/id_ed25519 ~/.ssh
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

#instalar varios paquetes de pacman
pacin neofetch jdk-openjdk vlc pacman-contrib gnome-keyring libsecret flameshot uget aria2 tldr speedtest-cli

#mariadb
pacin mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
ctlstart mysql
sudo mysql_secure_installation

#instalar varios paquetes de yay
yain visual-studio-code-bin brave-bin google-chrome

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
