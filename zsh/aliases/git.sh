# git aliases
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gapa="git add --patch"

alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gca="git commit -va"
alias gca!="git commit -va --amend"
alias gcan!="git commit -va --no-edit --amend"
alias gcam="git commit -am"
alias gcmsg="git commit -m"

alias gcount="git shortlog -sn"

alias gclean="git clean -fd"

alias gst="git status"
alias gss="git status -s"

alias gsta="git stash save"
alias gstaa="git stash apply"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gsts="git stash show --text"

alias gd="git diff"
alias gdca="git diff --cached"

alias gf="git fetch"
alias gfo="git fetch origin"
alias gfa="git fetch --all --prune"

alias gl="git pull"
alias gup="git pull --rebase"

alias gwch="git whatchanged -p --abbrev-commit --pretty=medium"

alias gp="git push"

alias gr="git remote"
alias grv="git remote -v"
alias grset="git remote set-url"

alias grb="git rebase"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias grbi="git rebase -i"


alias grh="git reset HEAD"
alias grhh="git reset --hard HEAD"

alias glg="git log --stat --max-count=10"
alias glgg="git log --graph --max-count=10"
alias glgga="git log --graph --decorate --all"

alias glo="git log --oneline --decorate --color"
alias glog="git log --oneline --decorate --color --graph"

alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"

alias gm="git merge"


alias gco="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gcb="git checkout -b"

alias gbl="git blame -b -w"

alias gcl="git clone --recursive"

alias gcf="git config --list"
