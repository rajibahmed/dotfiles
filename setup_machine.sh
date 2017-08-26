echo "1. Setting Up homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "2. Installing some useful things using brew"
brew install cookiecutter
brew install rbenv
brew install nvm
brew install node
brew install neovim
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

mkdir ~/.nvm

echo "3. Install minpack"
mkdir -p ~/.config/nvim/pack/minpac/opt/
mkdir -p ~/.config/nvim/pack/minpac/start/
cd ~/.config/nvim/pack/opt && git clone https://github.com/k-takata/minpac.git


echo "setting up symlinks"
cd ~
ln -s  ~/dotfiles/zsh/.zshrc .zshrc
ln -s  ~/dotfiles/tmux.config .tmux.config
ln -s  ~/dotfiles/irbrc .irbrc
ln -s  ~/dotfiles/ctags/ctags .ctags
ln -s  ~/dotfiles/gitconfig .gitconfig
ln -s  ~/dotfiles/gitignore .gitignore

cd .config/nvim && \
	ln -s ~/dotfiles/nvim/init.vim  init.vim

nvim +PlugInstall +qall

echo "4. install prompt with nvm"
npm install -g pure-prompt
npm install -g eslint
npm install -g yarn
npm install -g typescript
npm install -g lighthouse

. ~/.config/nvim/plugged/YouCompleteMe/install.py --clang-completer --tern-completer --gocode-completer

touch ~/.zsh_history

echo "5. Change default shell"
chsh

echo "Install rubies"

rbenv install 2.3.1
rbenv install 2.4.0

rbenv local 2.3.1 && gem install bundler pry neovim rubocop map_by_method what_methods --no-ri --no-rdoc
rbenv local 2.4.0 && gem install bundler pry neovim rubocop map_by_method what_methods --no-ri --no-rdoc
rbenv global 2.4.0
