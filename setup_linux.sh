echo "1. Setting Up Nix"
curl -L https://nixos.org/nix/install | sh
sudo chown -R $USER /nix  
echo ". ~/.nix-profile/etc/profile.d/nix.sh" >> ~/.profile

echo "Clone and setup"
git clone https://github.com/rajibahmed/dotfiles ~/dotfiles

echo "setting up symlinks"
cd ~
ln -fs  ~/dotfiles/tmux.conf .tmux.conf
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags


mkdir -p ~/.config/nvim/
ln -fs  ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
cd .config/nvim && \
	ln -s ~/dotfiles/nvim/init.vim  init.vim
  
nvim +PlugInstall +qall
echo -n '. $HOME/.nix-profile/' >> ~/.profile
echo -n 'export PATH="$PATH:~/dotfiles/bin/"' >> ~/.profile


echo "Setting up vim"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Setup home-manager"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

