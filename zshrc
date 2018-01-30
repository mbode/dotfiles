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
  kubectl
  web-search
  ahmetb/kubectx
  jonmosco/kube-ps1
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
