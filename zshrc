Iskip_global_compinit=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zshrc-local ] && source ~/.zshrc-local
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
[ -f ~/Dropbox/repos/zsh-git-prompt/zshrc.sh ] && source ~/Dropbox/repos/zsh-git-prompt/zshrc.sh
[ -f ~/Dropbox/bin/z/z.sh ] && source  ~/Dropbox/bin/z/z.sh
export NVM_DIR="/Users/frank/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
unalias b


export PATH="${ZDOTDIR:-$HOME}/Dropbox/bin:$PATH"
export PATH="$(brew --prefix vim)/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="${ZDOTDIR:-$HOME}/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export XDG_CONFIG_HOME=${ZDOTDIR:-$HOME}/.config
export N_PREFIX=${ZDOTDIR:-$HOME}/bin
export JSBIN_CONFIG=${ZDOTDIR:-$HOME}/.jsbin.config.json
export TODO_SH="t"
export TODO_FULL_SH="t"
export HOMEBREW_EDITOR="vim"
export SVN_EDITOR="vim"
export EDITOR="vim"
export VISUAL="vim"
export TERM=xterm-256color
export PROXYCHAINS_QUIET_MODE=1
export GOPATH="$HOME/go-workplace"
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com


alias npm3="npm3 --registry="http://registry.npm.alibaba-inc.com""
#alias b="~/Dropbox/bin/b"
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
alias yd="~/Dropbox/bin/ydcv/ydcv.py"
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
alias j='z'
alias jj='zz'
alias me="mvn eclipse:eclipse"
alias mci="mvn clean install"
alias mm="mvn clean install; mvn eclipse:eclipse"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias gcob="git checkout -b"
alias gco="git checkout"
alias dnstest="sudo networksetup -setdnsservers Wi-Fi 10.125.6.241; echo 10.125.6.241"
alias dnsv2="sudo networksetup -setdnsservers Wi-Fi 178.79.131.110; echo 178.79.131.110"
alias dns114="sudo networksetup -setdnsservers Wi-Fi 114.114.114.114; echo 114.114.114.114"
alias dns8="sudo networksetup -setdnsservers Wi-Fi 8.8.8.8; echo 8.8.8.8"
alias dnsreset="sudo networksetup -setdnsservers Wi-Fi Empty; echo reset"
alias dnspre="sudo networksetup -setdnsservers Wi-Fi 10.125.13.56; echo 10.125.13.56"
alias vpnopen="scutil --nc start '云梯 新加坡1号 PPTP'"
alias vpnclose="scutil --nc stop '云梯 新加坡1号 PPTP'"
alias loggoagent="tail /var/log/goagent.log -f"
alias findcontent="fs"
alias emacsapp="open -a emacs"
alias neversleep="pmset noidle"
alias vim="vim"
alias thevim="$(brew --prefix vim)/bin/vim"
alias vi="vim"
alias i="vim"
alias s="search"
alias updatesk="cd ~/Alibaba/sk; svn up .; mci; me; "
alias flushdns="sudo killall -HUP mDNSResponder &&  echo 'DNS cache flushed.'"

unalias z
z() {
  if [[ -z "$*" ]]; then
    cd "$(_z -l 2>&1 | fzf +s | sed 's/^[0-9,.]* *//')"
  else
    _last_z_args="$@"
    _z "$@"
  fi
}

zz() {
  cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q $_last_z_args)"
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



# java
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME="`/usr/libexec/java_home -v '1.7*'`"
#export JETTY_HOME=/Users/frank/bin/jetty-distribution-7.2.0.v20101020/

# jenv
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

export FZF_COMPLETION_OPTS='+c -x'
export FZF_DEFAULT_COMMAND='ag -l -g ""'
f() {
  local file
  q=$1

  #file=$(ag -l -g ""| fzf --query="$q" --select-1 --exit-0 -x)
  file=$( fzf --query="$q" --select-1 --exit-0 -x)
  [ -n "$file" ] && vim "$file" ; echo "fzf: bye"
}


#fd() {
  #local dir

  #dir=$(find . -path '*/\.*' -prune -o -type d -print | fzf +m) &&
  #cd "$dir"
#}
fd() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

fs(){
    q=$1
    if [ -z "$q"] ;then
        q="."
    fi
    #grep --line-buffered --color=never -rh "$q" * | fzf 
    ag "$q" | fzf 
}
# fshow - git commit browser (enter for show, ctrl-d for diff, ` toggles sort)
fshow() {
  local out shas sha q k
  while out=$(
      git log --graph --color=always \
          --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
      fzf --ansi --multi --no-sort --reverse --query="$q" \
          --print-query --expect=ctrl-d --toggle-sort=\`); do
    q=$(head -1 <<< "$out")
    k=$(head -2 <<< "$out" | tail -1)
    shas=$(sed '1,2d;s/^[^a-z0-9]*//;/^$/d' <<< "$out" | awk '{print $1}')
    [ -z "$shas" ] && continue
    if [ "$k" = ctrl-d ]; then
      git diff --color=always $shas | less -R
    else
      for sha in $shas; do
        git show --color=always $sha | less -R
      done
    fi
  done
}

checkport(){
	sudo lsof -nP -iTCP:$1
}

iciba(){
    open "http://iciba.com/$1"
}
