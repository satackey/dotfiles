#!/usr/bin/env sh

if ! type "apt-get" > /dev/null; then
    apt-get install -y zsh
fi

git submodule update --init --recursive
ln -fs dotfiles/.(*~git~gitmodules~gitignore) .
