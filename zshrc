# exports

setopt HIST_IGNORE_SPACE

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export HOMEBREW_NO_ANALYTICS=1
export GOPATH="$HOME/go"
export PATH="$HOME/bin:/usr/local/opt/grep/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/python/libexec/bin:$PATH:/usr/local/bin:$GOPATH/bin"
export AWS_VAULT_BACKEND=keychain

export SHOW_AWS_PROMPT=false

# antigen

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
  aws
  docker
  git
  gitfast
  httpie
  kubectl
  terraform
  web-search
  ahmetb/kubectx
  jimhester/per-directory-history
  jonmosco/kube-ps1
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
  rupa/z
EOBUNDLES
antigen apply

bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down

alias l='lsd -lA'
alias b=bat

eval "$(starship init zsh)"

# Created by `userpath` on 2020-01-13 07:09:44
export PATH="$PATH:/Users/bodem/.local/bin"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
