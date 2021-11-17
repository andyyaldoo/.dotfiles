source <(kubectl completion zsh)

# kube-ps1
source `brew --prefix`/opt/kube-ps1/share/kube-ps1.sh
PS1='$(kube_ps1)'$PS1
