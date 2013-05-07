#!/bin/sh

echo 'Setting up dotfiles.'

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

for file in .{zshrc,vimrc,gitignore,rspec,gemrc,irbrc,ackrc}; do
	echo "$file"
	[ -r "$file" ] && ln -f $file ~/$file
done

vim -c 'BundleInstall' -c 'q!'

touch ~/.private_exports

ln -f theme.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme
