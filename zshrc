# exports
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_NO_ANALYTICS=1

# antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme robbyrussell
antigen bundle rupa/z
antigen apply

# oh-my-zsh
#plugins=(git brew brew-cask z gradle mvn vagrant docker sbt scala zsh-autosuggestions)

# aliases
eval "$(thefuck --alias)"
