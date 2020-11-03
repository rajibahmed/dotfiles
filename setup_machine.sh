ln -fs  ~/dotfiles/tmux.conf .tmux.conf
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags

cd .config/nvim && \
	ln -s ~/dotfiles/nvim/init.vim  init.vim
nvim +PlugInstall +qall


