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


echo "3. setup neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cd .config/nvim && \
ln -s ~/dotfiles/nvim/init.vim  init.vim
nvim +PlugInstall +qall

echo "4. install prompt with nvm"
npm install -g pure-prompt
npm install -g eslint-server
npm install -g typescript
npm install -g lighthouse

## Needed for neovim language server support
npm install -g stylelint-langserver
npm install -g tslint-server
npm install -g tcss-langserver
npm install -g vscode-json-languageserver
npm install -g vscode-html-languageserver-bin

touch ~/.zsh_history

echo "5. Change default shell"
chsh

