#!/bin/zsh

ln -sv ~/.dotfiles/.tmux.conf ~
ln -sv ~/.dotfiles/.p10k.zsh ~
ln -sv ~/.dotfiles/.zshrc ~
ln -sv ~/.dotfiles/.gitconfig ~

ln -sv ~/.dotfiles/nvim/init.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/coc.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim
ln -sv ~/.dotfiles/nvim/plugins.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/settings.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/maps.vim ~/.config/nvim
ln -sv ~/.dotfiles/nvim/plugin-config.vim ~/.config/nvim

ln -sv ~/.dotfiles/rc.conf ~/.config/ranger
