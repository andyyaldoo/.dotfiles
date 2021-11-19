# zsh completion
source <(kubectl completion zsh)

# kube-ps1
source $(brew --prefix)/opt/kube-ps1/share/kube-ps1.sh

export PROMPT="\$(kube_ps1)$PROMPT"
