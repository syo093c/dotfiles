#!/bin/bash
set -eu

#install plugins
echo "install zsh plugins"
mv zsh-autosuggestions ohmyzsh/plugins/
mv zsh-syntax-highlighting ohmyzsh/plugins/
mv powerlevel10k ohmyzsh/plugins/
mv ohmyzsh .oh-my-zsh

#install to HOME
echo "install to HOME"
cp -r .oh-my-zsh .curlrc .p10k.zsh  .tmux.conf  .vimrc  .wgetrc  .zshrc \
    ~
mkdir -p ~/.config
cp -r config/nvim
ln -s ~/.vimrc ~/.nvimrc
