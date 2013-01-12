#!/bin/sh

echo 'Setting up dotfiles.'

ln -f .zshrc ~/.zshrc
ln -f theme.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme

for file in .{gitattributes,gitconfig,gitignore}; do
	echo "$file"
	[ -r "$file" ] && ln -f $file ~/$file
done
