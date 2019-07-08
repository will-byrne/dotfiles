source /usr/local/etc/bash_completion.d/git-completion.bash
export CLICOLOR=1
eval $(thefuck --alias)

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

# set your prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

last_result() {
  if [ $? = 0 ] ; then echo 🦄 ; else echo 🔥 ; fi
}
export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w$C_PURPLE \$(last_result) \$(parse_git_branch) \n$C_DARKGRAY\$$C_DEFAULT "

# Aliases
alias ysp='NODE_ENV=prod yarn start:app'
alias yst='NODE_ENV=test yarn start:app'
alias ys='NODE_ENV=development yarn start:app'
alias ysb='NODE_ENV=production NODE_CONFIG_ENV=test yarn start:app'
alias yss='yarn start:services'
alias yssg='yarn styleguide'
alias gs='git status'
alias gp='git pull'
alias el='cd ~/git/elife-xpub'
alias hm='cd ~/'
alias gt='cd ~/git'
alias clean='rm -rf node_modules migrations-*'
alias yc='clean && yarn'
alias yt='NODE_CONFIG_ENV=unit-test yarn test'
alias ytb='NODE_ENV=production NODE_CONFIG_ENV=test yarn test:browser'
alias ytbh='NODE_CONFIG_ENV=test NODE_ENV=production yarn testcafe --concurrency 1 "${BROWSER:-chrome:headless}" test/**/*.browser.js --screenshots ./build/screenshots --screenshots-on-fails'
alias dbc='NODE_ENV=development yarn pubsweet setupdb --clobber=true  --username="admin" --password="password" --email="test@test.com"'
alias dbct='NODE_CONFIG_ENV=test NODE_ENV=production yarn pubsweet setupdb --clobber=true  --username="admin" --password="password" --email="test@test.com"'
alias dps='docker ps'
alias di='docker images'
alias vibp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias pds='npx pubsweet setupdb'
alias cleanall='yc && dbc'
alias cleanalltest='NODE_CONFIG_ENV=test NODE_ENV=production yc && dbct'
alias cleanrun='yc && dbc && ys'
alias cleanruntest='NODE_CONFIG_ENV=test NODE_ENV=production yc && dbc && yst'
alias pitemp='sudo vcgencmd measure_temp'
