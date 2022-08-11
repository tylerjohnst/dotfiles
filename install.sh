#!/usr/bin/env zsh

export DOTFILES_ROOT=$(pwd -P)

cat zshrc.sh >> ~/.zshrc

# Install VSCode extensions
cat vscode-extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
