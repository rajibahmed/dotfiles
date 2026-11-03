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

mkdir ~/.config
cd ~/.config && \
ln -s ~/dotfiles/nvim nvim && \
ln -s ~/dotfiles/alacritty alacritty


nvim +PlugInstall +qall

echo "4. install prompt with nvm"
npm install -g typescript lighthouse typescript-language-server prettier eslint

touch ~/.zsh_history


cd ~

if [ ! -d "${HOME}/.config/alacritty/themes" ]; then
  mkdir -p ~/.config/alacritty/themes
  git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
fi


if [ ! -d "${HOME}/.tmux/plugins/" ]; then
  mkdir -p ~/.tmux/plugins/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone https://github.com/junegunn/fzf-git.sh.git ~/.tmux/plugins/fzf-git.sh
fi



echo "5. Setup automatic Alacritty light/dark theme switching"
ALACRITTY_AGENT="com.rajibahmed.alacritty-theme"
mkdir -p "$HOME/.local/state/alacritty" "$HOME/Library/LaunchAgents"
chmod +x "$HOME/dotfiles/bin/alacritty-theme-sync"
sed "s|__HOME__|$HOME|g" \
  "$HOME/dotfiles/launchd/$ALACRITTY_AGENT.plist" \
  > "$HOME/Library/LaunchAgents/$ALACRITTY_AGENT.plist"
launchctl bootout "gui/$(id -u)/$ALACRITTY_AGENT" 2>/dev/null || true
launchctl bootstrap "gui/$(id -u)" "$HOME/Library/LaunchAgents/$ALACRITTY_AGENT.plist"
launchctl enable "gui/$(id -u)/$ALACRITTY_AGENT"
"$HOME/dotfiles/bin/alacritty-theme-sync"

echo "6. Change default shell"
chsh
