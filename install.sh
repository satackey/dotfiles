#!/usr/bin/env bash

if ! type "apt-get" > /dev/null; then
    apt-get install -y zsh
    chsh -s /usr/bin/zsh
fi

git submodule update --init --recursive
shopt -s extglob
ln -fs .!(.|git|gitmodules|gitignore|) ~
