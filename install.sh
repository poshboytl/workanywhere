command_exists () {
    type "$1" &> /dev/null ;
}

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install coreutils
brew install vim
command_exists zsh || brew install zsh
brew install git
command_exists wget || brew install wget


[ "$0" == "-/bin/zsh" ] && chsh -s /bin/zsh && zsh;

if ! [ -d ~/.zprezto ]; then
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" 
fi

