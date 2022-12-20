#!/usr/bin/env sh

if ! type "apt-get" > /dev/null; then
    apt-get install -y zsh
fi


ln -fs dotfiles/.(*~git~gitmodules~gitignore) .
