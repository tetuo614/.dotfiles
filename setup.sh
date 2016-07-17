#!/bin/bash

DOT_FILES=(.vimrc .vim .gitconfig .zsh .zshrc .tmux.conf .tmux .pythonrc)

if [ $# -eq 0 ]; then
    echo 'all file'
    for file in ${DOT_FILES[@]}
    do
        ln -s $HOME/.dotfiles/$file $HOME/$file
    done
elif [ $# -eq 1 ]; then
    echo $1
    ln -s $HOME/.dotfiles/$1 $HOME/$1
else
    echo 'Oops! too many argments'
fi
