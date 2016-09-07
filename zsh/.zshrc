autoload -Uz compinit && compinit 

fpath=(/usr/local/share/zsh-completions $fpath)
. $(brew --prefix)/share/zsh/site-functions

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"


eval "$(fasd --init auto )"
eval "$(rbenv init -)"


autoload -U promptinit && promptinit
prompt pure


alias gs='git status'
alias gcm='git commit -m'
alias ga='git add'
alias gl='git log --oneline --graph'
alias gco='git checkout'

alias python='python3'
alias e='nvim'
alias _='sudo'
alias be='bundle exec'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


source ~/.zsh_profile
