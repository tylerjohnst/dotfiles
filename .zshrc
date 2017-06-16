# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="custom"

plugins=(git)

source $ZSH/oh-my-zsh.sh

for file in ~/.dotfiles/.{path,exports,aliases,functions}; do
   [ -r "$file" ] && source "$file"
done

eval "$(rbenv init -)"

