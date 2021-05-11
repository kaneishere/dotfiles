
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(pyenv init -)"

alias ll="ls -lah"
export PATH=/usr/local/Cellar/mongodb-community@4.2/4.2.9/bin:$PATH
alias g++=/usr/local/bin/g++-10

alias config='/usr/bin/git --git-dir=/Users/kane/.cfg/ --work-tree=/Users/kane'
