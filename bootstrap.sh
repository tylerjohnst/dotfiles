#!/bin/sh

echo 'Setting up dotfiles.'

for file in .{zshrc,vimrc,gitignore,rspec,gemrc,irbrc,ackrc,jshintrc}; do
	echo "$file"
	[ -r "$file" ] && ln -f $file ~/$file
done

touch ~/.private_exports
mkdir -p ~/.vim/swap
ln -f theme.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme

sudo ln -f IDETextKeyBindingSet.plist /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Resources/IDETextKeyBindingSet.plist
sudo ln -f Default.idekeybindings /Users/tyler/Library/Developer/Xcode/UserData/KeyBindings/Default.idekeybindings
