alias t="terraform"
alias tfplan='terraform plan -out=plan.tfplan -refresh=false'
alias tffreshplan='terraform plan -out=plan.tfplan'
alias tfapply='terraform apply plan.tfplan; rm plan.tfplan'
