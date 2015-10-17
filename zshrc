skip_global_compinit=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/bin/zsh-git-prompt/zshrc.sh ] && source ~/bin/zsh-git-prompt/zshrc.sh

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/frank/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export N_PREFIX=${ZDOTDIR:-$HOME}/bin
export JSBIN_CONFIG=${ZDOTDIR:-$HOME}/.jsbin.config.json
export TODO_SH="t"
export TODO_FULL_SH="t"
export HOMEBREW_EDITOR="vim"
export PATH="/usr/local/Cellar/vim/7.4.488/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="${ZDOTDIR:-$HOME}/bin:$PATH"
export SVN_EDITOR="vim"
export EDITOR="vim"
export TERM=xterm-256color
export FZF_COMPLETION_OPTS='+c -x'
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PROXYCHAINS_QUIET_MODE=1
export GOPATH="$HOME/go-workplace"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"


alias pc="proxychains4"
alias zipjs="python /Users/frank/Alibaba/js-css-compressor/ali-compressor.py"
alias gcl="git clone"
alias changed='git log --pretty=format:"- %s%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)"'
alias change='git log --pretty=format:"- %s%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)"'
alias changelog='git log --pretty=format:"- %s%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)"'
#alias gminiclone="git clone --depth 1 --branch master "
alias fixjs="fixmyjs -c ~/.jshintrc-online "
#alias ws="open -a WebStorm"
#alias t="~/bin/todo.txt-cli/todo.sh -d ~/bin/todo.txt-cli/todo.cfg"
alias fuck='$(thefuck $(fc -ln -1))'
alias htmllint="/Users/frank/bin/html5-lint/html5check.py -h -e "
#alias jh="jshint -c ~/.jshintrc --show-non-errors"
#alias c="clear"
alias e="vim"
#alias pi='pod install --no-repo-update'
alias groovyrun="groovyConsole > /dev/null 2>&1  &"
alias grepcontent="grep -rnw  . -e"
alias yd="~/bin/ydcv/ydcv.py"
alias gst="git status -sb"
alias gl="git pull"
alias gll="git pull ; git submodule update"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias ga="git add"
alias gc="git commit -v"
alias gd="git diff"
alias gp="git push"
alias gcm="git commit . -m update"
alias gcmp="git commit . -m update && git push"
alias gpp="git pull && git push"
alias gr="git reset"
#alias j="z"
alias j='fasd_cd -d'
alias jj='fasd_cd -d -i'
alias v='f -t -e vim -b viminfo'
alias me="mvn eclipse:eclipse"
alias mci="mvn clean install"
alias mm="mvn clean install; mvn eclipse:eclipse"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias gcob="git checkout -b"
alias gco="git checkout"
alias dnstest="sudo networksetup -setdnsservers Wi-Fi 10.125.6.241"
alias dnsreset="sudo networksetup -setdnsservers Wi-Fi Empty"
alias dnsrepre=" sudo networksetup -setdnsservers Wi-Fi 10.125.13.56"
alias dnspre="sudo networksetup -setdnsservers Wi-Fi 10.125.13.56"
alias vpnopen="scutil --nc start '云梯 新加坡1号 PPTP'"
alias vpnclose="scutil --nc stop '云梯 新加坡1号 PPTP'"
alias loggoagent="tail /var/log/goagent.log -f"
alias findcontent="fs"
alias emacsapp="open -a emacs"
alias neversleep="pmset noidle"
alias vi="vim"
alias i="vim"
alias s="search"
alias updatesk="cd ~/Alibaba/sk; svn up .; mci; me; "
alias flushdns="sudo killall -HUP mDNSResponder &&  echo 'DNS cache flushed.'"

#. ~/GitHub/z/z.sh
# fasd
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
# fasd ends

mk() {
    mkdir -p -- "$1" &&
        cd -P -- "$1"
}

# ctrl-z
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
# end

groot() {
    cd "$(git rev-parse --show-toplevel)"
}

search() {
    str="*"$1"*";
    find . -type d -iname $str;
}


# nvm
#export NVM_DIR="/Users/frank/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# java
export JAVA_HOME=$(/usr/libexec/java_home)
#export JETTY_HOME=/Users/frank/bin/jetty-distribution-7.2.0.v20101020/

# jenv
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

f() {
  local file
  q=$1

  file=$(fzf --query="$q" --select-1 --exit-0 -x)
  [ -n "$file" ] && vim "$file" ; echo "fzf: bye"
}

fd() {
  local dir

  dir=$(find . -path '*/\.*' -prune -o -type d -print | fzf +m) &&
  cd "$dir"
}

fs(){
    q=$1
    if [ -z "$q"] ;then
        q="."
    fi
    #grep --line-buffered --color=never -rh "$q" * | fzf 
    grep --line-buffered --color=never -r "$q" * | fzf 
}

checkport(){
	sudo lsof -nP -iTCP:$1
}

