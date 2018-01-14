# exports

export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_NO_ANALYTICS=1


# antigen

source ~/.nix-profile/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundles <<EOBUNDLES
  aws
  docker
  git
  gradle
  kubectl
  pip
  web-search
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
  rupa/z
EOBUNDLES
antigen apply

bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down


# aliases

eval "$(thefuck --alias)"
alias kctl=kubectl


# python

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
source virtualenvwrapper.sh
