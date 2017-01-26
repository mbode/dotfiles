# exports
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_NO_ANALYTICS=1

# antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen apply

# oh-my-zsh
#export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="robbyrussell"
#plugins=(git brew brew-cask z gradle mvn vagrant docker sbt scala zsh-autosuggestions)
#source $ZSH/oh-my-zsh.sh

# aliases
eval "$(thefuck --alias)"
