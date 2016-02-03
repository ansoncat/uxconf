alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias minicom='LANG=en minicom -c on -w'
alias s='sudo'
alias aps='apt-cache search'
alias api='sudo apt-get install'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias ducks='du -cks * | sort -rn | head -11'
alias g=git
alias ga='git add -A .'
alias gav='ga ; git reset HEAD vos-commons/src/main/resources/dbconfig.properties vos-commons/src/main/resources/logDB.props.xml'
alias gf='git cm "Update from upstream"'
alias cdvi='cd /d/workplace/cht/virtuoso/workspace-int-2/virtuoso/Source'
alias alert='growlnotify "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias gst='g st'
alias gsp='g sp'
alias gad='g add'
alias gcm='g cm'
alias gcom='g com'
alias gcow='g cow'
alias grb='g rb'
alias grbm='g rbm'
alias grbw='g rbw'
alias gt='MSYS_NO_PATHCONV=1 g t'
alias gtp='MSYS_NO_PATHCONV=1 g tp'
alias gtc='MSYS_NO_PATHCONV=1 g tc'
alias gp='g p'
alias gs='g s'
alias gd='g d'
alias gdc='g dc'
alias gv='g review'
alias python='winpty python'
alias pip='winpty pip'
alias npm='winpty npm.cmd'
alias git-review='winpty git-review'
