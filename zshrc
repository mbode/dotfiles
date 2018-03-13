# exports

export JAVA_HOME=$(readlink -e $(type -p javac) | sed  -e 's/\/bin\/javac//g')
export HOMEBREW_NO_ANALYTICS=1
export PATH="$PATH:/usr/local/bin"


# antigen

source ~/.nix-profile/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundles <<EOBUNDLES
  aws
  docker
  git
  kubectl
  web-search
  ahmetb/kubectx
  jonmosco/kube-ps1
  spwhitt/nix-zsh-completions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
  rupa/z
EOBUNDLES
antigen apply

bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down


# kube-ps1

PROMPT='$(kube_ps1)'$PROMPT

# aliases

eval "$(thefuck --alias)"
alias kctl=kubectl
