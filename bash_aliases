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
alias ducks='du -cmxs * | sort -rn | head -11'
alias g=git
alias ga='git add -A .'
alias gf='git cm "Update from upstream"'
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
alias gp='g p'
alias gs='g s'
alias gd='g d'
alias gdc='g dc'
#alias python='winpty python'
#alias pip='winpty pip'
#alias npm='winpty npm.cmd'
alias d=docker
alias drun='docker run'
alias dps='docker ps -a'
alias dimg='docker images'
alias dstop='docker stop'
alias dmac='docker-machine'
alias dcom='docker-compose'
alias b=brew
alias bsh='brew search'
alias bup='brew update && brew upgrade'
alias bca='brew cask'
alias bcash='brew cask search'
alias bcais='brew cask install'
alias bis='brew install'
alias bcl='brew cleanup'
alias pyvv='pyenv virtualenv'
alias ppe='pipenv shell --fancy'
