# exports

export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_NO_ANALYTICS=1


# antigen

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundles <<EOBUNDLES
  docker
  git
  gradle
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
