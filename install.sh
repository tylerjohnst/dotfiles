#!/usr/bin/env zsh

export DOTFILES_ROOT=$(pwd -P)

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

cat zshrc.sh >> ~/.zshrc

gem install solargraph pry

# Install VSCode extensions
cat vscode-extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done

# Install custom scripts to PATH
mkdir -p ~/.local/bin
for script in bin/*; do
  [ -f "$script" ] && ln -sf "$(pwd -P)/$script" ~/.local/bin/
done

exit 0
