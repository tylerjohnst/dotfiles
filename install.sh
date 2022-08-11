#!/usr/bin/env zsh

export DOTFILES_ROOT=$(pwd -P)

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

cat zshrc.sh >> ~/.zshrc

# Install VSCode extensions
cat vscode-extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
