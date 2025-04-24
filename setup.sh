#!/usr/bin/env bash

# This is a script that sets up dotfiles in devpod.sh devcontainer.

# Neovim
cp -r $PWD/nvim/.config/nvim/ $HOME/.config

# Bash
ln -s $PWD/bash/.bashrc $HOME/
