set -x
echo "1. Setting Up homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "setting up symlinks"
cd ~
ln -fs  ~/dotfiles/Brewfile
ln -fs  ~/dotfiles/zsh/zshrc .zshrc
ln -fs  ~/dotfiles/tmux.conf .tmux.conf
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags
ln -fs  ~/dotfiles/gitconfig .gitconfig
ln -fs  ~/dotfiles/gitignore .gitignore

echo "2. Installing some useful things using brew"
brew bundle


echo "3. setup neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cd ~/.config && \
ln -s ~/dotfiles/nvim nvim && \
ln -s ~/dotfiles/alacritty alacritty

nvim +PlugInstall +qall

echo "4. install prompt with nvm"
npm install -g typescript lighthouse typescript-language-server prettier eslint

touch ~/.zsh_history


cd ~

if [ ! -d "${HOME}/.alacritty-shell" ]; then
  git clone https://github.com/casonadams/alacritty-shell.git "${HOME}/.alacritty-shell"
fi

if [ ! -d "${HOME}/.tmux/plugins/" ]; then
  mkdir -p ~/.tmux/plugins/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


echo "5. Change default shell"
chsh
