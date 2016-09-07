echo "1. Setting Up homebrew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "2. Installing some useful things using brew"
brew install rbenv 
brew install nvm
brew install neovim/neovim/neovim
brew install ctags
brew install tmux
brew install zsh 
brew install zsh-completions
brew install fasd
brew install git 
brew install hub
brew install imagemagick
brew install wget 


echo "3. Installing vim-plug for neovim"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
