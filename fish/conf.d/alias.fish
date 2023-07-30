# basic
alias ll='ls -la'
alias cl='clear'
alias cdvim='cd ~/.config/nvim/'
alias cdfish='cd ~/.config/fish/'

# fzf and bat
alias ff="find . -maxdepth 1 -type f | fzf --preview 'bat --color=always --style=header,grid {}'"
alias vff='v `find . -maxdepth 1 -type f | fzf --preview "bat --color=always --style=header,grid {}"`'

# vim
alias v='nvim'
alias vim='nvim'

# git
alias gco='git commit'
alias gre='git reset --force'

