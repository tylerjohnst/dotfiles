#!/bin/sh

echo 'Setting up dotfiles.'

# for file in .{vimrc,gitignore}; do
# 	echo "$file"
# 	[ -r "$file" ] && ln -f $file ~/$file
# done

mkdir -p ~/.vim/swap
