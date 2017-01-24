# exports
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_NO_ANALYTICS=1

# antibody
source <(antibody init)

# oh-my-zsh
#export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="robbyrussell"
#plugins=(git brew brew-cask z gradle mvn vagrant docker sbt scala zsh-autosuggestions)
#source $ZSH/oh-my-zsh.sh

# aliases
eval "$(thefuck --alias)"
