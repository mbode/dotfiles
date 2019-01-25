# exports

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export HOMEBREW_NO_ANALYTICS=1
export PATH="$HOME/bin:/usr/local/opt/grep/libexec/gnubin:$PATH:/usr/local/bin"


# antigen

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundles <<EOBUNDLES
  aws
  docker
  git
  kubectl
  terraform
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

PROMPT='$(kube_ps1)''$FG[045]$(tf_prompt_info)'$PROMPT

# aliases

eval "$(thefuck --alias)"
alias kctl=kubectl

eval "$(jira --completion-script-zsh)"
