#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#alias rm="trash"
alias jh="jshint -c ~/.jshintrc --show-non-errors"
alias c="clear"
alias grepcontent="grep -rnw  . -e"
alias yd="~/GitHub/ydcv/ydcv.py"
alias gst="git status -sb"
alias gl="git pull"
alias gll="git pull ; git submodule update"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias checkport="sudo lsof -nP -iTCP:80"
alias ga="git add"
alias gc="git commit -v"
alias gd="git diff"
alias gp="git push"
alias gcm="git commit . -m update"
alias gcmp="git commit . -m update && git push"
alias gpp="git pull && git push"
alias gr="git reset"
alias j="z"
alias vi="mvim"
alias me="mvn eclipse:eclipse"
alias mci="mvn clean install"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias nh="node --harmony"
alias gcob="git checkout -b"
alias gco="git checkout"
alias dnstest="sudo networksetup -setdnsservers Wi-Fi 10.125.6.241 114.114.114.114 8.8.8.8"
alias dnsreset="sudo networksetup -setdnsservers Wi-Fi Empty"
alias dnspre="sudo networksetup -setdnsservers Wi-Fi 10.125.13.56"
alias vpnopen="scutil --nc start '云梯 新加坡1号 PPTP'"
alias vpnclose="scutil --nc stop '云梯 新加坡1号 PPTP'"
alias loggoagent="tail /var/log/goagent.log -f"
alias fd="sudo nohup node ~/Alibaba/fdserver2/main.js > /dev/null 2>&1 &"
alias contains="grep -rnw . -e"
alias emacsapp="open -a emacs"
alias neversleep="pmset noidle"
alias gem="gem -V"

export SVN_EDITOR="vim"

# Change iterm2 profile. Usage it2prof ProfileName (case sensitive)
it() { echo -e "\033]50;SetProfile=$1\a" }

. ~/GitHub/z/z.sh
export PATH="/usr/local/Cellar/vim/7.4.488/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="/Applications/calibre.app/Contents/MacOS:$PATH"
export PATH="/Users/frank/bin:$PATH"


# nvm
#export NVM_DIR="/Users/frank/.nvm"
#if [[ -s "$NVM_DIR/nvm.sh" ]]; then
#    source "$NVM_DIR/nvm.sh"
#fi

# java
export JAVA_HOME=$(/usr/libexec/java_home)

# jenv
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

# svn
# export PATH=/opt/subversion/bin:$PATH

