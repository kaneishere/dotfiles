export NVM_DIR="$HOME/.nvm"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] &&
    . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] &&
    . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias remove-branches="git branch | grep -v 'develop_catalog' | xargs git branch -D"

eval "$(pyenv init -)"

alias ll="ls -lah"

# git auto-completion bitch
source /usr/local/etc/bash_completion.d/git-completion.bash

# kill the fucking annoying ports
findandkill() {
  port=$(lsof -t -i tcp:$1)
  echo killing $port
  kill $port
}
alias killport=findandkill
