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
brew install python3
brew install rbenv
brew install go
brew install the_silver_searcher
brew install tree
brew tap caskroom/cask
brew install Caskroom/cask/iterm2

echo "3. Installing vim-plug for neovim"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "4. install prompt with nvm"
npm install -g pure-prompt
npm install -g eslint
npm install -g yarn

echo "5. Change default shell"
sudo chsh

