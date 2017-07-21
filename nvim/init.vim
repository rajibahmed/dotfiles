set encoding=utf-8

packadd minpac

call minpac#init()

call minpac#add('morhetz/gruvbox')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('nono/vim-handlebars')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('janko-m/vim-test')
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('skwp/greplace.vim')
call minpac#add('smorhetz/gruvbox')

"Group dependencies, vim-snippets depends on ultisnips
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('Valloric/YouCompleteMe')

"COMMON
call minpac#add('neomake/neomake')
call minpac#add('tpope/vim-surround')

call minpac#add('mattn/emmet-vim')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('christoomey/vim-tmux-navigator')

"On-demand loading
call minpac#add('scrooloose/nerdtree')
call minpac#add('tpope/vim-fireplace')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('itchyny/lightline.vim')

"call minpac#ad(in outside ~/.vim/plugged with post-update hook
call minpac#add('junegunn/fzf',{ 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-fugitive')

"PHP
call minpac#add('stanangeloff/php.vim')

"RUBY
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rbenv')
call minpac#add('rdolgushin/groovy.vim')
call minpac#add('tpope/vim-bundler')

"GOLANG
call minpac#add('fatih/vim-go')
call minpac#add('nsf/gocode')

"JAVASCRIPT
call minpac#add('pangloss/vim-javascript')
call minpac#add('posva/vim-vue')
call minpac#add('moll/vim-node')
call minpac#add('mxw/vim-jsx')
call minpac#add('ternjs/tern_for_vim', {'do': 'npm install'})

"RUST
call minpac#add('rust-lang/rust.vim')

"match it with methods
runtime macros/matchit.vim

source ~/dotfiles/nvim/base_settings.vim
source ~/dotfiles/nvim/neomake_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim

" minpac commands:
command! PlugUpdate call minpac#update()
command! PlugClean call minpac#clean()
