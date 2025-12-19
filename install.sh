#!/usr/bin/env bash

if which apt-get > /dev/null; then
    apt-get install -y zsh
    chsh -s /usr/bin/zsh
fi

pushd "$(dirname ${BASH_SOURCE[0]})";
git submodule update --init --recursive
popd

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for file in "$DOTFILES_DIR"/.[!.]*; do
    filename="$(basename "$file")"
    # .git, .gitmodules, .gitignore を除外
    if [[ ! "$filename" =~ ^\.git(modules|ignore)?$ ]]; then
        ln -fs "$file" ~/"$filename"
    fi
done
