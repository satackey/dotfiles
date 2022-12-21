#!/usr/bin/env bash

if which apt-get > /dev/null; then
    apt-get install -y zsh
    chsh -s /usr/bin/zsh
fi

pushd "$(dirname ${BASH_SOURCE[0]})";
git submodule update --init --recursive
popd

shopt -s extglob
ln -fs $(echo "$(dirname ${BASH_SOURCE[0]})/.!(.|git|gitmodules|gitignore|)") ~
