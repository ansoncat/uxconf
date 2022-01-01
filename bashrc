# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Specific setting for MAC homebrew
BREW_PREFIX=`brew --prefix`

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

export GROOVY_HOME=/usr/local/opt/groovy/libexec

if [ -f $BREW_PREFIX/etc/bash_completion ]; then
    . $BREW_PREFIX/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="$(brew --prefix bash-git-prompt)/share"
    GIT_PROMPT_THEME=Default
    TERM_TITLE="\[\033]0;\w\007\]"
    GIT_PROMPT_START=$TERM_TITLE"\[\e[1;32m\]anson\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]"
    GIT_PROMPT_END="\$ "
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export GREP_OPTIONS='--color=auto'

export PATH="~/bin:/usr/local/opt/openssl/bin:$PATH"

#Support tiny-care-terminal
export TTC_APIKEYS="false"
export TTC_BOTS="tinycarebot,selfcare_bot"
export TTC_REPOS="~/workplace"
export TTC_REPOS_DEPTH="2"
export TTC_WEATHER="Taichung"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
if which pipenv > /dev/null; then eval "$(pipenv --completion)"; fi

export JAVA_HOME="$(/usr/libexec/java_home)"
export JDK_HOME=${JAVA_HOME}
if [ -f `which gradle` ]; then
    export GRADLE_HOME=$(cat `which gradle` | awk 'NR>1 {gsub(/"/,"",$3) split($3,a, "/bin"); print a[1]}')
fi

if [ -f /bin/launchctl ]; then
    launchctl setenv JAVA_HOME ${JAVA_HOME}
    launchctl setenv JDK_HOME ${JDK_HOME}
    launchctl setenv GRADLE_HOME ${GRADLE_HOME}
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

