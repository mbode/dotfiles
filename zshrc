# exports
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git brew brew-cask z gradle mvn vagrant docker sbt scala)
source $ZSH/oh-my-zsh.sh

# aliases
eval "$(thefuck --alias)"
