# Purity
#
# To prevent Purity from checking whether the current Git remote has been updated
PURITY_GIT_PULL=0

# https://github.com/therealklanni/purity/issues/2
source ~/.zsh_plugins/purity.git.zsh # needed to prevent error after every prompt for purity, comment it if you don't believe me


prompt purity
