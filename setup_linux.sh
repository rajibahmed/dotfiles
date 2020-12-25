echo "1. Setting Up Nix"
curl -L https://nixos.org/nix/install | sh

echo "Clone and setup"
git clone git@github.com:rajibahmed/dotfiles ~/dotfiles

echo "setting up symlinks"
cd ~
ln -fs  ~/dotfiles/tmux.conf .tmux.conf
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags


mkdir -p ~/.config/nvim/
ln -fs  ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

echo -n 'export PATH="$PATH:~/dotfiles/bin/"' >> ~/.profile


echo "Setting up vim"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Setup home-manager"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install


git clone git@github.com:rajibahmed/nix-config.git ~/home/.config/nixpkgs

home-manager switch
