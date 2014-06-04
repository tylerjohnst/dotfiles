#!/bin/sh

echo 'Setting up dotfiles.'


for file in .{zshrc,vimrc,gitignore,rspec,gemrc,irbrc,ackrc}; do
	echo "$file"
	[ -r "$file" ] && ln -f $file ~/$file
done

touch ~/.private_exports

ln -f theme.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme
