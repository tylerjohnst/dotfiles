#!/bin/sh

echo 'Setting up dotfiles.'

for file in .{zshrc,gitattributes,gitconfig,gitignore}; do
	echo "$file"
	[ -r "$file" ] && ln -f $file ~/$file
done

touch ~/.private_exports

ln -f theme.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme
