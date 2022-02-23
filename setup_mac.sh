echo "1. Setting Up homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "setting up symlinks"
cd ~
ln -fs  ~/dotfiles/Brewfile
ln -fs  ~/dotfiles/zsh/zshrc .zshrc
ln -fs  ~/dotfiles/tmux.config .tmux.config
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags
ln -fs  ~/dotfiles/gitconfig .gitconfig
ln -fs  ~/dotfiles/gitignore .gitignore

echo "2. Installing some useful things using brew"
brew bundle


